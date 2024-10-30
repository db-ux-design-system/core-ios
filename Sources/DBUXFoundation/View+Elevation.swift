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

/**
 This extension provides ViewModifier to set the view's elevation.
 */
struct Elevation1ViewModifier: ViewModifier {
    @Environment(\.theme) var theme: any DSTheme
    
    func body(content: Content) -> some View {
        content
            .padding(theme.dimensions.spacing.fixedMd)
            .background(theme.activeColor.basic.background.level1.default)
            .foregroundStyle(theme.activeColor.basic.text.default.default)
    }
}
    
struct Elevation2ViewModifier: ViewModifier {
    @Environment(\.theme) var theme: any DSTheme
    
    func body(content: Content) -> some View {
        content
            .padding(theme.dimensions.spacing.fixedMd)
            .foregroundStyle(theme.activeColor.basic.text.emphasis90.default)
            .background(theme.activeColor.basic.background.level2.default)
            .cornerRadius(theme.dimensions.border.radiusXs)
            .overlay(
                RoundedRectangle(cornerRadius: theme.dimensions.border.radiusXs)
                    .inset(by: 0.5)
                    .stroke(theme.activeColor.onBgBasicEmphasis90Default, lineWidth: theme.dimensions.border.height3xs)
            )
    }
}
    
struct Elevation3ViewModifier: ViewModifier {
    @Environment(\.theme) var theme: any DSTheme
    
    func body(content: Content) -> some View {
        content
            .padding(theme.dimensions.spacing.fixedMd)
            .foregroundStyle(theme.activeColor.basic.text.emphasis80.default)
            .background(theme.activeColor.basic.background.level3.default)
            .cornerRadius(theme.dimensions.border.radiusXs)
            .overlay(
                RoundedRectangle(cornerRadius: theme.dimensions.border.radiusXs)
                    .inset(by: 0.5)
                    .stroke(theme.activeColor.onBgBasicEmphasis80Default, lineWidth: theme.dimensions.border.height3xs)
            )
    }
}

extension View {
    public func dbElevation1() -> some View {
        modifier(Elevation1ViewModifier())
    }
    
    public func dbElevation2() -> some View {
        modifier(Elevation2ViewModifier())
    }
    
    public func dbElevation3() -> some View {
        modifier(Elevation3ViewModifier())
    }
}
