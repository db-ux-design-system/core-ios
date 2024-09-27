import SwiftUI

struct AdaptiveColors {
  let bgBasicLevel1Default: Color
  let bgBasicLevel1Hovered: Color
  let bgBasicLevel1Pressed: Color
  let bgBasicLevel2Default: Color
  let bgBasicLevel2Hovered: Color
  let bgBasicLevel2Pressed: Color
  let bgBasicLevel3Default: Color
  let bgBasicLevel3Hovered: Color
  let bgBasicLevel3Pressed: Color
  let bgBasicTransparentFullDefault: Color
  let bgBasicTransparentSemiDefault: Color
  let bgBasicTransparentHovered: Color
  let bgBasicTransparentPressed: Color
  let onBgBasicEmphasis100Default: Color
  let onBgBasicEmphasis100Hovered: Color
  let onBgBasicEmphasis100Pressed: Color
  let onBgBasicEmphasis90Default: Color
  let onBgBasicEmphasis90Hovered: Color
  let onBgBasicEmphasis90Pressed: Color
  let onBgBasicEmphasis80Default: Color
  let onBgBasicEmphasis80Hovered: Color
  let onBgBasicEmphasis80Pressed: Color
  let onBgBasicEmphasis70Default: Color
  let onBgBasicEmphasis70Hovered: Color
  let onBgBasicEmphasis70Pressed: Color
  let onBgBasicEmphasis60Default: Color
  let onBgBasicEmphasis60Hovered: Color
  let onBgBasicEmphasis60Pressed: Color
  let onBgBasicEmphasis50Default: Color
  let onBgBasicEmphasis50Hovered: Color
  let onBgBasicEmphasis50Pressed: Color
  let bgInvertedContrastMaxDefault: Color
  let bgInvertedContrastMaxHovered: Color
  let bgInvertedContrastMaxPressed: Color
  let bgInvertedContrastHighDefault: Color
  let bgInvertedContrastHighHovered: Color
  let bgInvertedContrastHighPressed: Color
  let bgInvertedContrastLowDefault: Color
  let bgInvertedContrastLowHovered: Color
  let bgInvertedContrastLowPressed: Color
  let onBgInvertedDefault: Color
  let onBgInvertedHovered: Color
  let onBgInvertedPressed: Color
  let onOriginDefault: Color
  let onOriginHovered: Color
  let onOriginPressed: Color
  let originDefault: Color
  let originHovered: Color
  let originPressed: Color
}
struct DeutscheBahnThemeColorScheme {
 let neutral: AdaptiveColors
 let brand: AdaptiveColors
 let informational: AdaptiveColors
 let warning: AdaptiveColors
 let successful: AdaptiveColors
 let critical: AdaptiveColors
 let yellow: AdaptiveColors
 let orange: AdaptiveColors
 let red: AdaptiveColors
 let pink: AdaptiveColors
 let violet: AdaptiveColors
 let blue: AdaptiveColors
 let cyan: AdaptiveColors
 let turquoise: AdaptiveColors
 let green: AdaptiveColors
}

let neutralColorsDark: AdaptiveColors = .init(.dark, colorName: "neutral")

let brandColorsDark: AdaptiveColors = .init(.dark, colorName: "brand")

let informationalColorsDark: AdaptiveColors = .init(.dark, colorName: "informational")

let warningColorsDark: AdaptiveColors = .init(.dark, colorName: "warning")

let successfulColorsDark: AdaptiveColors = .init(.dark, colorName: "successful")

let criticalColorsDark: AdaptiveColors = .init(.dark, colorName: "critical")

let yellowColorsDark: AdaptiveColors = .init(.dark, colorName: "yellow")

let orangeColorsDark: AdaptiveColors = .init(.dark, colorName: "orange")

let redColorsDark: AdaptiveColors = .init(.dark, colorName: "red")

let pinkColorsDark: AdaptiveColors = .init(.dark, colorName: "pink")

let violetColorsDark: AdaptiveColors = .init(.dark, colorName: "violet")

let blueColorsDark: AdaptiveColors = .init(.dark, colorName: "blue")

let cyanColorsDark: AdaptiveColors = .init(.dark, colorName: "cyan")

let turquoiseColorsDark: AdaptiveColors = .init(.dark, colorName: "turquoise")

let greenColorsDark: AdaptiveColors = .init(.dark, colorName: "green")

