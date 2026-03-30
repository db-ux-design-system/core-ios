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

enum DBButtonVariant: CaseIterable {
    case outlined
    case filled
    case ghost
    case brand
    
    internal func previewName(def: DBButtonVariant = .outlined) -> String {
        var name = "\(def == self ? "(Def) " : "")"

        switch self {
        case .outlined:
            name.append("Outlined - Adaptive")
        case .filled:
            name.append("Filled - Adaptive")
        case .ghost:
            name.append("Ghost - Adaptive")
        case .brand:
            name.append("Brand")
        }
        
        return name
    }
}

enum DBButtonIconPosition {
    case leading
    case trailing
}

struct DBButton: View {
    @Environment(\.theme) var theme
    
    var text: String?
    var noText: Bool = false
    var icon: Image?
    var showIcon: Bool = false
    var iconPosition: DBButtonIconPosition = .leading
    var variant: DBButtonVariant = .outlined
    var size: DBSize = .medium
    var maxWidth: Bool = false
    var disabled: Bool = false
    var action: () -> Void

    private var buttonHeight: CGFloat {
        switch size {
        case .medium:
            return theme.dimensions.sizing.baseMd
        case .small:
            return theme.dimensions.sizing.baseSm
        }
    }

    private var horizontalPadding: CGFloat {
        switch (size, iconOnly) {
        case (.medium, false):
            return theme.dimensions.spacing.fixedMd
        case (.medium, true):
            return theme.dimensions.spacing.fixedXs
        case (.small, false):
            return theme.dimensions.spacing.fixedSm
        case (.small, true):
            return theme.dimensions.spacing.fixed3xs
        }
    }

    private var spacing: CGFloat {
        switch size {
        case .medium:
            return theme.dimensions.spacing.fixedXs
        case .small:
            return theme.dimensions.spacing.fixed2xs
        }
    }

    private var iconSize: CGFloat {
        switch size {
        case .medium:
            return 24
        case .small:
            return 20
        }
    }

    private var font: DSTextStyle {
        switch size {
        case .medium:
            return theme.fonts.bodyMd
        case .small:
            return theme.fonts.bodySm
        }
    }
    
    private var iconOnly: Bool {
        return icon != nil && showIcon && (noText || text?.isEmpty == true)
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack(spacing: spacing) {
                if let icon = icon, showIcon, iconPosition == .leading {
                    icon
                        .resizable()
                        .frame(width: iconSize, height: iconSize)
                }
                if let text = text, !noText {
                    Text(text)
                        .dsTextStyle(font.copy(weight: .bold))
                }
                if let icon = icon, showIcon, iconPosition == .trailing {
                    icon
                        .resizable()
                        .frame(width: iconSize, height: iconSize)
                }
            }
            .padding(.horizontal, maxWidth ? nil : horizontalPadding)
            .frame(maxWidth: maxWidth ? .infinity : nil)
            .frame(height: buttonHeight)
            .opacity(disabled ? 0.4 : 1)
        }
        .disabled(disabled)
        .buttonStyle(DBButtonStyle(variant: variant))
    }
}

struct DBButtonStyle: ButtonStyle {
    
    @Environment(\.theme) var theme
    
    var variant: DBButtonVariant

    private func backgroundColor(_ pressed: Bool) -> Color {
        switch (variant, pressed) {
        case (.brand, false):
            return theme.colorScheme.brand.originDefault
        case (.brand, true):
            return theme.colorScheme.brand.originPressed
        case (_, true):
            return theme.activeColor.basic.background.transparent.pressed
        case (.outlined, false), (.ghost, false):
            return theme.activeColor.basic.background.transparent.full
        case (.filled, false):
            return theme.activeColor.basic.background.transparent.semi
        }
    }

    private var foregroundColor: Color {
        switch variant {
        case .outlined, .ghost, .filled:
            return theme.activeColor.basic.text.emphasis100.default
        case .brand:
            return theme.colorScheme.brand.onOriginDefault
        }
    }

    private var hasBorder: Bool {
        switch variant {
        case .outlined:
            return true
        case .ghost, .filled, .brand:
            return false
        }
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(foregroundColor)
            .background(backgroundColor(configuration.isPressed))
            .overlay(
                RoundedRectangle(cornerRadius: theme.dimensions.border.radiusXs)
                    .stroke(foregroundColor, lineWidth: theme.dimensions.border.height3xs)
                    .opacity(hasBorder ? 1 : 0)
            )
            .cornerRadius(theme.dimensions.border.radiusXs)
            .contentShape(
                RoundedRectangle(cornerRadius: theme.dimensions.border.radiusXs)
            )
    }
}

#Preview {
    PreviewTemplate(
        title: "DB Button",
        previewVariants: [
            [
                AnyView(DBButton(text: "Button", variant: .outlined) {}),
            ],
            [
                AnyView(DBButton(text: "Button", variant: .filled) {}),
            ],
            [
                AnyView(DBButton(text: "Button", variant: .ghost) {}),
            ],
            [
                AnyView(DBButton(text: "Button", variant: .brand) {}),
            ],
        ],
        previewProperties: [
            PreviewPropertiesSection(
                name: "Variant",
                content: DBButtonVariant.allCases.map({ variant in
                    PreviewPropertiesElement(
                        description: variant.previewName(),
                        content: { DBButton(text: "Text", variant: variant) {} }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Disabled",
                content: [false, true].map({ disabled in
                    PreviewPropertiesElement(
                        description: "\(!disabled ? "(Def) " : "")\(disabled.description.capitalized)",
                        content: { DBButton(text: "Text", disabled: disabled) {} }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Size",
                content: DBSize.allCases.map({ size in
                    PreviewPropertiesElement(
                        description: size.previewName(),
                        content: { DBButton(text: "Text", size: size) {} }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Show Icon Leading",
                content: [false, true].map({ showIcon in
                    PreviewPropertiesElement(
                        description: "\(!showIcon ? "(Def) " : "")\(showIcon.description.capitalized)",
                        content: { DBButton(text: "Text", icon: Image(.xPlaceholder), showIcon: showIcon, iconPosition: .leading ) {} }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Show Icon Trailing",
                content: [false, true].map({ showIcon in
                    PreviewPropertiesElement(
                        description: "\(!showIcon ? "(Def) " : "")\(showIcon.description.capitalized)",
                        content: { DBButton(text: "Text", icon: Image(.xPlaceholder), showIcon: showIcon, iconPosition: .trailing ) {} }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "No Text",
                content: [false, true].map({ noText in
                    PreviewPropertiesElement(
                        description: "\(!noText ? "(Def) " : "")\(noText.description.capitalized)",
                        content: { DBButton(text: "Text", noText: noText, icon: Image(.xPlaceholder), showIcon: noText ) {} }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Width",
                content: [false, true].map({ maxWidth in
                    PreviewPropertiesElement(
                        description: "\(maxWidth ? "Full" : "(Def) False")",
                        content: { DBButton(text: "Text", maxWidth: maxWidth ) {} }
                    )
                })
            ),
        ],
    )
}
