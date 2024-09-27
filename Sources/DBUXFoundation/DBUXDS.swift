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
    @Environment(\.adaptiveThemeDimensions) var dimensions
    @Environment(\.themeColorScheme) var themeColorScheme
    @Environment(\.activeColorScheme) var activeColorScheme
    @State var scheme: AdaptiveColors?
    
    var body: some View {
        ScrollView {
            VStack(spacing: dimensions.spacing.fixed3xs) {
                HStack {
                    Spacer()
                }

                AdaptiveView(headline: "Functional")
                    .environment(\.adaptiveThemeDimensions, getDimensionsFunctionalMobile())
                    .activeColorScheme(scheme ?? activeColorScheme)
                
                AdaptiveView(headline: "Regular")
                    .environment(\.adaptiveThemeDimensions, getDimensionsRegularMobile())
                    .activeColorScheme(themeColorScheme.warning)
                
                AdaptiveView(headline: "Expressive")
                    .environment(\.adaptiveThemeDimensions, getDimensionsExpressiveMobile())
                    .activeColorScheme(themeColorScheme.violet)
                
                Button("Button iOS default") {
                    scheme = themeColorScheme.neutral
                }
                
                Button("Button with Color Scheme") {
                    scheme = themeColorScheme.informational
                }
                .dbElevation1()
                
                Button("Button with Warning Color Scheme") {
                    scheme = themeColorScheme.warning
                }
                .dbElevation1()
                .activeColorScheme(themeColorScheme.warning)
                
                Button("Button with Violet Color Scheme") {
                    scheme = themeColorScheme.violet
                }
                .dbElevation1()
                .activeColorScheme(themeColorScheme.violet)
                
            }
        }
        .background(activeColorScheme.basic.background.level1.default)
    }
}

struct AdaptiveView: View {
    @Environment(\.adaptiveThemeDimensions) var dimensions
    @Environment(\.activeColorScheme) var colorScheme
    
    let headline: String
    
    var body: some View {
        VStack(spacing: dimensions.spacing.fixedSm) {
            Image(systemName: "globe")
                .resizable()
                .frame(width: dimensions.sizing.baseSm, height: dimensions.sizing.baseSm)
                .foregroundColor(colorScheme.onBgBasicEmphasis80Default)
            Text(headline)
            VStack(spacing: dimensions.spacing.fixedSm) {
                Text("This View is on Layer 2")
                
                VStack(spacing: dimensions.spacing.fixedSm) {
                    Text("This View is on Layer 3")
                }
                .dbElevation3()
            }
            .dbElevation2()
        }
        .dbElevation1()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
        .dbTheme()
}
