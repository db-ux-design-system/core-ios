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

struct SharedColors {
    static func foregroundColor(for theme: DSTheme, validation: DBValidation, inverted: Bool) -> Color {
        return inverted
        ? validation.baseColor(for: theme).inverted.onBackground.default
        : validation == .noValidation
        ? validation.baseColor(for: theme).basic.icon.emphasis100.default
        : validation.baseColor(for: theme).basic.icon.emphasis70.default
    }
    
    static func textColor(for theme: DSTheme, validation: DBValidation, pressed: Bool) -> Color {
        switch validation {
        case .noValidation:
            return validation.baseColor(for: theme).basic.text.emphasis100.colorForPressed(pressed)
        case .invalid, .valid:
            return validation.baseColor(for: theme).basic.text.emphasis80.colorForPressed(pressed)
        }
    }
    
    static func borderColor(for theme: DSTheme, validation: DBValidation, checked: Bool, pressed: Bool) -> Color {
        switch validation {
        case .noValidation:
            return checked
            ? validation.baseColor(for: theme).inverted.background.contrastMax.colorForPressed(pressed)
            : validation.baseColor(for: theme).basic.border.emphasis100.default
        case .invalid, .valid:
            return checked
            ? validation.baseColor(for: theme).inverted.background.contrastLow.colorForPressed(pressed)
            : validation.baseColor(for: theme).basic.border.emphasis70.default
        }
    }
    

}
