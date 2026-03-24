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

enum DBSize: CaseIterable {
    case small
    case medium
    
    internal var previewName: String {
        switch self {
        case .small:
            return "(Def) Small"
        case .medium:
            return "Medium"
        }
    }
}

enum DBEmphasis: CaseIterable {
    case weak
    case strong
    
    internal var previewName: String {
        switch self {
        case .weak:
            return "(Def) Weak"
        case .strong:
            return "Strong"
        }
    }
}

enum DBSemantic: CaseIterable {
    case adaptive
    case critical
    case informational
    case neutral
    case successful
    case warning
    
    internal var previewName: String {
        switch self {
        case .adaptive:
            return "(Def) Adaptive"
        case .critical:
            return "Critical"
        case .informational:
            return "Informational"
        case .neutral:
            return "Neutral"
        case .successful:
            return "Successful"
        case .warning:
            return "Warning"
        }
    }
}
