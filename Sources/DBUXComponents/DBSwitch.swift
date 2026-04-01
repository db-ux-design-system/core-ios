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
    var iconLeading: Image = Image(.check)
    var iconTrailing: Image = Image(.cross)
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
    
    private var textColor: Color {
        switch validation {
        case .noValidation:
            return validation.baseColor(for: theme).basic.text.emphasis100.colorForPressed(pressed)
        case .invalid, .valid:
            return validation.baseColor(for: theme).basic.text.emphasis80.colorForPressed(pressed)
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
                    Text("\(label)\(showRequiredAsterisk ? "*" : "")")
                        .alignmentGuide(.firstTextBaseline) { context in
                            return (context[.firstTextBaseline] + context.height - context[.lastTextBaseline]) / 2
                        }
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
                    Text("\(label)\(showRequiredAsterisk ? "*" : "")")
                        .alignmentGuide(.firstTextBaseline) { context in
                            return (context[.firstTextBaseline] + context.height - context[.lastTextBaseline]) / 2
                        }
                }
            }
            .dsTextStyle(font)
            .foregroundColor(textColor)
            .gesture(pressGesture)
            
            if validation != .noValidation || (message != nil && !message!.isEmpty && showMessage) {
                switch validation {
                case .noValidation:
                    if let message = message, !message.isEmpty && showMessage {
                        DBInfotext(text: message, semantic: .neutral, size: .small)
                    }
                case .invalid(let text):
                    DBInfotext(text: text, semantic: .critical, size: .small)
                case .valid(let text):
                    DBInfotext(text: text, semantic: .successful, size: .small)
                }
            }
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

    private var borderColor: Color {
        return validation == .noValidation
        ? validation.baseColor(for: theme).basic.icon.emphasis100.colorForPressed(checked && pressed)
        : validation.baseColor(for: theme).basic.icon.emphasis70.colorForPressed(checked && pressed)
    }

    private var backgroundColor: Color {
        return checked
        ? validation == .noValidation
        ? validation.baseColor(for: theme).inverted.background.contrastMax.colorForPressed(pressed)
        : validation.baseColor(for: theme).inverted.background.contrastLow.colorForPressed(pressed)
        : pressed
        ? validation.baseColor(for: theme).basic.background.transparent.pressed
        : validation.baseColor(for: theme).basic.background.transparent.full
    }

    private func foregroundColor(inverted: Bool) -> Color {
        return inverted
        ? validation.baseColor(for: theme).inverted.onBackground.default
        : validation == .noValidation
        ? validation.baseColor(for: theme).basic.icon.emphasis100.default
        : validation.baseColor(for: theme).basic.icon.emphasis70.default
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
            .strokeBorder(borderColor, lineWidth: borderWidth)
            .overlay {
                if visualAid {
                    iconLeading
                        .resizable()
                        .foregroundColor(foregroundColor(inverted: true))
                        .frame(width: iconSize, height: iconSize)
                        .offset(x: offset(false))
                    iconTrailing
                        .resizable()
                        .foregroundColor(foregroundColor(inverted: false))
                        .frame(width: iconSize, height: iconSize)
                        .offset(x: offset(true))
                }
                Circle()
                    .fill(foregroundColor(inverted: checked))
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
                content: DBSwitchVariant.allCases.map({ variant in
                    PreviewPropertiesElement(
                        description: variant.previewName(),
                        content: { DBSwitch(checked: .constant(false), label: "Label", variant: variant) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Disabled",
                content: [false, true].map({ value in
                    PreviewPropertiesElement(
                        description: "\(!value ? "(Def) " : "")\(value.description.capitalized)",
                        content: { DBSwitch(checked: .constant(false), label: "Label", disabled: value) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Checked",
                content: [false, true].map({ value in
                    PreviewPropertiesElement(
                        description: "\(!value ? "(Def) " : "")\(value.description.capitalized)",
                        content: { DBSwitch(checked: .constant(value), label: "Label") }
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
                content: [false, true].map({ aid in
                    PreviewPropertiesElement(
                        description: "\(!aid ? "(Def) " : "")\(aid.description.capitalized)",
                        content: { DBSwitch(checked: .constant(false), label: "Label", visualAid: aid) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Size",
                content: DBSize.allCases.map({ size in
                    PreviewPropertiesElement(
                        description: size.previewName(),
                        content: { DBSwitch(checked: .constant(false), label: "Label", size: size) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Required",
                content: [false, true].map({ showAsterisk in
                    PreviewPropertiesElement(
                        description: "\(!showAsterisk ? "(Def) " : "")\(showAsterisk.description.capitalized)",
                        content: { DBSwitch(checked: .constant(false), label: "Label", showRequiredAsterisk: showAsterisk) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Show Label",
                content: [true, false].map({ showLabel in
                    PreviewPropertiesElement(
                        description: "\(showLabel ? "(Def) " : "")\(showLabel.description.capitalized)",
                        content: { DBSwitch(checked: .constant(false), label: "Label", showLabel: showLabel) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Show Message",
                content: [false, true].map({ showMessage in
                    PreviewPropertiesElement(
                        description: "\(!showMessage ? "(Def) " : "")\(showMessage.description.capitalized)",
                        content: { DBSwitch(checked: .constant(false), label: "Label", message: "Message", showMessage: showMessage) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Custom Icons",
                content: [false, true].map({ checked in
                    PreviewPropertiesElement(
                        description: "\(!checked ? "(Def) " : "")\(checked.description.capitalized)",
                        content: { DBSwitch(checked: .constant(checked), label: "Label", visualAid: true, iconLeading: Image(.sun), iconTrailing: Image(.moon)) }
                    )
                })
            ),
        ]
    )
}
