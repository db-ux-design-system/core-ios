
import SwiftUI

public struct SBahnTheme: DSTheme {
    public var colorScheme: DesignSystemColorScheme
    public var activeColor: DSColorVariant
    public var dimensions: DesignSystemDimensions
    public var fonts: DesignSystemTextStyles
    
    public init(_ colorScheme: ColorScheme = .light) {
        self.colorScheme = colorScheme == .light ? DesignSystemColorScheme.getColorSchemeLight(colors: SBahnColors) : DesignSystemColorScheme.getColorSchemeDark(colors: SBahnColors)
        self.activeColor = self.colorScheme.brand
        self.dimensions = DesignSystemDimensions.getDimensionsFunctionalMobile(dimensions: SBahnDimensions())
        self.fonts = DesignSystemTextStyles.getFonts(typo: DesignSystemTypography.getTypographyFunctionalMobile(sizes: SBahnTypography))
    }
}
