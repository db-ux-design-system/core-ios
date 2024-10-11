//import SwiftUI
//struct DBFont {
//  let name: String
//  private let publicName: String
//  
//  private init(named name: String, publicName: String) {
//      self.name = name
//      self.publicName = publicName
//      do {
//          try registerFont(fontName: name)
//          print("Registered Font \(name)")
//      } catch {
//          let reason = error.localizedDescription
//          fatalError("Failed to register font: \(reason)")
//      }
//  }
//
//  public func font(size: CGFloat) -> Font {
//      Font.custom(publicName, size: size)
//  }
//
//  static let dbFlex = DBFont(named: "DBNeoScreenFlex", publicName: "DB Neo Screen Flex")
//
//}
//
//public enum FontError: Swift.Error {
//    case failedToRegisterFont
//}
//
//func registerFont(fontName: String) throws {
//    guard let fontURL = Bundle.module.url(forResource: "\(fontName)", withExtension: "ttf") else {
//        throw FontError.failedToRegisterFont
//    }
//    
//    let fontURLs = [fontURL] as CFArray
//    
//    CTFontManagerRegisterFontURLs(fontURLs, .process, true) { errors, done in
//        let errors = errors as! [CFError]
//        guard errors.isEmpty else {
//            preconditionFailure(errors.map(\.localizedDescription).joined())
//        }
//        return true
//    }
//}
