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

struct PreviewPropertiesSection {
    var name: String
    var content: [PreviewPropertiesElement]
}

struct PreviewPropertiesElement {
    var description: String
    var content: AnyView
}

struct PreviewTemplate: View {
    
    @Environment(\.theme) var theme: any DSTheme
    
    var title: String
    var previewVariants: [[AnyView]] = []
    var previewProperties: [PreviewPropertiesSection] = []
    var previewSemantics: [PreviewPropertiesElement] = []
    
    var lightTheme: DSTheme = DeutscheBahnTheme(.light)
    var darkTheme: DSTheme = DeutscheBahnTheme(.dark)

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(title)
                    .font(theme.fonts.h1.font)
                
                if !previewVariants.isEmpty {
                    Text("👁️ Preview")
                        .font(theme.fonts.h3.font)
                    VStack(spacing: 0) {
                        HStack {
                            Image(.sun)
                                .padding(10)
                            Spacer()
                            ForEach(previewVariants.indices, id: \.self) { i in
                                let viewArray = previewVariants[i]
                                VStack(alignment: .center, spacing: 16) {
                                    ForEach(viewArray.indices, id: \.self) { j in
                                        viewArray[j]
                                            .frame(maxWidth: .infinity)
                                    }
                                }
                            }
                            Spacer()
                        }
                        .dsTheme(lightTheme)
                        .padding(.vertical, 10)
                        .background(.white)
                        
                        HStack {
                            Image(.moon)
                                .foregroundStyle(.white)
                                .padding(10)
                            Spacer()
                            ForEach(previewVariants.indices, id: \.self) { i in
                                let viewArray = previewVariants[i]
                                VStack(alignment: .center, spacing: 16) {
                                    ForEach(viewArray.indices, id: \.self) { j in
                                        viewArray[j]
                                            .frame(maxWidth: .infinity)
                                    }
                                }
                            }
                            Spacer()
                        }
                        .dsTheme(darkTheme)
                        .padding(.vertical, 10)
                        .background(.black)
                    }
                    .frame(maxWidth: .infinity)
                    .overlay(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 2))
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                }
                
                if !previewProperties.isEmpty {
                    Text("🛠️ Properties")
                        .font(theme.fonts.h3.font)
                    ForEach(previewProperties.indices, id: \.self) { i in
                        let section = previewProperties[i]
                        VStack(alignment: .leading) {
                            Text(section.name)
                                .font(theme.fonts.bodySm.font)
                            VStack {
                                HStack(spacing: 32) {
                                    ForEach(section.content.indices, id: \.self) { j in
                                        let element = section.content[j]
                                        VStack(alignment: .leading, spacing: 8) {
                                            Text(element.description)
                                                .font(theme.fonts.bodyXs.font)
                                            HStack(alignment: .center) {
                                                element.content
                                            }
                                            .frame(maxHeight: .infinity)
                                        }
                                    }
                                    Spacer()
                                }
                                .padding(10)
                                
                            }
                            .frame(maxWidth: .infinity)
                            .overlay(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 2))
                            .clipShape(RoundedRectangle(cornerRadius: 4))
                        }
                        
                    }
                }

                if !previewSemantics.isEmpty {
                    VStack(alignment: .leading) {
                        Text("Semantic")
                            .font(theme.fonts.bodySm.font)
                        VStack {
                            LazyVGrid(
                                columns: [
                                    GridItem(.adaptive(minimum: 100, maximum: 120))
                                ],
                                content: {
                                    ForEach(Array(previewSemantics.indices), id: \.self) { i in
                                        let element = previewSemantics[i]
                                        VStack(alignment: .leading, spacing: 8) {
                                            Text(element.description)
                                                .font(theme.fonts.bodyXs.font)
                                            HStack(alignment: .center) {
                                                element.content
                                            }
                                            .frame(maxHeight: .infinity)
                                        }
                                    }
                                }
                            )
                            .padding(10)
                            
                        }
                        .frame(maxWidth: .infinity)
                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(.gray, lineWidth: 2))
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                    }
                }
            }
            .padding(10)
        }
    }
    
}

#Preview(traits: .sizeThatFitsLayout) {
    PreviewTemplate(
        title: "Template",
        previewVariants: [
            [
                AnyView(Text("Variant weak")),
                AnyView(Text("Variant strong"))
            ]
        ],
        previewProperties: [
            PreviewPropertiesSection(name: "Section", content: [
                PreviewPropertiesElement(
                    description: "Description",
                    content: AnyView(Text("Element"))
                )
            ])
        ],
        previewSemantics: [
            PreviewPropertiesElement(
                description: ("Description"),
                content: AnyView(Text("Element"))
            )
        ]
    )
}
