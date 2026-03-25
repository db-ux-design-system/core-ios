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
    case medium
    case small
    
    internal func previewName(def: DBSize = .medium) -> String {
        var name = "\(def == self ? "(Def) " : "")"
        
        switch self {
        case .medium:
            name.append("Medium")
        case .small:
            name.append("Small")
        }
        
        return name
    }
}

enum DBEmphasis: CaseIterable {
    case weak
    case strong
    
    internal func previewName(def: DBEmphasis = .weak) -> String {
        var name = "\(def == self ? "(Def) " : "")"
        
        switch self {
        case .weak:
            name.append("Weak")
        case .strong:
            name.append("Strong")
        }
        
        return name
    }
}

enum DBSemantic: CaseIterable {
    case adaptive
    case critical
    case informational
    case neutral
    case successful
    case warning
    
    internal func previewName(def: DBSemantic = .adaptive) -> String {
        var name = "\(def == self ? "(Def) " : "")"

        switch self {
        case .adaptive:
            name.append("Adaptive")
        case .critical:
            name.append("Critical")
        case .informational:
            name.append("Informational")
        case .neutral:
            name.append("Neutral")
        case .successful:
            name.append("Successful")
        case .warning:
            name.append("Warning")
        }
        
        return name
    }
}
