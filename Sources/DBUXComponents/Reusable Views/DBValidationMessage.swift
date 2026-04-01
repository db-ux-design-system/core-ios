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

struct DBValidationMessage: View {
    var validation: DBValidation
    var message: String?
    var showMessage: Bool = false
    
    var body: some View {
        if validation != .noValidation || (message != nil && !message!.isEmpty && showMessage) {
            switch validation {
            case .noValidation:
                if let message = message, !message.isEmpty && showMessage {
                    DBInfotext(text: message, semantic: .neutral, size: .small)
                }
            case .invalid(let text):
                DBInfotext(text: text, semantic: .critical, size: .small)
            case .valid(let text):
                DBInfotext(text: text, semantic: .successful, size: .small)
            }
        }
    }
}
