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

enum DBAccordionVariant: CaseIterable {
    case divider
    case card
    
    internal func previewName(def: DBAccordionVariant = .divider) -> String {
        var name = "\(def == self ? "(Def) " : "")"

        switch self {
        case .divider:
            name.append("Divider")
        case .card:
            name.append("Card")
        }
        
        return name
    }
}

enum DBAccordionBehavior: CaseIterable {
    case multiple
    case single
    
    internal func previewName(def: DBAccordionBehavior = .multiple) -> String {
        var name = "\(def == self ? "(Def) " : "")"

        switch self {
        case .multiple:
            name.append("Multiple")
        case .single:
            name.append("Single")
        }
        
        return name
    }
}

struct DBAccordionItem: Equatable {
    var title: String
    var content: () -> any View
    let uuid = UUID()
    
    static func == (lhs: DBAccordionItem, rhs: DBAccordionItem) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
        
struct DBAccordion: View {
    @Environment(\.theme) var theme
    
    var items: [DBAccordionItem] = []
    var variant: DBAccordionVariant = .divider
    var behavior: DBAccordionBehavior = .multiple
    var disabled: Bool = false
    
    @State var expandedStates: [UUID: Bool] = [:]

    var body: some View {
        VStack(spacing: theme.dimensions.spacing.fixedSm) {
            ForEach(items, id: \.uuid) { item in
                DBAccordionSection(item: item, disabled: disabled, expanded: expandedState(for: item.uuid))
                    .background(
                        variant == .card
                        ?
                        RoundedRectangle(cornerRadius: theme.dimensions.border.radiusSm)
                            .stroke(theme.activeColor.onBgBasicEmphasis60Default, lineWidth: theme.dimensions.border.height3xs)
                            .padding(0.5)
                        : nil
                    )
                    .cornerRadius(theme.dimensions.border.radiusSm)

                if variant == .divider && item != items.last {
                    theme.activeColor.onBgBasicEmphasis60Default
                        .frame(height: 1)
                        .padding(.vertical, theme.dimensions.spacing.fixedSm)
                }
            }
                
        }
        .opacity(disabled ? 0.4 : 1)
        .onChange(of: expandedStates) { oldValue, newValue in
            if behavior == .single {
                let newExpandedItems = newValue.filter { $0.value }.map { $0.key }
                let oldExpandedItems = oldValue.filter { $0.value }.map { $0.key }
                if newExpandedItems.count > oldExpandedItems.count {
                    withAnimation(.snappy) {
                        for uuid in newExpandedItems {
                            expandedStates[uuid] = oldValue[uuid] ?? false ? false : true
                        }
                    }
                }
            }
        }
    }
    
    func expandedState(for key: UUID) -> Binding<Bool> {
        return .init(
            get: {
                self.expandedStates[key, default: false]
            },
            set: {
                self.expandedStates[key] = $0
            })
    }
}

struct DBAccordionSection: View {
    @Environment(\.theme) var theme
    
    var item: DBAccordionItem
    var disabled: Bool = false
    @Binding var expanded: Bool
    @GestureState private var pressed: Bool = false

    var body: some View {
        let pressGesture = DragGesture(minimumDistance: 0)
            .updating($pressed) { _, state, _ in
                if !disabled {
                    state = true
                }
            }
            .onEnded { _ in
                if !disabled {
                    withAnimation(.snappy) {
                        expanded.toggle()
                    }
                }
            }

        VStack(spacing: 0) {
            ZStack {
                HStack {
                    Text(item.title)
                        .dsTextStyle(theme.fonts.bodyMd)
                    Spacer()
                    Image(expanded ? .chevronUp : .chevronDown)
                }
                .padding(theme.dimensions.spacing.fixedMd)
            }
            .contentShape(Rectangle())
            .foregroundColor(theme.activeColor.onBgBasicEmphasis100Default)
            .background(theme.activeColor.basic.background.transparent.full.colorForPressed(pressed))
            .cornerRadius(theme.dimensions.border.radiusSm)
            .gesture(pressGesture)

            if expanded {
                AnyView(item.content())
                    .padding(.horizontal, theme.dimensions.spacing.fixedMd)
                    .padding(.top, theme.dimensions.spacing.fixedMd)
                    .padding(.bottom, theme.dimensions.spacing.fixedLg)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    var itemsVariants = [
        DBAccordionItem(title: "Accordion Item", content: { Text("Content") }),
        DBAccordionItem(title: "Accordion Item", content: { Text("Content") }),
        DBAccordionItem(title: "Accordion Item", content: { Text("Content") })
    ]
    var itemsProperties = [
        DBAccordionItem(title: "Headline", content: { Text("Content") }),
        DBAccordionItem(title: "Headline", content: { Text("Content") }),
        DBAccordionItem(title: "Headline", content: { Text("Content") })
    ]
    PreviewTemplate(
        title: "DBAccordion",
        previewVariants: DBAccordionVariant.allCases.map({ accordionVariant in
            [
                AnyView(DBAccordion(items: itemsVariants, variant: accordionVariant))
            ]
        }),
        previewProperties: [
            PreviewPropertiesSection(
                name: "Variant",
                content: DBAccordionVariant.allCases.map({ accordionVariant in
                    PreviewPropertiesElement(
                        description: accordionVariant.previewName(),
                        content: { DBAccordion(items: itemsProperties, variant: accordionVariant) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Disabled",
                content: [false, true].map({ accordionDisabled in
                    PreviewPropertiesElement(
                        description: "\(accordionDisabled ? "(Def) " : "")\(accordionDisabled.description.capitalized)",
                        content: { DBAccordion(items: itemsProperties, disabled: accordionDisabled) }
                    )
                })
            ),
            PreviewPropertiesSection(
                name: "Behavior",
                content: DBAccordionBehavior.allCases.map({ accordionBehavior in
                    PreviewPropertiesElement(
                        description: accordionBehavior.previewName(),
                        content: { DBAccordion(items: itemsProperties, behavior: accordionBehavior) }
                    )
                })
            )
        ]
    )
}
