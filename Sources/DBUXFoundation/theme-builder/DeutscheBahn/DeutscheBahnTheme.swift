
import SwiftUI

public struct DeutscheBahnTheme: DSTheme {
    public var colorScheme: DesignSystemColorScheme
    public var activeColor: DSColorVariant
    public var dimensions: DesignSystemDimensions
    public var fonts: DesignSystemTextStyles
    
    public init(_ colorScheme: ColorScheme = .light) {
        self.colorScheme = colorScheme == .light ? DesignSystemColorScheme.getColorSchemeLight(colors: DeutscheBahnColors) : DesignSystemColorScheme.getColorSchemeDark(colors: DeutscheBahnColors)
        self.activeColor = self.colorScheme.brand
        self.dimensions = DesignSystemDimensions.getDimensionsFunctionalMobile(dimensions: DeutscheBahnDimensions())
        self.fonts = DesignSystemTextStyles.getFonts(typo: DesignSystemTypography.getTypographyFunctionalMobile(sizes: DeutscheBahnTypography))
    }
}
