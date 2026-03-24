//
//  Copyright 2024 by DB Systel GmbH
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

struct DBBadge: View {
    enum DBBadgeVariant {
        case text(_ content: String)
        case dot
        case icon(_ content: ImageResource)
        
        internal static let previewCases: [DBBadgeVariant] = [
            .text("Text"),
            .dot,
            .icon(.xPlaceholder)
        ]
        
        internal var previewName: String {
            switch self {
            case .text:
                return "(Def) Text"
            case .dot:
                return "Dot"
            case .icon:
                return "Icon"
            }
        }
    }
    
    @Environment(\.theme) var theme
    
    var size: DBSize = .small
    var content: DBBadgeVariant = .text("")
    var emphasis: DBEmphasis = .weak
    var semantic: DBSemantic = .adaptive
    
    private var iconSize: CGFloat { size == .small ? 14 : 20 }
    
    private var iconPadding: CGFloat {
        if size == .small {
            return theme.dimensions.spacing.fixed3xs + theme.dimensions.border.height3xs
        } else {
            return theme.dimensions.spacing.fixed2xs + theme.dimensions.border.height3xs
        }
    }
    
    private var textPadding: CGFloat {
        if size == .small {
            return theme.dimensions.spacing.fixed2xs
        } else {
            return theme.dimensions.spacing.fixedXs
        }
    }
    
    private var font: DSTextStyle {
        if size == .small {
            return theme.fonts.body2xs
        } else {
            return theme.fonts.bodySm
        }
    }
    
    private var dotSize: CGFloat {
        if size == .small {
            return theme.dimensions.sizing.base3xs
        } else {
            return theme.dimensions.sizing.base2xs
        }
    }
    
    var body: some View {
        VStack {
            switch content {
            case .dot:
                Color.clear
                    .frame(width: dotSize, height: dotSize)
            case .text(let content):
                Text(content)
                    .dsTextStyle(font.copy(weight: .bold))
                    .foregroundColor(semantic.textColor(theme: theme, emphasis: emphasis))
                    .padding(.horizontal, textPadding)
            case .icon(let content):
                Image(content)
                    .resizable()
                    .frame(width: iconSize, height: iconSize)
                    .foregroundColor(semantic.iconColor(theme: theme, emphasis: emphasis))
                    .padding(iconPadding)
            }
        }
        .background(
            Capsule()
                .fill(semantic.backgroundColor(theme: theme, emphasis: emphasis))
                .stroke(semantic.borderColor(theme: theme, emphasis: emphasis), lineWidth: theme.dimensions.border.height3xs)
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    PreviewTemplate(
        title: "DB Badge",
        previewVariants: DBSemantic.allCases.map({ semantic in
            DBEmphasis.allCases.map({ emphasis in
                AnyView(DBBadge(content: .text("Badge"), emphasis: emphasis, semantic: semantic))
            })
        }),
        previewProperties: [
            PreviewPropertiesSection(
                name: "Size",
                content: DBSize.allCases.map({ size in
                    PreviewPropertiesElement(
                        description: size.previewName,
                        content: { DBBadge(size: size, content: .text("Text")) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Content",
                content: DBBadge.DBBadgeVariant.previewCases.map({ variant in
                    PreviewPropertiesElement(
                        description: variant.previewName,
                        content: { DBBadge(content: variant) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Emphasis",
                content: DBEmphasis.allCases.map({ emphasis in
                    PreviewPropertiesElement(
                        description: emphasis.previewName,
                        content: { DBBadge(content: .text("Text"), emphasis: emphasis) }
                    )
                })
            )
        ],
        previewSemantics:
            DBSemantic.allCases.map({ semantic in
                PreviewPropertiesElement(
                    description: semantic.previewName,
                    content: {
                        HStack {
                            DBBadge(content: .text("Text"), emphasis: .weak, semantic: semantic)
                            DBBadge(content: .text("Text"), emphasis: .strong, semantic: semantic)
                        }
                    }
                )
            })
    )
}
