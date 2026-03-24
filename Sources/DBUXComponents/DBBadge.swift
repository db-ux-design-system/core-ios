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
        case dot
        case text(_ content: String)
        case icon(_ content: ImageResource)
    }
    
    @Environment(\.theme) var theme
    
    var size: DBSize = .small
    var content: DBBadgeVariant
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
            ZStack {
                Capsule().fill(semantic.backgroundColor(theme: theme, emphasis: emphasis))
                Capsule()
                    .stroke(style: .init(lineWidth: theme.dimensions.border.height3xs))
                    .foregroundStyle(semantic.borderColor(theme: theme, emphasis: emphasis))
            }
        )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    PreviewTemplate(
        title: "DB Badge",
        previewVariants: [
            [
                AnyView(DBBadge(content: .text("Badge"), emphasis: .weak, semantic: .adaptive)),
                AnyView(DBBadge(content: .text("Badge"), emphasis: .strong, semantic: .adaptive))
            ],
            [
                AnyView(DBBadge(content: .text("Badge"), emphasis: .weak, semantic: .critical)),
                AnyView(DBBadge(content: .text("Badge"), emphasis: .strong, semantic: .critical))
            ],
            [
                AnyView(DBBadge(content: .text("Badge"), emphasis: .weak, semantic: .informational)),
                AnyView(DBBadge(content: .text("Badge"), emphasis: .strong, semantic: .informational))
            ],
            [
                AnyView(DBBadge(content: .text("Badge"), emphasis: .weak, semantic: .neutral)),
                AnyView(DBBadge(content: .text("Badge"), emphasis: .strong, semantic: .neutral))
            ],
            [
                AnyView(DBBadge(content: .text("Badge"), emphasis: .weak, semantic: .successful)),
                AnyView(DBBadge(content: .text("Badge"), emphasis: .strong, semantic: .successful))
            ],
            [
                AnyView(DBBadge(content: .text("Badge"), emphasis: .weak, semantic: .warning)),
                AnyView(DBBadge(content: .text("Badge"), emphasis: .strong, semantic: .warning))
            ],
        ],
        previewProperties: [
            PreviewPropertiesSection(name: "Size", content: [
                PreviewPropertiesElement(
                    description: "(Def) Small",
                    content: AnyView(DBBadge(size: .small, content: .text("Text")))
                ),
                PreviewPropertiesElement(
                    description: "Medium",
                    content: AnyView(DBBadge(size: .medium, content: .text("Text")))
                )
            ]),
            PreviewPropertiesSection(name: "Content", content: [
                PreviewPropertiesElement(
                    description: "(Def) Text",
                    content: AnyView(DBBadge(content: .text("Text")))
                ),
                PreviewPropertiesElement(
                    description: "Dot",
                    content: AnyView(DBBadge(content: .dot))
                ),
                PreviewPropertiesElement(
                    description: "Icon",
                    content: AnyView(DBBadge(content: .icon(.xPlaceholder)))
                )
            ]),
            PreviewPropertiesSection(name: "Emphasis", content: [
                PreviewPropertiesElement(
                    description: "(Def) Weak", content:
                        AnyView(DBBadge(content: .text("Text"), emphasis: .weak))
                ),
                PreviewPropertiesElement(
                    description: "String", content:
                        AnyView(DBBadge(content: .text("Text"), emphasis: .strong))
                )
            ])
        ],
        previewSemantics: [
            PreviewPropertiesElement(
                description: ("(Def) Adaptive"),
                content: AnyView(HStack { DBBadge(content: .text("Text"), emphasis: .weak, semantic: .adaptive); DBBadge(content: .text("Text"), emphasis: .strong, semantic: .adaptive) })
            ),
            PreviewPropertiesElement(
                description:"Critical", content:
                    AnyView(HStack { DBBadge(content: .text("Text"), emphasis: .weak, semantic: .critical); DBBadge(content: .text("Text"), emphasis: .strong, semantic: .critical) })
            ),
            PreviewPropertiesElement(
                description: "Informational",
                content: AnyView(HStack { DBBadge(content: .text("Text"), emphasis: .weak, semantic: .informational); DBBadge(content: .text("Text"), emphasis: .strong, semantic: .informational) })
            ),
            PreviewPropertiesElement(
                description: "Neutral",
                content: AnyView(HStack { DBBadge(content: .text("Text"), emphasis: .weak, semantic: .neutral); DBBadge(content: .text("Text"), emphasis: .strong, semantic: .neutral) })
            ),
            PreviewPropertiesElement(
                description: "Successful",
                content: AnyView(HStack { DBBadge(content: .text("Text"), emphasis: .weak, semantic: .successful); DBBadge(content: .text("Text"), emphasis: .strong, semantic: .successful) })
            ),
            PreviewPropertiesElement(
                description: "Warning",
                content: AnyView(HStack { DBBadge(content: .text("Text"), emphasis: .weak, semantic: .warning); DBBadge(content: .text("Text"), emphasis: .strong, semantic: .warning) })
            )
        ]
    )
}
