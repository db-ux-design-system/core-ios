
import SwiftUI

nonisolated(unsafe) private var DarkColorScheme = getColorSchemeDark()

nonisolated(unsafe) private var LightColorScheme = getColorSchemeLight()

//struct DBApp<Content: View>: View {
//    @Environment(\.colorScheme) var systemColorScheme
//
//    @ViewBuilder let content: Content
//
//    var body: some View {
//        content
//            .colorScheme(colorScheme)
//            .environment(\.adaptiveThemeDimensions, dimensions)
//            .onChange(of: systemColorScheme) { oldValue, newValue in
//                print("Color scheme changed from \(oldValue) to \(newValue)")
//            }
//    }
//
//    var colorScheme: DeutscheBahnThemeColorScheme {
//        systemColorScheme == .light ? getColorSchemeLight() : getColorSchemeDark()
//    }
//
//    var dimensions: DeutscheBahnThemeDimensions {
//        UIDevice.current.userInterfaceIdiom == .pad ? getDimensionsRegularTablet() : getDimensionsRegularMobile()
//    }
//
////    var typographie: DeutscheBahnThemeTypographie {
////
////    }
//}


struct DeutscheBahnThemeModifier: ViewModifier {
    @Environment(\.colorScheme) var systemColorScheme
    
    func body(content: Content) -> some View {
        content
            .themeColorScheme(adaptiveColorScheme)
            .activeColorScheme(adaptiveColorScheme.neutral)
    }
    
    var adaptiveColorScheme: DeutscheBahnThemeColorScheme {
        systemColorScheme == .dark ? DarkColorScheme : LightColorScheme
    }
}

extension EnvironmentValues {
    @Entry var themeColorScheme: DeutscheBahnThemeColorScheme = getColorSchemeLight()
    @Entry var activeColorScheme: AdaptiveColors = getColorSchemeLight().neutral
    @Entry var adaptiveThemeDimensions: DeutscheBahnThemeDimensions = getDimensionsRegularMobile()
}

extension View {
    public func dbTheme() -> some View {
        modifier(DeutscheBahnThemeModifier())
    }
    
    func themeColorScheme(_ colorScheme: DeutscheBahnThemeColorScheme) -> some View {
        environment(\.themeColorScheme, colorScheme)
    }
    
    func activeColorScheme(_ colors: AdaptiveColors) -> some View {
        environment(\.activeColorScheme, colors)
    }
}
    
//    var colors: DeutscheBahnThemeColorScheme
//        @Composable
//        @ReadOnlyComposable
//        get() = LocalColors.current
//
//    var dimensions: DeutscheBahnThemeDimensions
//        @Composable
//        @ReadOnlyComposable
//        get() = LocalDimensions.current

//    var typography: DeutscheBahnThemeTextStyles
//        @Composable
//        @ReadOnlyComposable
//        get() = LocalTypography.current
//}
//
//func DeutscheBahnTheme(
//    density: Density = .regular,
//    darkTheme: Boolean = isSystemInDarkTheme(),
//    content: @Composable () -> Unit
//) {
//    val configuration = LocalConfiguration.current
////    // typography
////    val typography: DeutscheBahnThemeTextStyles = when {
////        configuration.screenWidthDp > 768 ->
////            when (density) {
////                Density.FUNCTIONAL -> getTextStyles(getTypographyFunctionalTablet())
////                Density.EXPRESSIVE -> getTextStyles(getTypographyExpressiveTablet())
////                else -> getTextStyles(getTypographyRegularTablet())
////            }
////
////        else -> when (density) {
////            Density.FUNCTIONAL -> getTextStyles(getTypographyFunctionalMobile())
////            Density.EXPRESSIVE -> getTextStyles(getTypographyExpressiveMobile())
////            else -> getTextStyles(getTypographyRegularMobile())
////        }
////    }
//
//    // screen
//    val dimensions: DeutscheBahnThemeDimensions = when {
//        configuration.screenWidthDp > 768 ->
//            when (density) {
//                Density.FUNCTIONAL -> getDimensionsFunctionalTablet()
//                Density.EXPRESSIVE -> getDimensionsExpressiveTablet()
//                else -> getDimensionsRegularTablet()
//            }
//
//        else -> when (density) {
//            Density.FUNCTIONAL -> getDimensionsFunctionalMobile()
//            Density.EXPRESSIVE -> getDimensionsExpressiveMobile()
//            else -> getDimensionsRegularMobile()
//        }
//    }
//
//    // colors
//    val colorScheme: DeutscheBahnThemeColorScheme = when {
//        darkTheme -> DarkColorScheme
//        else -> LightColorScheme
//    }
//    val view = LocalView.current
//    if (!view.isInEditMode) {
//        SideEffect {
//            val window = (view.context as Activity).window
//            window.statusBarColor = colorScheme.neutral.bgBasicLevel1Default.toArgb()
//            window.navigationBarColor = colorScheme.neutral.bgBasicLevel1Default.toArgb()
//            WindowCompat.getInsetsController(window, view).isAppearanceLightStatusBars = darkTheme
//        }
//    }
//
//    CompositionLocalProvider(
//        LocalColors provides colorScheme,
//        LocalDimensions provides dimensions,
////        LocalTypography provides typography
//    ) {
//        content()
//    }
//}
