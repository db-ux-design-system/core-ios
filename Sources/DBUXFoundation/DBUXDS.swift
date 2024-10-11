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

struct ContentView: View {
    @Environment(\.theme) var theme
    @State var scheme: AdaptiveColors?
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                }

                SampleView(headline: "Functional")
//                    .environment(\.adaptiveThemeDimensions, getDimensionsFunctionalMobile())
//                    .activeColorScheme(scheme ?? activeColorScheme)
                
                SampleView(headline: "Regular")
//                    .environment(\.adaptiveThemeDimensions, getDimensionsRegularMobile())
//                    .activeColorScheme(themeColorScheme.warning)
                
                SampleView(headline: "Expressive")
//                    .environment(\.adaptiveThemeDimensions, getDimensionsExpressiveMobile())
//                    .activeColorScheme(themeColorScheme.violet)
                
                Button("Button iOS default") {
                    scheme = theme.colorScheme.neutral
                }
                
                Button("Button with Color Scheme") {
                    scheme = theme.colorScheme.informational
                }
//                .dbElevation1()
                
                Button("Button with Warning Color Scheme") {
                    scheme = theme.colorScheme.warning
                }
//                .dbElevation1()
//                .activeColorScheme(theme.colorScheme.warning)
                
                Button("Button with Violet Color Scheme") {
                    scheme = theme.colorScheme.violet
                }
//                .dbElevation1()
//                .activeColorScheme(theme.colorScheme.violet)
                
            }
        }
        .background(theme.activeColor.basic.background.level1.default)
    }
}

struct SampleView: View {
    @Environment(\.theme) var theme
    
    let headline: String
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(theme.activeColor.onBgBasicEmphasis80Default)

            Text(headline)
//                .font(theme.fonts.h1)
            VStack {
                Text("This View is on Layer 2")
//                    .font(theme.fonts.body)
                
                VStack {
                    Text("This View is on Layer 3")
//                        .font(theme.fonts.bodySm)
                }
//                .dbElevation3()
            }
//            .dbElevation2()
        }
//        .dbElevation1()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
        .dbTheme()
}
