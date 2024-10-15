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

struct SampleView: View {
    
    @Environment(\.theme) var theme
    @Environment(\.colorScheme) var systemColorScheme
    
    @State var selectedTheme = 1
    
    @State var customTheme: DSTheme = DeutscheBahnTheme(.dark)
    @State var firstTheme: DSTheme = DeutscheBahnTheme(.dark)
    @State var secondTheme: DSTheme = SBahnTheme(.dark)
    
    init() {
        self.customTheme = DeutscheBahnTheme(systemColorScheme)
        self.firstTheme = DeutscheBahnTheme(systemColorScheme)
        self.secondTheme = SBahnTheme(systemColorScheme)
    }
    
    var body: some View {
        VStack {
            Text("\(systemColorScheme)")
            Spacer()
            ExtractedView()
                .activeColorScheme(customTheme.colorScheme.brand)
                .dsFunctional()
            ExtractedView()
                .activeColorScheme(customTheme.colorScheme.informational)
                .dsExpressive()

            Spacer()
            Picker(selection: $selectedTheme, content: {
                Text("Deutsche Bahn")
                    .tag(0)
                Text("S-Bahn")
                    .tag(1)
            }, label: {
                Text("Theme")
            })
            .pickerStyle(.menu)
            .foregroundColor(theme.activeColor.basic.text.default.default)
            .onChange(of: selectedTheme) { oldValue, newValue in
                if newValue == 0 {
                    customTheme = DeutscheBahnTheme(systemColorScheme)
                } else {
                    customTheme = SBahnTheme(systemColorScheme)
                }
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center
        )
        .background(theme.activeColor.basic.background.level1.default)
        .onAppear() {
            customTheme = DeutscheBahnTheme(systemColorScheme)
            firstTheme = DeutscheBahnTheme(systemColorScheme)
            secondTheme = SBahnTheme(systemColorScheme)
        }
        .font(theme.fonts.bodyMd.font)
    }
}

#Preview() {
    SampleView1()
        .dsTheme()
}


struct ExtractedView: View {
    @Environment(\.theme) var theme
    
    var body: some View {
        VStack(alignment: .leading, spacing: theme.dimensions.spacing.responsiveXs) {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. ")
                .dsTextStyle(theme.fonts.h1)
            
            Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")
                .dsTextStyle(theme.fonts.bodyLg)

            VStack(alignment: .leading, spacing: theme.dimensions.spacing.responsiveXs) {
                Text("Body lg\nZeile 2")
                    .dsTextStyle(theme.fonts.bodyLg)
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. ")
                    .font(theme.fonts.bodySm.font)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, theme.dimensions.spacing.responsiveXs)
            .padding(.horizontal, theme.dimensions.spacing.responsiveXs)
            .background(theme.activeColor.basic.background.level2.default)
        }
        .padding(theme.dimensions.spacing.responsiveXs)
        .background(theme.activeColor.basic.background.level1.default)
        .foregroundColor(theme.activeColor.basic.text.emphasis80.default)
    }
}
