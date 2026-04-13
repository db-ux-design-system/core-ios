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
    
    private var backgroundColor: Color {
        return checked && !indeterminate
        ? SharedColors.borderColor(for: theme, validation: validation, checked: checked, pressed: pressed)
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
                        .stroke(SharedColors.borderColor(for: theme, validation: validation, checked: checked, pressed: pressed), lineWidth: theme.dimensions.border.height2xs)
                    
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
                .foregroundColor(SharedColors.foregroundColor(for: theme, validation: validation, inverted: checked && !indeterminate))
                .frame(width: checkboxSize, height: checkboxSize)
                .alignmentGuide(.firstTextBaseline) { context in
                    context[VerticalAlignment.center]
                }
                
                if showLabel, let label = label {
                    Text("\(label)\(showRequiredAsterisk ? "*" : "")")
                        .dsTextStyle(font)
                        .foregroundColor(SharedColors.textColor(for: theme, validation: validation, pressed: pressed))
                        .alignmentGuide(.firstTextBaseline) { context in
                            let remainingLine = (context.height - context[.lastTextBaseline])
                            let lineHeight = context[.firstTextBaseline] + remainingLine
                            let lineCenter = lineHeight / 2
                            return lineCenter
                        }

                }
            }
            .gesture(pressGesture)
            
            DBMessageBlock(validation: validation, message: message, showMessage: showMessage)
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
                content: [false, true].map({ checkboxDisabled in
                    PreviewPropertiesElement(
                        description: "\(!checkboxDisabled ? "(Def) " : "")\(checkboxDisabled.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(false), label: "Label", disabled: checkboxDisabled) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Checked",
                content: [false, true].map({ checkboxChecked in
                    PreviewPropertiesElement(
                        description: "\(!checkboxChecked ? "(Def) " : "")\(checkboxChecked.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(checkboxChecked), label: "Label") }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Indeterminate",
                content: [false, true].map({ checkboxIndeterminate in
                    PreviewPropertiesElement(
                        description: "\(!checkboxIndeterminate ? "(Def) " : "")\(checkboxIndeterminate.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(false), indeterminate: checkboxIndeterminate, label: "Label") }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Size",
                content: DBSize.allCases.map({ checkboxSize in
                    PreviewPropertiesElement(
                        description: checkboxSize.previewName(),
                        content: { DBCheckbox(checked: .constant(false), label: "Label", size: checkboxSize) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Required",
                content: [false, true].map({ showCheckboxAsterisk in
                    PreviewPropertiesElement(
                        description: "\(!showCheckboxAsterisk ? "(Def) " : "")\(showCheckboxAsterisk.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(false), label: "Label", showRequiredAsterisk: showCheckboxAsterisk) }
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
                content: [false, true].map({ showCheckboxMessage in
                    PreviewPropertiesElement(
                        description: "\(!showCheckboxMessage ? "(Def) " : "")\(showCheckboxMessage.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(false), label: "Label", message: "Message", showMessage: showCheckboxMessage) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Show Label",
                content: [true, false].map({ showCheckboxLabel in
                    PreviewPropertiesElement(
                        description: "\(showCheckboxLabel ? "(Def) " : "")\(showCheckboxLabel.description.capitalized)",
                        content: { DBCheckbox(checked: .constant(false), label: "Label", showLabel: showCheckboxLabel) }
                    )
                })
            ),

        ]
    )
}