func getColorSchemeDark(
  neutral: AdaptiveColors = neutralColorsDark,
  brand: AdaptiveColors = brandColorsDark,
  informational: AdaptiveColors = informationalColorsDark,
  warning: AdaptiveColors = warningColorsDark,
  successful: AdaptiveColors = successfulColorsDark,
  critical: AdaptiveColors = criticalColorsDark,
  yellow: AdaptiveColors = yellowColorsDark,
  orange: AdaptiveColors = orangeColorsDark,
  red: AdaptiveColors = redColorsDark,
  pink: AdaptiveColors = pinkColorsDark,
  violet: AdaptiveColors = violetColorsDark,
  blue: AdaptiveColors = blueColorsDark,
  cyan: AdaptiveColors = cyanColorsDark,
  turquoise: AdaptiveColors = turquoiseColorsDark,
  green: AdaptiveColors = greenColorsDark
) -> DeutscheBahnThemeColorScheme {
    .init(
        neutral: neutral,
        brand: brand,
        informational: informational,
        warning: warning,
        successful: successful,
        critical: critical,
        yellow: yellow,
        orange: orange,
        red: red,
        pink: pink,
        violet: violet,
        blue: blue,
        cyan: cyan,
        turquoise: turquoise,
        green: green
)
  
}

let neutralColorsLight: AdaptiveColors = .init(.light, colorName: "neutral")

let brandColorsLight: AdaptiveColors = .init(.light, colorName: "brand")

let informationalColorsLight: AdaptiveColors = .init(.light, colorName: "informational")

let warningColorsLight: AdaptiveColors = .init(.light, colorName: "warning")

let successfulColorsLight: AdaptiveColors = .init(.light, colorName: "successful")

let criticalColorsLight: AdaptiveColors = .init(.light, colorName: "critical")

let yellowColorsLight: AdaptiveColors = .init(.light, colorName: "yellow")

let orangeColorsLight: AdaptiveColors = .init(.light, colorName: "orange")

let redColorsLight: AdaptiveColors = .init(.light, colorName: "red")

let pinkColorsLight: AdaptiveColors = .init(.light, colorName: "pink")

let violetColorsLight: AdaptiveColors = .init(.light, colorName: "violet")

let blueColorsLight: AdaptiveColors = .init(.light, colorName: "blue")

let cyanColorsLight: AdaptiveColors = .init(.light, colorName: "cyan")

let turquoiseColorsLight: AdaptiveColors = .init(.light, colorName: "turquoise")

let greenColorsLight: AdaptiveColors = .init(.light, colorName: "green")

func getColorSchemeLight(
  neutral: AdaptiveColors = neutralColorsLight,
  brand: AdaptiveColors = brandColorsLight,
  informational: AdaptiveColors = informationalColorsLight,
  warning: AdaptiveColors = warningColorsLight,
  successful: AdaptiveColors = successfulColorsLight,
  critical: AdaptiveColors = criticalColorsLight,
  yellow: AdaptiveColors = yellowColorsLight,
  orange: AdaptiveColors = orangeColorsLight,
  red: AdaptiveColors = redColorsLight,
  pink: AdaptiveColors = pinkColorsLight,
  violet: AdaptiveColors = violetColorsLight,
  blue: AdaptiveColors = blueColorsLight,
  cyan: AdaptiveColors = cyanColorsLight,
  turquoise: AdaptiveColors = turquoiseColorsLight,
  green: AdaptiveColors = greenColorsLight
) -> DeutscheBahnThemeColorScheme {
    .init(
        neutral: neutral,
        brand: brand,
        informational: informational,
        warning: warning,
        successful: successful,
        critical: critical,
        yellow: yellow,
        orange: orange,
        red: red,
        pink: pink,
        violet: violet,
        blue: blue,
        cyan: cyan,
        turquoise: turquoise,
        green: green
)
  
}

enum DBColorScheme {
    case light
    case dark
}

