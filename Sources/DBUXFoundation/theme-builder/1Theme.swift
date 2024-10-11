
import SwiftUI

struct ThemeModifier: ViewModifier {
//    @Environment(\.theme) var DeutscheBahnTheme
    @Environment(\.colorScheme) var systemColorScheme
    
    func body(content: Content) -> some View {
        let theme = SuperDuperTheme()
        content
            .theme(theme)
    }
    
    var adaptiveFonts: DesignSystemFonts {
        // TODO: Use dimensions environment variable
        let typography = UIDevice.current.userInterfaceIdiom == .pad ? DesignSystemTypography.getTypographyRegularTablet(sizes: SuperDuperTypography) : DesignSystemTypography.getTypographyRegularMobile(sizes: SuperDuperTypography)
        return DesignSystemFonts.getFonts(typo: typography)
    }
    
    var adaptiveDimensions: DesignSystemDimensions {
        UIDevice.current.userInterfaceIdiom == .pad ? DesignSystemDimensions.getDimensionsRegularTablet(dimensions: SuperDuperDimensions()) : DesignSystemDimensions.getDimensionsRegularMobile(dimensions: SuperDuperDimensions())
    }
}

extension EnvironmentValues {
    @Entry var theme: Theme = SuperDuperTheme()
    @Entry var themeColorScheme: DesignSystemColorScheme = SuperDuperTheme().colorScheme
    @Entry var activeColorScheme: AdaptiveColors = SuperDuperTheme().activeColor
}

extension View {
    public func dbTheme() -> some View {
        modifier(ThemeModifier())
    }
    
    func theme(_ theme: Theme) -> some View {
        environment(\.theme, theme)
    }
    
    func themeColorScheme(_ colorScheme: DesignSystemColorScheme) -> some View {
        environment(\.themeColorScheme, colorScheme)
    }
    
    func activeColorScheme(_ colorScheme: AdaptiveColors) -> some View {
        environment(\.activeColorScheme, colorScheme)
    }
}

protocol Theme {
    var colorScheme: DesignSystemColorScheme { get set }
    var activeColor: AdaptiveColors { get set }
    var fonts: DesignSystemFonts { get set }
    var dimensions: DesignSystemDimensions { get set }
}

//struct SuperTheme: Theme {
//    var colorScheme: DesignSystemColorScheme
//    var activeColor: AdaptiveColors
//    var fonts: DesignSystemFonts
////    var dimensions: DesignSystemDimensions
//    
//    init() {
//        self.colorScheme = getColorSchemeDark(colors: SuperDuperColors)
//        self.activeColor = self.colorScheme.brand
//        self.fonts = DesignSystemFonts(h1: .title, h2: .title, h3: .title2, h4: .title, h5: .title3, h6: .title3, body: .body, body3xl: .body, body2xl: .body, bodyXl: .body, bodyLg: .body, bodyMd: .body, bodySm: .body, bodyXs: .body, body2xs: .body, body3xs: .body)
////        self.dimensions = ThemeDimensions.functionalMobile(dimensions: DeutscheBahnDimensions())
//    }
//}

//extension Theme {
//    static
//func getThemeColorScheme(colors: [String: Color], colorScheme: ColorScheme) -> DesignSystemColorScheme {
//    // Dark
//    var neutralColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "neutral", colors: colors)
//    }
//    
//    var brandColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "brand", colors: colors)
//    }
//    
//    var informationalColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "informational", colors: colors)
//    }
//    
//    var warningColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "warning", colors: colors)
//    }
//    
//    var successfulColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "successful", colors: colors)
//    }
//    
//    var criticalColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "critical", colors: colors)
//    }
//    
//    var yellowColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "yellow", colors: colors)
//    }
//    
//    var orangeColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "orange", colors: colors)
//    }
//    
//    var redColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "red", colors: colors)
//    }
//    
//    var pinkColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "pink", colors: colors)
//    }
//    
//    var violetColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "violet", colors: colors)
//    }
//    
//    var blueColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "blue", colors: colors)
//    }
//    
//    var cyanColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "cyan", colors: colors)
//    }
//    
//    var turquoiseColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "turquoise", colors: colors)
//    }
//    
//    var greenColorsDark: AdaptiveColors {
//        return .init(.dark, colorName: "green", colors: colors)
//    }
//    
//    // Light
//    var neutralColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "neutral", colors: colors)
//    }
//    
//    var brandColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "brand", colors: colors)
//    }
//    
//    var informationalColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "informational", colors: colors)
//    }
//    
//    var warningColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "warning", colors: colors)
//    }
//    
//    var successfulColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "successful", colors: colors)
//    }
//    
//    var criticalColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "critical", colors: colors)
//    }
//    
//    var yellowColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "yellow", colors: colors)
//    }
//    
//    var orangeColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "orange", colors: colors)
//    }
//    
//    var redColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "red", colors: colors)
//    }
//    
//    var pinkColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "pink", colors: colors)
//    }
//    
//    var violetColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "violet", colors: colors)
//    }
//    
//    var blueColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "blue", colors: colors)
//    }
//    
//    var cyanColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "cyan", colors: colors)
//    }
//    
//    var turquoiseColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "turquoise", colors: colors)
//    }
//    
//    var greenColorsLight: AdaptiveColors {
//        return .init(.light, colorName: "green", colors: colors)
//    }
//    
//    switch colorScheme {
//    case .dark:
//        return .init(
//            neutral: neutralColorsDark,
//            brand: brandColorsDark,
//            informational: informationalColorsDark,
//            warning: warningColorsDark,
//            successful: successfulColorsDark,
//            critical: criticalColorsDark,
//            yellow: yellowColorsDark,
//            orange: orangeColorsDark,
//            red: redColorsDark,
//            pink: pinkColorsDark,
//            violet: violetColorsDark,
//            blue: blueColorsDark,
//            cyan: cyanColorsDark,
//            turquoise: turquoiseColorsDark,
//            green: greenColorsDark
//        )
//    default:
//        return .init(
//            neutral: neutralColorsLight,
//            brand: brandColorsLight,
//            informational: informationalColorsLight,
//            warning: warningColorsLight,
//            successful: successfulColorsLight,
//            critical: criticalColorsLight,
//            yellow: yellowColorsLight,
//            orange: orangeColorsLight,
//            red: redColorsLight,
//            pink: pinkColorsLight,
//            violet: violetColorsLight,
//            blue: blueColorsLight,
//            cyan: cyanColorsLight,
//            turquoise: turquoiseColorsLight,
//            green: greenColorsLight
//        )
//    }
//}
