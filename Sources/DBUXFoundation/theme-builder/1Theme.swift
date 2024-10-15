
import SwiftUI

struct ThemeModifier: ViewModifier {
    @Environment(\.colorScheme) var systemColorScheme
    
    func body(content: Content) -> some View {
        content
            .theme(SuperDuperTheme(systemColorScheme))
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
}

extension View {
    public func dbTheme() -> some View {
        modifier(ThemeModifier())
    }
    
    func theme(_ theme: Theme) -> some View {
        environment(\.theme, theme)
    }
    
    func activeColorScheme(_ colorScheme: AdaptiveColors) -> some View {
        modifier(ActiveColorViewModifier(color: colorScheme))
    }
    
    func dsExpressive() -> some View {
        modifier(DimensionsViewModifier(dimensions: DesignSystemDimensions.getDimensionsExpressiveMobile(dimensions: DeutscheBahnDimensions())))
    }
    
    func dsFunctional() -> some View {
        modifier(DimensionsViewModifier(dimensions:
                                            UIDevice.current.userInterfaceIdiom == .pad ? DesignSystemDimensions.getDimensionsFunctionalTablet(dimensions: DeutscheBahnDimensions()) :
                                            DesignSystemDimensions.getDimensionsFunctionalMobile(dimensions: DeutscheBahnDimensions())))
    }
}

struct ActiveColorViewModifier: ViewModifier {
    @Environment(\.theme) var theme
    
    var color: AdaptiveColors
    
    func body(content: Content) -> some View {
        var changedTheme = theme
        changedTheme.activeColor = color
        
        return content
            .theme(changedTheme)
    }
}

struct DimensionsViewModifier: ViewModifier {
    @Environment(\.theme) var theme
    
    var dimensions: DesignSystemDimensions
    
    func body(content: Content) -> some View {
        var changedTheme = theme
        changedTheme.dimensions = dimensions
        
        return content
            .theme(changedTheme)
    }
}

protocol Theme {
    var colorScheme: DesignSystemColorScheme { get set }
    var activeColor: AdaptiveColors { get set }
    var fonts: DesignSystemFonts { get set }
    var dimensions: DesignSystemDimensions { get set }
}
