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

struct SampleView1: View {
    
    @Environment(\.theme) var theme
    @Environment(\.colorScheme) var colorScheme
    
    @State var selectedTheme = 0
    
    @State var customTheme: Theme = SuperDuperTheme(.dark)
    let firstTheme: Theme = DeutscheBahnTheme()
    let secondTheme: Theme = SuperDuperTheme(.dark)
    
    var body: some View {
        VStack {
            Spacer()
            ExtractedView()
                .theme(customTheme)
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
            .foregroundColor(customTheme.activeColor.basic.text.default.default)
            .onChange(of: selectedTheme) { oldValue, newValue in
                if newValue == 0 {
                    customTheme = firstTheme
                } else {
                    customTheme = secondTheme
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
        .background(
            customTheme.activeColor.basic.background.level1.default
        )
        .onAppear() {
            customTheme = theme
        }
        .font(customTheme.fonts.bodyMd)
    }
}

#Preview() {
    SampleView1()
        .environment(\.theme, SuperDuperTheme())
}


struct ExtractedView: View {
    @Environment(\.theme) var theme
    
    var body: some View {
        VStack(alignment: .leading, spacing: theme.dimensions.spacing.responsive3xs) {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. ")
                .dbTextStyle(theme.fonts.h1)
            
            Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")
                .dbTextStyle(theme.fonts.bodyLg)

            VStack(alignment: .leading, spacing: theme.dimensions.spacing.responsive3xs) {
                Text("Body lg\nZeile 2")
                    .dbTextStyle(theme.fonts.bodyLg)
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. ")
                    .font(theme.fonts.bodySm)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, theme.dimensions.spacing.responsive3xs)
            .padding(.horizontal, theme.dimensions.spacing.responsive3xs)
            .background(theme.activeColor.basic.background.level2.default)
        }
        .padding(20)
        .background(theme.activeColor.basic.background.level1.default)
        .foregroundColor(theme.activeColor.basic.text.emphasis80.default)
    }
}
