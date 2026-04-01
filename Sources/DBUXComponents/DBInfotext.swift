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

struct DBInfotext: View {
    @Environment(\.theme) var theme
    
    var text: String
    var semantic: DBSemantic = .adaptive
    var size: DBSize = .medium
    var showIcon: Bool = true
    
    private var iconSize: CGFloat { size == .medium ? 20 : 16 }
    
    private var font: DSTextStyle {
        if size == .medium {
            return theme.fonts.bodySm
        } else {
            return theme.fonts.bodyXs
        }
    }
    
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: theme.dimensions.spacing.fixed2xs) {
            if showIcon {
                semantic.image
                    .resizable()
                    .frame(width: iconSize, height: iconSize)
                    .foregroundColor(semantic.iconColor70(theme: theme))
                    .alignmentGuide(.firstTextBaseline) { context in
                        context[VerticalAlignment.center]
                    }
            }
            Text(text)
                .dsTextStyle(font)
                .foregroundColor(semantic.textColor(theme: theme, emphasis: .weak))
                .alignmentGuide(.firstTextBaseline) { context in
                    return (context[.firstTextBaseline] + context.height - context[.lastTextBaseline]) / 2
                }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    PreviewTemplate(
        title: "DBInfotext",
        previewVariants: DBSemantic.allCases.map({ semantic in
            [
                AnyView(DBInfotext(text: "Infotext", semantic: semantic)),
            ]
        }),
        previewProperties: [
            PreviewPropertiesSection(
                name: "Size",
                content: DBSize.allCases.map({ size in
                    PreviewPropertiesElement(
                        description: size.previewName(),
                        content: { DBInfotext(text: "Text", size: size) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Show Icon",
                content: [true, false].map({ showIcon in
                    PreviewPropertiesElement(
                        description: "\(showIcon ? "(Def) " : "")\(showIcon.description.capitalized)",
                        content: { DBInfotext(text: "Text", showIcon: showIcon) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Width",
                content: ["Single line", "Multiline"].map({ name in
                    PreviewPropertiesElement(
                        description: name,
                        content: { DBInfotext(text: name == "Multiline" ? "Text with Multiline showing linebreaks" : "Text") }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Semantic",
                content: DBSemantic.allCases.map({ semantic in
                    PreviewPropertiesElement(
                        description: semantic.previewName(),
                        content: {
                            DBInfotext(text: "Text", semantic: semantic)
                        }
                    )
                })
            ),
        ],
    )
}
