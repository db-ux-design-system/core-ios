import SwiftUI

struct DSShadowViewModifier: ViewModifier {
    
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
    func dsShadow(elevation: DSSubElevation = DSElevation.sm) -> some View {
        self.modifier(DSShadowViewModifier(elevation: elevation))
    }
}

struct DSSubElevation {
    let first: DSElevationShadowConfig
    let second: DSElevationShadowConfig
    let third: DSElevationShadowConfig
}

struct DSElevationShadowConfig {
    let x: CGFloat
    let y: CGFloat
    let blur: CGFloat
    let spread: CGFloat
    let color: Color
}
  
public struct DSElevation {
    static let sm = DSSubElevation(
        first: .init(
            x: 0, 
            y: 0, 
            blur: 1, 
            spread: -1, 
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.2)
        ),
        second: .init(
            x: 0, 
            y: 0, 
            blur: 4, 
            spread: 1, 
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.12)
        ),
        third: .init(
            x: 0, 
            y: 0, 
            blur: 2, 
            spread: 0, 
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.14)
        )
    )
    static let md = DSSubElevation(
        first: .init(
            x: 0, 
            y: 0, 
            blur: 2, 
            spread: -1, 
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.2)
        ),
        second: .init(
            x: 0, 
            y: 0, 
            blur: 8, 
            spread: 1, 
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.12)
        ),
        third: .init(
            x: 0, 
            y: 0, 
            blur: 4, 
            spread: 0, 
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.14)
        )
    )
    static let lg = DSSubElevation(
        first: .init(
            x: 0, 
            y: 0, 
            blur: 4, 
            spread: -3, 
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.2)
        ),
        second: .init(
            x: 0, 
            y: 0, 
            blur: 16, 
            spread: 3, 
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.12)
        ),
        third: .init(
            x: 0, 
            y: 0, 
            blur: 8, 
            spread: 1, 
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.14)
        )
    )
}


  