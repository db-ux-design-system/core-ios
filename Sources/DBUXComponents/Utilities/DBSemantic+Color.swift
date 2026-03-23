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

extension DBSemantic {
    internal func baseColor(_ theme: DSTheme) -> DSColorVariant {
        switch self {
        case .adaptive:
            theme.activeColor
        case .neutral:
            theme.colorScheme.neutral
        case .critical:
            theme.colorScheme.critical
        case .informational:
            theme.colorScheme.informational
        case .warning:
            theme.colorScheme.warning
        case .successful:
            theme.colorScheme.successful
        }
    }
    
    func backgroundColor(theme: DSTheme, emphasis: DBEmphasis?) -> Color {
        if emphasis == .strong {
            return baseColor(theme).bgVibrantDefault
        } else {
            return baseColor(theme).basic.background.level3.default
        }
    }
    
    func iconColor70(theme: DSTheme) -> Color {
        return baseColor(theme).basic.icon.emphasis70.default
    }
    
    func iconColor(theme: DSTheme, emphasis: DBEmphasis?) -> Color {
        if emphasis == .strong {
            return baseColor(theme).onBgVibrantDefault
        } else {
            return baseColor(theme).basic.icon.emphasis100.default
        }
    }
    
    func textColor(theme: DSTheme, emphasis: DBEmphasis?) -> Color {
        if emphasis == .strong {
            return baseColor(theme).onBgVibrantDefault
        } else {
            return baseColor(theme).basic.text.emphasis80.default
        }
    }
    
    func borderColor(theme: DSTheme, emphasis: DBEmphasis?) -> Color {
        return baseColor(theme).basic.border.emphasis70.default
    }
    
}
