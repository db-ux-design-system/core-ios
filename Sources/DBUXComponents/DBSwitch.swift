//
//  Copyright 2026 by DB Systel GmbH
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//          http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import SwiftUI
import DBUXFoundation

enum DBSwitchVariant: CaseIterable {
    case trailing
    case leading
    
    internal func previewName(def: DBSwitchVariant = .trailing) -> String {
        var name = "\(def == self ? "(Def) " : "")"

        switch self {
        case .trailing:
            name.append("Trailing")
        case .leading:
            name.append("Leading")
        }
        
        return name
    }
}

struct DBSwitch: View {
    
    @Environment(\.theme) var theme

    @Binding var checked: Bool
    var label: String?
    var variant: DBSwitchVariant = .trailing
    var showRequiredAsterisk: Bool = false
    var showLabel: Bool = true
    var visualAid: Bool = false
    var iconLeading: Image = Image(.cross)
    var iconTrailing: Image = Image(.check)
    var size: DBSize = .medium
    var validation: DBValidation = .noValidation
    var message: String?
    var showMessage: Bool = false
    var disabled: Bool = false
    @GestureState private var pressed: Bool = false
    
    private var font: DSTextStyle {
        if size == .medium {
            return theme.fonts.bodyMd
        } else {
            return theme.fonts.bodySm
        }
    }
    
    fileprivate func switchLabel(_ label: String) -> some View {
        return Text("\(label)\(showRequiredAsterisk ? "*" : "")")
            .alignmentGuide(.firstTextBaseline) { context in
                return (context[.firstTextBaseline] + context.height - context[.lastTextBaseline]) / 2
            }
    }
    
    var body: some View {
        let pressGesture = DragGesture(minimumDistance: 0)
            .updating($pressed) { _, state, _ in
                if !disabled {
                    state = true
                }
            }
            .onEnded { _ in
                if !disabled {
                    withAnimation(.spring) {
                        checked.toggle()
                    }
                }
            }

        VStack(alignment: .leading, spacing: theme.dimensions.spacing.fixed2xs) {
            HStack(alignment: .firstTextBaseline, spacing: theme.dimensions.spacing.fixedXs) {
                if variant == .leading, showLabel, let label = label {
                    switchLabel(label)
                }

                Toggle(isOn: $checked) {}
                    .toggleStyle(
                        DBSwitchStyle(
                            checked: checked,
                            validation: validation,
                            size: size,
                            pressed: pressed,
                            visualAid: visualAid,
                            iconLeading: iconLeading,
                            iconTrailing: iconTrailing
                        )
                    )
                    .alignmentGuide(.firstTextBaseline) { context in
                        context[VerticalAlignment.center]
                    }
                
                if variant == .trailing, showLabel, let label = label {
                    switchLabel(label)
                }
            }
            .dsTextStyle(font)
            .foregroundColor(SharedColors.textColor(for: theme, validation: validation, pressed: pressed))
            .gesture(pressGesture)
            
            DBMessageBlock(validation: validation, message: message, showMessage: showMessage)
        }
        .opacity(disabled ? 0.4 : 1)
    }
}

struct DBSwitchStyle: ToggleStyle {

    @Environment(\.theme) var theme

    var checked: Bool
    var validation: DBValidation
    var size: DBSize
    var pressed: Bool
    var visualAid: Bool
    var iconLeading: Image
    var iconTrailing: Image

    private var backgroundColor: Color {
        return checked
        ? validation == .noValidation
        ? validation.baseColor(for: theme).inverted.background.contrastMax.colorForPressed(pressed)
        : validation.baseColor(for: theme).inverted.background.contrastLow.colorForPressed(pressed)
        : validation.baseColor(for: theme).basic.background.transparent.full.colorForPressed(pressed)
    }

    private var switchWidth: CGFloat { return size == .medium ? 46 : 38 }
    private var switchHeight: CGFloat { return size == .medium ? 24 : 20 }
    private var borderWidth: CGFloat { return theme.dimensions.border.height2xs }
    private var iconSize: CGFloat { return size == .medium ? 20 : 16 }
    private func circleSize(_ isChecked: Bool) -> CGFloat {
        switch size {
        case .medium:
            return 20 - (isChecked ? 0 : borderWidth * 2)
        case .small:
            return 16 - (isChecked ? 0 : borderWidth * 2)
        }
    }
    private func offset(_ isChecked: Bool) -> CGFloat {
        let value = (switchWidth - circleSize(true)) / 2 - borderWidth
        return isChecked ? value : -value
    }
    
