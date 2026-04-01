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

struct DBCheckbox: View {
    
    @Environment(\.theme) var theme

    @Binding var checked: Bool
    @State var indeterminate: Bool = false
    var label: String?
    var showRequiredAsterisk: Bool = false
    var showLabel: Bool = true
    var size: DBSize = .medium
    var validation: DBValidation = .noValidation
    var message: String?
    var showMessage: Bool = false
    var disabled: Bool = false
    @GestureState private var pressed: Bool = false
    
    private var checkboxSize: CGFloat { size == .medium ? 24 : 20 }
    
    private var font: DSTextStyle {
        if size == .medium {
            return theme.fonts.bodyMd
        } else {
            return theme.fonts.bodySm
        }
    }
    
    private var spacing: CGFloat { size == .medium ? theme.dimensions.spacing.fixedXs : theme.dimensions.spacing.fixed2xs }
    
    private var textColor: Color {
        switch validation {
        case .noValidation:
            return validation.baseColor(for: theme).basic.text.emphasis100.colorForPressed(pressed)
        case .invalid, .valid:
            return validation.baseColor(for: theme).basic.text.emphasis80.colorForPressed(pressed)
        }
    }
    
    private var iconColor: Color {
        return checked && !indeterminate
        ? validation.baseColor(for: theme).inverted.onBackground.default
        : validation == .noValidation
        ? validation.baseColor(for: theme).basic.icon.emphasis100.default
        : validation.baseColor(for: theme).basic.icon.emphasis70.default
    }
    
    private var borderColor: Color {
        switch validation {
        case .noValidation:
            return checked
            ? validation.baseColor(for: theme).inverted.background.contrastMax.colorForPressed(pressed)
            : validation.baseColor(for: theme).basic.border.emphasis100.default
        case .invalid, .valid:
            return checked
            ? validation.baseColor(for: theme).inverted.background.contrastLow.colorForPressed(pressed)
            : validation.baseColor(for: theme).basic.border.emphasis70.default
        }
    }
    
    private var backgroundColor: Color {
        return checked && !indeterminate
        ? borderColor
        : pressed
        ? validation.baseColor(for: theme).basic.background.transparent.pressed
        : validation.baseColor(for: theme).basic.background.transparent.full
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
                    if indeterminate {
                        indeterminate = false
                        checked = true
                    } else {
                        checked.toggle()
                    }
                }
            }

        VStack(alignment: .leading, spacing: theme.dimensions.spacing.fixed2xs) {
            HStack(alignment: .firstTextBaseline, spacing: spacing) {
                ZStack {
                    RoundedRectangle(cornerRadius: theme.dimensions.border.radius2xs)
                        .stroke(borderColor, lineWidth: theme.dimensions.border.height2xs)
                    
                    Rectangle()
                        .padding(theme.dimensions.border.radius2xs / 2)
                        .blendMode(.destinationOut)

                    Rectangle()
                        .fill(backgroundColor)

                    if let imageSource: ImageResource = indeterminate ? .minus : checked ? .check : nil {
                        Image(imageSource)
                            .resizable()
                            .frame(width: checkboxSize, height: checkboxSize)
                    }
                }
                .compositingGroup()
                .foregroundColor(iconColor)
                .frame(width: checkboxSize, height: checkboxSize)
                .alignmentGuide(.firstTextBaseline) { context in
                    context[VerticalAlignment.center]
                }
                
                if showLabel, let label = label {
                    Text("\(label)\(showRequiredAsterisk ? "*" : "")")
                        .dsTextStyle(font)
                        .foregroundColor(textColor)
                        .alignmentGuide(.firstTextBaseline) { context in
                            let remainingLine = (context.height - context[.lastTextBaseline])
                            let lineHeight = context[.firstTextBaseline] + remainingLine
                            let lineCenter = lineHeight / 2
                            return lineCenter
                        }

                }
            }
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

#Preview(traits: .sizeThatFitsLayout) {
    PreviewTemplate(
        title: "DBCheckbox",
        previewVariants: [
            [
                AnyView(DBCheckbox(checked: .constant(false), label: "Checkbox", validation: .noValidation))
            ],
            [
                AnyView(DBCheckbox(checked: .constant(true), label: "Checkbox", validation: .noValidation)),
            ],
            [
                AnyView(DBCheckbox(checked: .constant(false), label: "Checkbox", validation: .invalid("Invalid Message"))),
            ],
            [
                AnyView(DBCheckbox(checked: .constant(true), label: "Checkbox", validation: .valid("Valid Message"))),
            ],
        ],
        previewProperties: [
            PreviewPropertiesSection(
                name: "Disabled",
                content: [false, true].map({ value in
                    PreviewPropertiesElement(
                        description: "\(!value ? "(Def) " : "")\(value.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(false), label: "Label", disabled: value) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Checked",
                content: [false, true].map({ value in
                    PreviewPropertiesElement(
                        description: "\(!value ? "(Def) " : "")\(value.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(value), label: "Label") }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Indeterminate",
                content: [false, true].map({ value in
                    PreviewPropertiesElement(
                        description: "\(!value ? "(Def) " : "")\(value.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(false), indeterminate: value, label: "Label") }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Size",
                content: DBSize.allCases.map({ size in
                    PreviewPropertiesElement(
                        description: size.previewName(),
                        content: { DBCheckbox(checked: .constant(false), label: "Label", size: size) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Required",
                content: [false, true].map({ value in
                    PreviewPropertiesElement(
                        description: "\(!value ? "(Def) " : "")\(value.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(false), label: "Label", showRequiredAsterisk: value) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Validation",
                content: [
                    PreviewPropertiesElement(
                        description: DBValidation.noValidation.previewName(),
                        content: { DBCheckbox(checked: .constant(false), label: "Label", validation: .noValidation) }
                    ),
                    PreviewPropertiesElement(
                        description: "\(DBValidation.invalid("").previewName()) - Unchecked",
                        content: { DBCheckbox(checked: .constant(false), label: "Label", validation: .invalid("Invalid Message")) }
                    ),
                    PreviewPropertiesElement(
                        description: "\(DBValidation.invalid("").previewName()) - Checked",
                        content: { DBCheckbox(checked: .constant(true), label: "Label", validation: .invalid("Invalid Message")) }
                    ),
                    PreviewPropertiesElement(
                        description: "\(DBValidation.valid("").previewName()) - Unchecked",
                        content: { DBCheckbox(checked: .constant(false), label: "Label", validation: .valid("Valid Message")) }
                    ),
                    PreviewPropertiesElement(
                        description: "\(DBValidation.valid("").previewName()) - Checked",
                        content: { DBCheckbox(checked: .constant(true), label: "Label", validation: .valid("Valid Message")) }
                    ),
                ]
            ),
            PreviewPropertiesSection(
                name: "Show Message",
                content: [false, true].map({ value in
                    PreviewPropertiesElement(
                        description: "\(!value ? "(Def) " : "")\(value.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(false), label: "Label", message: "Message", showMessage: value) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Show Label",
                content: [true, false].map({ value in
                    PreviewPropertiesElement(
                        description: "\(value ? "(Def) " : "")\(value.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(false), label: "Label", showLabel: value) }
                    )
                })
            ),

        ]
    )
}
