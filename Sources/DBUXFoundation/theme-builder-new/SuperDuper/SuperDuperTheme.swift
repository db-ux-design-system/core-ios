
import SwiftUI

struct SuperDuperTheme: Theme {
    var colorScheme: DesignSystemColorScheme
    var activeColor: AdaptiveColors
    var dimensions: DesignSystemDimensions
    var fonts: DesignSystemFonts
    
    init(_ colorScheme: ColorScheme = .light, interfaceIdiom: UIUserInterfaceIdiom = .phone) {
        self.colorScheme = colorScheme == .light ? getColorSchemeLight(colors: SuperDuperColors) : getColorSchemeDark(colors: SuperDuperColors)
        self.activeColor = self.colorScheme.neutral
        self.dimensions = interfaceIdiom == .pad ? DesignSystemDimensions.getDimensionsRegularTablet(dimensions: SuperDuperDimensions()) : DesignSystemDimensions.getDimensionsRegularMobile(dimensions: SuperDuperDimensions())
        self.fonts = DesignSystemFonts.getFonts(typo: DesignSystemTypography.getTypographyRegularMobile(sizes: SuperDuperTypography))
    }
}