extension AdaptiveColors {
  init(_ scheme: DBColorScheme, colorName: String) {
      switch scheme {
        case .dark:
          self.bgBasicLevel1Default = dbColors["\(colorName)3", default: .clear]
          self.bgBasicLevel1Hovered = dbColors["\(colorName)4", default: .clear]
          self.bgBasicLevel1Pressed = dbColors["\(colorName)5", default: .clear]
          self.bgBasicLevel2Default = dbColors["\(colorName)2", default: .clear]
          self.bgBasicLevel2Hovered = dbColors["\(colorName)3", default: .clear]
          self.bgBasicLevel2Pressed = dbColors["\(colorName)4", default: .clear]
          self.bgBasicLevel3Default = dbColors["\(colorName)1", default: .clear]
          self.bgBasicLevel3Hovered = dbColors["\(colorName)2", default: .clear]
          self.bgBasicLevel3Pressed = dbColors["\(colorName)3", default: .clear]
          self.bgBasicTransparentFullDefault = dbColors["\(colorName)9", default: .clear].opacity(1)
          self.bgBasicTransparentSemiDefault = dbColors["\(colorName)9", default: .clear].opacity(0.84)
          self.bgBasicTransparentHovered = dbColors["\(colorName)9", default: .clear].opacity(0.76)
          self.bgBasicTransparentPressed = dbColors["\(colorName)9", default: .clear].opacity(0.68)
          self.onBgBasicEmphasis100Default = dbColors["\(colorName)12", default: .clear]
          self.onBgBasicEmphasis100Hovered = dbColors["\(colorName)11", default: .clear]
          self.onBgBasicEmphasis100Pressed = dbColors["\(colorName)10", default: .clear]
          self.onBgBasicEmphasis90Default = dbColors["\(colorName)10", default: .clear]
          self.onBgBasicEmphasis90Hovered = dbColors["\(colorName)9", default: .clear]
          self.onBgBasicEmphasis90Pressed = dbColors["\(colorName)8", default: .clear]
          self.onBgBasicEmphasis80Default = dbColors["\(colorName)9", default: .clear]
          self.onBgBasicEmphasis80Hovered = dbColors["\(colorName)8", default: .clear]
          self.onBgBasicEmphasis80Pressed = dbColors["\(colorName)7", default: .clear]
          self.onBgBasicEmphasis70Default = dbColors["\(colorName)8", default: .clear]
          self.onBgBasicEmphasis70Hovered = dbColors["\(colorName)7", default: .clear]
          self.onBgBasicEmphasis70Pressed = dbColors["\(colorName)6", default: .clear]
          self.onBgBasicEmphasis60Default = dbColors["\(colorName)6", default: .clear]
          self.onBgBasicEmphasis60Hovered = dbColors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis60Pressed = dbColors["\(colorName)4", default: .clear]
          self.onBgBasicEmphasis50Default = dbColors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis50Hovered = dbColors["\(colorName)4", default: .clear]
          self.onBgBasicEmphasis50Pressed = dbColors["\(colorName)3", default: .clear]
          self.bgInvertedContrastMaxDefault = dbColors["\(colorName)12", default: .clear]
          self.bgInvertedContrastMaxHovered = dbColors["\(colorName)11", default: .clear]
          self.bgInvertedContrastMaxPressed = dbColors["\(colorName)10", default: .clear]
          self.bgInvertedContrastHighDefault = dbColors["\(colorName)9", default: .clear]
          self.bgInvertedContrastHighHovered = dbColors["\(colorName)8", default: .clear]
          self.bgInvertedContrastHighPressed = dbColors["\(colorName)7", default: .clear]
          self.bgInvertedContrastLowDefault = dbColors["\(colorName)8", default: .clear]
          self.bgInvertedContrastLowHovered = dbColors["\(colorName)7", default: .clear]
          self.bgInvertedContrastLowPressed = dbColors["\(colorName)6", default: .clear]
          self.onBgInvertedDefault = dbColors["\(colorName)3", default: .clear]
          self.onBgInvertedHovered = dbColors["\(colorName)4", default: .clear]
          self.onBgInvertedPressed = dbColors["\(colorName)5", default: .clear]
          self.onOriginDefault = dbColors["\(colorName)Dark", default: .clear]
          self.onOriginHovered = dbColors["\(colorName)OnOriginHoveredDark", default: .clear]
          self.onOriginPressed = dbColors["\(colorName)OnOriginPressedDark", default: .clear]
          self.originDefault = dbColors["\(colorName)OriginDefaultDark", default: .clear]
          self.originHovered = dbColors["\(colorName)OriginHoveredDark", default: .clear]
          self.originPressed = dbColors["\(colorName)OriginPressedDark", default: .clear]

        case .light:
          self.bgBasicLevel1Default = dbColors["\(colorName)14", default: .clear]
          self.bgBasicLevel1Hovered = dbColors["\(colorName)13", default: .clear]
          self.bgBasicLevel1Pressed = dbColors["\(colorName)12", default: .clear]
          self.bgBasicLevel2Default = dbColors["\(colorName)13", default: .clear]
          self.bgBasicLevel2Hovered = dbColors["\(colorName)12", default: .clear]
          self.bgBasicLevel2Pressed = dbColors["\(colorName)11", default: .clear]
          self.bgBasicLevel3Default = dbColors["\(colorName)12", default: .clear]
          self.bgBasicLevel3Hovered = dbColors["\(colorName)11", default: .clear]
          self.bgBasicLevel3Pressed = dbColors["\(colorName)10", default: .clear]
          self.bgBasicTransparentFullDefault = dbColors["\(colorName)6", default: .clear].opacity(1)
          self.bgBasicTransparentSemiDefault = dbColors["\(colorName)6", default: .clear].opacity(0.84)
          self.bgBasicTransparentHovered = dbColors["\(colorName)6", default: .clear].opacity(0.76)
          self.bgBasicTransparentPressed = dbColors["\(colorName)6", default: .clear].opacity(0.68)
          self.onBgBasicEmphasis100Default = dbColors["\(colorName)3", default: .clear]
          self.onBgBasicEmphasis100Hovered = dbColors["\(colorName)4", default: .clear]
          self.onBgBasicEmphasis100Pressed = dbColors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis90Default = dbColors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis90Hovered = dbColors["\(colorName)6", default: .clear]
          self.onBgBasicEmphasis90Pressed = dbColors["\(colorName)7", default: .clear]
          self.onBgBasicEmphasis80Default = dbColors["\(colorName)6", default: .clear]
          self.onBgBasicEmphasis80Hovered = dbColors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis80Pressed = dbColors["\(colorName)4", default: .clear]
          self.onBgBasicEmphasis70Default = dbColors["\(colorName)7", default: .clear]
          self.onBgBasicEmphasis70Hovered = dbColors["\(colorName)6", default: .clear]
          self.onBgBasicEmphasis70Pressed = dbColors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis60Default = dbColors["\(colorName)10", default: .clear]
          self.onBgBasicEmphasis60Hovered = dbColors["\(colorName)9", default: .clear]
          self.onBgBasicEmphasis60Pressed = dbColors["\(colorName)8", default: .clear]
          self.onBgBasicEmphasis50Default = dbColors["\(colorName)9", default: .clear]
          self.onBgBasicEmphasis50Hovered = dbColors["\(colorName)8", default: .clear]
          self.onBgBasicEmphasis50Pressed = dbColors["\(colorName)7", default: .clear]
          self.bgInvertedContrastMaxDefault = dbColors["\(colorName)3", default: .clear]
          self.bgInvertedContrastMaxHovered = dbColors["\(colorName)4", default: .clear]
          self.bgInvertedContrastMaxPressed = dbColors["\(colorName)5", default: .clear]
          self.bgInvertedContrastHighDefault = dbColors["\(colorName)6", default: .clear]
          self.bgInvertedContrastHighHovered = dbColors["\(colorName)5", default: .clear]
          self.bgInvertedContrastHighPressed = dbColors["\(colorName)4", default: .clear]
          self.bgInvertedContrastLowDefault = dbColors["\(colorName)7", default: .clear]
          self.bgInvertedContrastLowHovered = dbColors["\(colorName)6", default: .clear]
          self.bgInvertedContrastLowPressed = dbColors["\(colorName)5", default: .clear]
          self.onBgInvertedDefault = dbColors["\(colorName)14", default: .clear]
          self.onBgInvertedHovered = dbColors["\(colorName)13", default: .clear]
          self.onBgInvertedPressed = dbColors["\(colorName)12", default: .clear]
          self.onOriginDefault = dbColors["\(colorName)Light", default: .clear]
          self.onOriginHovered = dbColors["\(colorName)OnOriginHoveredLight", default: .clear]
          self.onOriginPressed = dbColors["\(colorName)OnOriginPressedLight", default: .clear]
          self.originDefault = dbColors["\(colorName)OriginDefaultLight", default: .clear]
          self.originHovered = dbColors["\(colorName)OriginHoveredLight", default: .clear]
          self.originPressed = dbColors["\(colorName)OriginPressedLight", default: .clear]

        }
    }
}
