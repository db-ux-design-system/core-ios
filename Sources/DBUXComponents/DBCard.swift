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

enum DBCardElevation: CaseIterable {
    case level1
    case level2
    case level3
    
    internal func previewName(def: DBCardElevation = .level1) -> String {
        var name = "\(def == self ? "(Def) " : "")"

        switch self {
        case .level1:
            name.append("1")
        case .level2:
            name.append("2")
        case .level3:
            name.append("3")
        }
        
        return name
    }
}

enum DBCardSpacing: CaseIterable {
    case small
    case medium
    case large
    case none
    
    internal func previewName(def: DBCardSpacing = .small) -> String {
        var name = "\(def == self ? "(Def) " : "")"

        switch self {
        case .small:
            name.append("Small")
        case .medium:
            name.append("Medium")
        case .large:
            name.append("Large")
        case .none:
            name.append("None")
        }
        
        return name
    }
    
    var shortPreviewName: String {
        switch self {
        case .small:
            return "sm"
        case .medium:
            return "md"
        case .large:
            return "lg"
        case .none:
            return "None"
        }
    }
}

enum DBCardBehavior: CaseIterable {
    case `static`
    case interactive
    
    internal func previewName(def: DBCardBehavior = .static) -> String {
        var name = "\(def == self ? "(Def) " : "")"

        switch self {
        case .static:
            name.append("Static")
        case .interactive:
            name.append("Interactive")
        }
        
        return name
    }
}

struct DBCard<Content: View>: View {
    @Environment(\.theme) var theme
    
    var elevation: DBCardElevation = .level1
    var spacing: DBCardSpacing = .small
    var behavior: DBCardBehavior = .static
    @ViewBuilder let content: () -> Content
    var action: (() -> Void)?

    private var padding: CGFloat {
        switch spacing {
        case .small:
            return theme.dimensions.spacing.fixedSm
        case .medium:
            return theme.dimensions.spacing.fixedMd
        case .large:
            return theme.dimensions.spacing.fixedLg
        case .none:
            return 0
        }
    }
    
    private var backgroundColor: Color {
        switch elevation {
        case .level1:
            return theme.activeColor.basic.background.level1.default
        case .level2:
            return theme.activeColor.basic.background.level2.default
        case .level3:
            return theme.activeColor.basic.background.level3.default
        }
    }
    
    var body: some View {
        Button {
            if behavior == .interactive {
                action?()
            }
        } label: {
            VStack {
                content()
            }
            .padding(padding)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .accessibilityRemoveTraits(behavior == .interactive ? [] : .isButton)
        .disabled(behavior == .static)
        .buttonStyle(DBCardStyle(elevation: elevation))

    }
}

struct DBCardStyle: ButtonStyle {
    
    @Environment(\.theme) var theme
    
    var elevation: DBCardElevation

    private func backgroundColor(_ pressed: Bool) -> Color {
        switch elevation {
        case .level1:
            return theme.activeColor.basic.background.level1.colorForPressed(pressed)
        case .level2:
            return theme.activeColor.basic.background.level2.colorForPressed(pressed)
        case .level3:
            return theme.activeColor.basic.background.level3.colorForPressed(pressed)
        }
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(
                RoundedRectangle(cornerRadius: theme.dimensions.border.radiusSm)
                    .fill(backgroundColor(configuration.isPressed))
                    .stroke(theme.activeColor.onBgBasicEmphasis60Default, lineWidth: theme.dimensions.border.height3xs)
                    .padding(0.5)
            )
            .cornerRadius(theme.dimensions.border.radiusSm)
            .contentShape(
                RoundedRectangle(cornerRadius: theme.dimensions.border.radiusSm)
            )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    PreviewTemplate(
        title: "DBCard",
        previewVariants: DBCardElevation.allCases.map({ cardElevation in
            [
                AnyView(DBCard(elevation: cardElevation) {})
            ]
        }),
        previewProperties: [
            PreviewPropertiesSection(
                name: "Elevation Level",
                content: DBCardElevation.allCases.map({ cardElevation in
                    PreviewPropertiesElement(
                        description: cardElevation.previewName(),
                        content: {
                            DBCard(elevation: cardElevation) {}
                                .frame(width: 100, height: 100)
                        }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Spacing",
                content: DBCardSpacing.allCases.map({ cardSpacing in
                    PreviewPropertiesElement(
                        description: cardSpacing.previewName(),
                        content: {
                            DBCard(spacing: cardSpacing) {
                                ZStack {
                                    Color(red: 231/255, green: 0, blue: 235/255)
                                        .opacity(0.32)
                                    
                                    Text(cardSpacing.shortPreviewName)
                                        .foregroundColor(Color(red: 214/255, green: 0, blue: 214/255))
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                }
                            }
                                .frame(width: 100, height: 100)
                        }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Behavior",
                content: DBCardBehavior.allCases.map({ cardBehavior in
                    PreviewPropertiesElement(
                        description: cardBehavior.previewName(),
                        content: {
                            DBCard(behavior: cardBehavior, content: {}, action: {})
                                .frame(width: 100, height: 100)
                        }
                    )
                })
            ),
        ],
    )
}
