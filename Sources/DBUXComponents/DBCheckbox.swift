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
    @State var pressed: Bool = false
    @GestureState private var isPressed: Bool = false
    
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
        switch (validation, pressed) {
        case (.noValidation, false):
            return theme.activeColor.basic.text.emphasis100.default
        case (.noValidation, true):
            return theme.activeColor.basic.text.emphasis100.pressed
        case (.invalid, false):
            return theme.colorScheme.critical.basic.text.emphasis80.default
        case (.invalid, true):
            return theme.colorScheme.critical.basic.text.emphasis80.pressed
        case (.valid, false):
            return theme.colorScheme.successful.basic.text.emphasis80.default
        case (.valid, true):
            return theme.colorScheme.successful.basic.text.emphasis80.pressed
        }
    }
    
    private var iconColor: Color {
        switch (validation, checked) {
        case (.noValidation, false):
            return theme.activeColor.basic.icon.emphasis100.default
        case (.noValidation, true):
            return theme.activeColor.inverted.onBackground.default
        case (.invalid, false):
            return theme.colorScheme.critical.basic.icon.emphasis70.default
        case (.invalid, true):
            return theme.colorScheme.critical.inverted.onBackground.default
        case (.valid, false):
            return theme.colorScheme.successful.basic.icon.emphasis70.default
        case (.valid, true):
            return theme.colorScheme.successful.inverted.onBackground.default
        }
    }
    
    private var borderColor: Color {
        switch (validation, checked, pressed) {
        case (.noValidation, false, _):
            return theme.activeColor.basic.border.emphasis100.default
        case (.noValidation, true, false):
            return theme.activeColor.inverted.background.contrastMax.default
        case (.noValidation, true, true):
            return theme.activeColor.inverted.background.contrastMax.pressed
        case (.invalid, false, _):
            return theme.colorScheme.critical.basic.border.emphasis70.default
        case (.invalid, true, false):
            return theme.colorScheme.critical.inverted.background.contrastLow.default
        case (.invalid, true, true):
            return theme.colorScheme.critical.inverted.background.contrastLow.pressed
        case (.valid, false, _):
            return theme.colorScheme.successful.basic.border.emphasis70.default
        case (.valid, true, false):
            return theme.colorScheme.successful.inverted.background.contrastLow.default
        case (.valid, true, true):
            return theme.colorScheme.successful.inverted.background.contrastLow.pressed
        }
    }
    
    private var backgroundColor: Color {
        switch (validation, checked, pressed) {
        case (.noValidation, false, false):
            return theme.activeColor.basic.background.transparent.full
        case (.noValidation, false, true):
            return theme.activeColor.basic.background.transparent.pressed
        case (.noValidation, true, false):
            return theme.activeColor.inverted.background.contrastMax.default
        case (.noValidation, true, true):
            return theme.activeColor.inverted.background.contrastMax.pressed
            
        case (.invalid, false, false):
            return theme.colorScheme.critical.basic.background.transparent.full
        case (.invalid, false, true):
            return theme.colorScheme.critical.basic.background.transparent.pressed
        case (.invalid, true, false):
            return theme.colorScheme.critical.inverted.background.contrastLow.default
        case (.invalid, true, true):
            return theme.colorScheme.critical.inverted.background.contrastLow.pressed
            
        case (.valid, false, false):
            return theme.colorScheme.successful.basic.background.transparent.full
        case (.valid, false, true):
            return theme.colorScheme.successful.basic.background.transparent.pressed
        case (.valid, true, false):
            return theme.colorScheme.successful.inverted.background.contrastLow.default
        case (.valid, true, true):
            return theme.colorScheme.successful.inverted.background.contrastLow.pressed
        }
    }
    
    var body: some View {
        let pressGesture = DragGesture(minimumDistance: 0)
            .updating($isPressed) { _, state, _ in
                if !disabled {
                    state = true
                    pressed = true
                }
            }
            .onEnded { _ in
                if !disabled {
                    withAnimation(.snappy) {
                        if indeterminate {
                            indeterminate = false
                            checked = true
                        } else {
                            checked.toggle()
                        }
                        pressed = false
                    }
                }
            }

        VStack(alignment: .leading, spacing: theme.dimensions.spacing.fixed2xs) {
            HStack(alignment: .firstTextBaseline, spacing: spacing) {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(backgroundColor)
                        .padding(-1)
                        .opacity(disabled ? 0.4 : 1)

                    RoundedRectangle(cornerRadius: 4)
                        .stroke(borderColor, lineWidth: theme.dimensions.border.height2xs)
                        .opacity(disabled ? checked ? 0 : 0.4 : 1)
                    
                    if indeterminate {
                        Image(.minus)
                            .resizable()
                            .foregroundColor(iconColor)
                            .frame(width: checkboxSize, height: checkboxSize)
                            .opacity(disabled ? 0.4 : 1)
                    } else if checked {
                        Image(.check)
                            .resizable()
                            .foregroundColor(iconColor)
                            .frame(width: checkboxSize, height: checkboxSize)
                    }
                    
                    
                }
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
                        .opacity(disabled ? 0.4 : 1)

                }
            }
            .gesture(pressGesture)
            
            if validation != .noValidation || (showMessage && message != nil && message?.isEmpty == false) {
                if validation != .noValidation {
                    switch validation {
                    case .noValidation:
                        Color.clear.frame(width: 0, height: 0)
                    case .invalid(let text):
                        DBInfotext(text: text, semantic: .critical, size: .small)
                            .opacity(disabled ? 0.4 : 1)
                    case .valid(let text):
                        DBInfotext(text: text, semantic: .successful, size: .small)
                            .opacity(disabled ? 0.4 : 1)
                    }
                } else {
                    DBInfotext(text: message ?? "", semantic: .neutral, size: .small)
                        .opacity(disabled ? 0.4 : 1)
                }
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    PreviewTemplate(
        title: "DB Checkbox",
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
                name: "Size",
                content: DBSize.allCases.map({ size in
                    PreviewPropertiesElement(
                        description: size.previewName(def: .medium),
                        content: { DBCheckbox(checked: .constant(false), label: "Label", size: size) }
                    )
                })
            )
        ]
    )
}
