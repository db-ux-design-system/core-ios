import SwiftUI
import UIKit

struct DSFont {
    let name: String
    private let publicName: String
    
    private init(named name: String, publicName: String) {
        self.name = name
        self.publicName = publicName
        do {
            try registerFont(fontName: name)
            print("Registered Font \(name)")
        } catch {
            let reason = error.localizedDescription
            fatalError("Failed to register font: \(reason)")
        }
    }
    
    private enum FontError: Swift.Error {
        case failedToRegisterFont
    }

    private func registerFont(fontName: String) throws {
        guard let fontURL = Bundle.module.url(forResource: "\(fontName)", withExtension: "ttf") else {
            throw FontError.failedToRegisterFont
        }
        
        let fontURLs = [fontURL] as CFArray
        
        CTFontManagerRegisterFontURLs(fontURLs, .process, true) { errors, done in
            let errors = errors as! [CFError]
            guard errors.isEmpty else {
                preconditionFailure(errors.map(\.localizedDescription).joined())
            }
            return true
        }
    }
    
    func font(size: CGFloat) -> Font {
        Font.custom(publicName, size: size)
    }
    
    func uiFont(size: CGFloat) -> UIFont {
        UIFont(name: publicName, size: size)!
    }
    
    static let dbNeoScreenFlex = DSFont(named: "DBNeoScreenFlex", publicName: "DB Neo Screen Flex")
}