    func makeBody(configuration: Configuration) -> some View {
        RoundedRectangle(cornerRadius: switchHeight / 2)
            .fill(backgroundColor)
            .strokeBorder(SharedColors.borderColor(for: theme, validation: validation, checked: checked, pressed: pressed), lineWidth: borderWidth)
            .overlay {
                if visualAid {
                    iconTrailing
                        .resizable()
                        .foregroundColor(SharedColors.foregroundColor(for: theme, validation: validation, inverted: true))
                        .frame(width: iconSize, height: iconSize)
                        .offset(x: offset(false))
                        .opacity(checked ? 1 : 0)
                    iconLeading
                        .resizable()
                        .foregroundColor(SharedColors.foregroundColor(for: theme, validation: validation, inverted: false))
                        .frame(width: iconSize, height: iconSize)
                        .offset(x: offset(true))
                        .opacity(checked ? 0 : 1)
                }
                Circle()
                    .fill(SharedColors.foregroundColor(for: theme, validation: validation, inverted: checked))
                    .frame(width: circleSize(checked), height: circleSize(checked))
                    .offset(x: offset(checked))
            }
            .frame(width: switchWidth, height: switchHeight)
            .compositingGroup()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    PreviewTemplate(
        title: "DBSwitch",
        previewVariants: [
            [
                AnyView(DBSwitch(checked: .constant(false), label: "Switch", validation: .noValidation)),
                AnyView(DBSwitch(checked: .constant(true), label: "Switch", validation: .noValidation))
            ],
            [
                AnyView(DBSwitch(checked: .constant(false), label: "Switch", validation: .invalid("Invalid Message"))),
                AnyView(DBSwitch(checked: .constant(true), label: "Switch", validation: .invalid("Invalid Message")))
            ],
            [
                AnyView(DBSwitch(checked: .constant(false), label: "Switch", validation: .valid("Valid Message"))),
                AnyView(DBSwitch(checked: .constant(true), label: "Switch", validation: .valid("Valid Message")))
            ],
        ],
        previewProperties: [
            PreviewPropertiesSection(
                name: "Variant",
                content: DBSwitchVariant.allCases.map({ switchVariant in
                    PreviewPropertiesElement(
                        description: switchVariant.previewName(),
                        content: { DBSwitch(checked: .constant(false), label: "Label", variant: switchVariant) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Disabled",
                content: [false, true].map({ switchDisabled in
                    PreviewPropertiesElement(
                        description: "\(!switchDisabled ? "(Def) " : "")\(switchDisabled.description.capitalized)",
                        content: { DBSwitch(checked: .constant(false), label: "Label", disabled: switchDisabled) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Checked",
                content: [false, true].map({ switchChecked in
                    PreviewPropertiesElement(
                        description: "\(!switchChecked ? "(Def) " : "")\(switchChecked.description.capitalized)",
                        content: { DBSwitch(checked: .constant(switchChecked), label: "Label") }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Validation",
                content: [
                    PreviewPropertiesElement(
                        description: DBValidation.noValidation.previewName(),
                        content: { DBSwitch(checked: .constant(false), label: "Label", validation: .noValidation) }
                    ),
                    PreviewPropertiesElement(
                        description: "\(DBValidation.invalid("").previewName()) - Unchecked",
                        content: { DBSwitch(checked: .constant(false), label: "Label", validation: .invalid("Invalid Message")) }
                    ),
                    PreviewPropertiesElement(
                        description: "\(DBValidation.invalid("").previewName()) - Checked",
                        content: { DBSwitch(checked: .constant(true), label: "Label", validation: .invalid("Invalid Message")) }
                    ),
                    PreviewPropertiesElement(
                        description: "\(DBValidation.valid("").previewName()) - Unchecked",
                        content: { DBSwitch(checked: .constant(false), label: "Label", validation: .valid("Valid Message")) }
                    ),
                    PreviewPropertiesElement(
                        description: "\(DBValidation.valid("").previewName()) - Checked",
                        content: { DBSwitch(checked: .constant(true), label: "Label", validation: .valid("Valid Message")) }
                    ),
                ]
            ),
            PreviewPropertiesSection(
                name: "Visual Aid",
                content: [false, true].map({ switchAid in
                    PreviewPropertiesElement(
                        description: "\(!switchAid ? "(Def) " : "")\(switchAid.description.capitalized)",
                        content: { DBSwitch(checked: .constant(false), label: "Label", visualAid: switchAid) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Size",
                content: DBSize.allCases.map({ switchSize in
                    PreviewPropertiesElement(
                        description: switchSize.previewName(),
                        content: { DBSwitch(checked: .constant(false), label: "Label", size: switchSize) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Required",
                content: [false, true].map({ showSwitchAsterisk in
                    PreviewPropertiesElement(
                        description: "\(!showSwitchAsterisk ? "(Def) " : "")\(showSwitchAsterisk.description.capitalized)",
                        content: { DBSwitch(checked: .constant(false), label: "Label", showRequiredAsterisk: showSwitchAsterisk) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Show Label",
                content: [true, false].map({ showSwitchLabel in
                    PreviewPropertiesElement(
                        description: "\(showSwitchLabel ? "(Def) " : "")\(showSwitchLabel.description.capitalized)",
                        content: { DBSwitch(checked: .constant(false), label: "Label", showLabel: showSwitchLabel) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Show Message",
                content: [false, true].map({ showSwitchMessage in
                    PreviewPropertiesElement(
                        description: "\(!showSwitchMessage ? "(Def) " : "")\(showSwitchMessage.description.capitalized)",
                        content: { DBSwitch(checked: .constant(false), label: "Label", message: "Message", showMessage: showSwitchMessage) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Custom Icons",
                content: [false, true].map({ switchChecked in
                    PreviewPropertiesElement(
                        description: "\(switchChecked ? "Sun" : "Moon")",
                        content: { DBSwitch(checked: .constant(switchChecked), label: "Label", visualAid: true, iconLeading: Image(.moon), iconTrailing: Image(.sun)) }
                    )
                })
            ),
        ]
    )
}
