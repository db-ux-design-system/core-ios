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

struct DropShadowModifier: ViewModifier {
    
    let elevation: DSSubElevation
    
    func body(content: Content) -> some View {
        content
            .background(
                content
                    .shadow(color: elevation.first.color, radius: elevation.first.spread, x: elevation.first.x, y: elevation.first.y)
                    .shadow(color: elevation.second.color, radius: elevation.second.spread, x: elevation.second.x, y: elevation.second.y)
                    .shadow(color: elevation.third.color, radius: elevation.third.spread, x: elevation.third.x, y: elevation.third.y)
            )
    }
}

extension View {
    func dropShadowCell(elevation: DSSubElevation = DSElevation.sm) -> some View {
        self.modifier(DropShadowModifier(elevation: elevation))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    VStack(spacing: 40) {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
            Text("Hallo")
        }
            .frame(width: 100, height: 100)
            .dropShadowCell(elevation: DSElevation.sm)
        
        Circle()
            .fill(.white)
            .frame(width: 100, height: 100)
            .dropShadowCell(elevation: DSElevation.md)
        
        Rectangle()
            .fill(.white)
            .frame(width: 100, height: 100)
            .dropShadowCell(elevation: DSElevation.lg)
    }
}
