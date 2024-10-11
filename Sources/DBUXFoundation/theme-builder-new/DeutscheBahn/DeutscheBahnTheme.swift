
import SwiftUI

struct DeutscheBahnTheme: Theme {
    var colorScheme: DesignSystemColorScheme
    var activeColor: AdaptiveColors
    var dimensions: DesignSystemDimensions
    var fonts: DesignSystemFonts
    
    init(_ colorScheme: ColorScheme = .light) {
        self.colorScheme = colorScheme == .light ? getColorSchemeLight(colors: DeutscheBahnColors) : getColorSchemeDark(colors: DeutscheBahnColors)
        self.activeColor = self.colorScheme.brand
        self.dimensions = DesignSystemDimensions.getDimensionsFunctionalMobile(dimensions: DeutscheBahnDimensions())
        self.fonts = DesignSystemFonts.getFonts(typo: DesignSystemTypography.getTypographyFunctionalMobile(sizes: DeutscheBahnTypography))
    }
}
