
import SwiftUI

struct SuperDuperTheme: Theme {
    var colorScheme: DesignSystemColorScheme
    var activeColor: AdaptiveColors
    var dimensions: DesignSystemDimensions
    var fonts: DesignSystemFonts
    
    init(_ colorScheme: ColorScheme = .light) {
        self.colorScheme = colorScheme == .light ? getColorSchemeLight(colors: SuperDuperColors) : getColorSchemeDark(colors: SuperDuperColors)
        self.activeColor = self.colorScheme.brand
        self.dimensions = DesignSystemDimensions.getDimensionsFunctionalMobile(dimensions: SuperDuperDimensions())
        self.fonts = DesignSystemFonts.getFonts(typo: DesignSystemTypography.getTypographyRegularMobile(sizes: SuperDuperTypography))
    }
}
