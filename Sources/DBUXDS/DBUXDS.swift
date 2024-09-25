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

struct ContentView: View {
    @Environment(\.adaptiveThemeDimensions) var dimensions
    @Environment(\.themeColorScheme) var themeColorScheme
    @Environment(\.activeColorScheme) var activeColorScheme
    @State var scheme: (any AdaptiveColors)?
    
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
                .stylable()
                
                Button("Button with Warning Color Scheme") {
                    scheme = themeColorScheme.warning
                }
                .stylable()
                .activeColorScheme(themeColorScheme.warning)
                
                Button("Button with Custom Color Scheme") {
                    scheme = themeColorScheme.violet
                }
                .stylable()
                .activeColorScheme(themeColorScheme.violet)
                
            }
        }
    }
}

// ViewModifier Extension
struct StylableView: ViewModifier {
    @Environment(\.activeColorScheme) var scheme
    @Environment(\.adaptiveThemeDimensions) var dimensions
    
    func body(content: Content) -> some View {
        content
            .padding(dimensions.spacing.fixedMd)
            .foregroundStyle(scheme.onBgBasicEmphasis100Default)
            .background(scheme.bgBasicTransparentFullDefault.opacity(0))
    }
}

struct Layer2Modifier: ViewModifier {
    @Environment(\.activeColorScheme) var scheme: AdaptiveColors
    @Environment(\.adaptiveThemeDimensions) var dimensions
    
    func body(content: Content) -> some View {
        content
            .padding(dimensions.spacing.fixedMd)
            .foregroundStyle(scheme.onBgBasicEmphasis90Default)
            .background(scheme.bgBasicLevel2Default)
            .cornerRadius(dimensions.border.radiusXs)
            .overlay(
                RoundedRectangle(cornerRadius: dimensions.border.radiusXs)
                .inset(by: 0.5)
                .stroke(scheme.onBgBasicEmphasis90Default, lineWidth: dimensions.border.height3xs)
            )
    }
}

struct Layer3Modifier: ViewModifier {
    @Environment(\.activeColorScheme) var scheme
    @Environment(\.adaptiveThemeDimensions) var dimensions
    
    func body(content: Content) -> some View {
        content
            .padding(dimensions.spacing.fixedMd)
            .foregroundStyle(scheme.onBgBasicEmphasis80Default)
            .background(scheme.bgBasicLevel3Default)
            .cornerRadius(dimensions.border.radiusXs)
            .overlay(
                RoundedRectangle(cornerRadius: dimensions.border.radiusXs)
                .inset(by: 0.5)
                .stroke(scheme.onBgBasicEmphasis80Default, lineWidth: dimensions.border.height3xs)
            )
    }
}

extension View {
    public func stylable() -> some View {
        modifier(StylableView())
    }
    
    public func layer2() -> some View {
        modifier(Layer2Modifier())
    }
    
    public func layer3() -> some View {
        modifier(Layer3Modifier())
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
                .layer3()
            }
            .layer2()
        }
        .stylable()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ContentView()
        .dbTheme()
}
