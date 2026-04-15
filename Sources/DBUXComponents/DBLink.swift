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

enum DBLinkVariant: CaseIterable {
    case adaptive
    case brand
    
    internal func previewName(def: DBLinkVariant = .adaptive) -> String {
        var name = "\(def == self ? "(Def) " : "")"

        switch self {
        case .adaptive:
            name.append("Adaptive")
        case .brand:
            name.append("Brand")
        }
        
        return name
    }
}

enum DBLinkContent: CaseIterable {
    case `internal`
    case external

    internal func previewName(def: DBLinkContent = .internal) -> String {
        var name = "\(def == self ? "(Def) " : "")"

        switch self {
        case .internal:
            name.append("Internal")
        case .external:
            name.append("External")
        }
        
        return name
    }
}

struct DBLink: View {
    
    @Environment(\.theme) var theme
    
    var text: String
    var content: DBLinkContent = .internal
    var variant: DBLinkVariant = .adaptive
    var size: DBSize = .medium
    var disabled: Bool = false
    var showIcon: Bool = true
    var action: (() -> Void)
    
    private var iconSize: CGFloat { size == .medium ? 24 : 20 }
    private var spacing: CGFloat { size == .medium ? theme.dimensions.spacing.fixed2xs : theme.dimensions.spacing.fixed3xs }
    
    private var font: DSTextStyle {
        if size == .medium {
            return theme.fonts.bodyMd
        } else {
            return theme.fonts.bodySm
        }
    }
    
    private var icon: Image {
        switch content {
        case .internal:
            return Image(.arrowRight)
        case .external:
            return Image(.arrowUpRight)
        }
    }
    
    var body: some View {
        Button() {
            action()
        } label: {
            HStack(alignment: .center, spacing: spacing) {
                Text(text)
                    .dsTextStyle(font)
                    .underline()

                if showIcon {
                    icon
                        .resizable()
                        .frame(width: iconSize, height: iconSize)
                }
            }
            .opacity(disabled ? 0.4 : 1)
        }
        .disabled(disabled)
        .buttonStyle(DBLinkStyle(variant: variant))
    }
}

struct DBLinkStyle: ButtonStyle {
    
    @Environment(\.theme) var theme
    
    var variant: DBLinkVariant

    private var stateColor: StateColor {
        switch variant {
        case .adaptive:
            return theme.activeColor.basic.text.emphasis100
        case .brand:
            return theme.colorScheme.brand.basic.text.emphasis80
        }
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(stateColor.colorForPressed(configuration.isPressed))
    }
    
}

#Preview(traits: .sizeThatFitsLayout) {
    PreviewTemplate(
        title: "DBLink",
        previewVariants: [
            [
                AnyView(DBLink(text: "Text", content: .internal, variant: .adaptive, size: .small) {})
            ],
            [
                AnyView(DBLink(text: "Text", content: .external, variant: .adaptive, size: .small) {})
            ],
            [
                AnyView(DBLink(text: "Text", content: .internal, variant: .brand, size: .small) {})
            ],
            [
                AnyView(DBLink(text: "Text", content: .external, variant: .brand, size: .small) {})
            ]
        ],
        previewProperties: [
            PreviewPropertiesSection(
                name: "Content",
                content: DBLinkContent.allCases.map({ linkContent in
                    PreviewPropertiesElement(
                        description: linkContent.previewName(),
                        content: { DBLink(text: "Text", content: linkContent) {} }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Variant",
                content: DBLinkVariant.allCases.map({ linkVariant in
                    PreviewPropertiesElement(
                        description: linkVariant.previewName(),
                        content: { DBLink(text: "Text", variant: linkVariant) {} }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Disabled",
                content: [false, true].map({ linkDisabled in
                    PreviewPropertiesElement(
                        description: "\(!linkDisabled ? "(Def) " : "")\(linkDisabled.description.capitalized)",
                        content: { DBLink(text: "Text", disabled: linkDisabled) {} }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Size",
                content: DBSize.allCases.map({ linkSize in
                    PreviewPropertiesElement(
                        description: linkSize.previewName(),
                        content: { DBLink(text: "Text", size: linkSize) {} }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Show Icon",
                content: [true, false].map({ showLinkIcon in
                    PreviewPropertiesElement(
                        description: "\(showLinkIcon ? "(Def) " : "")\(showLinkIcon.description.capitalized)",
                        content: { DBLink(text: "Text", showIcon: showLinkIcon) {}}
                    )
                })
            )
        ]
    )
}
