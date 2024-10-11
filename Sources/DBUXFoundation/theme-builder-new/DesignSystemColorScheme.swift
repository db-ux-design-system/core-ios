import SwiftUI

extension Color {
  init(hex: Int, opacity: Double = 1) {
      self.init(
          .sRGB,
          red: Double((hex >> 16) & 0xff) / 255,
          green: Double((hex >> 08) & 0xff) / 255,
          blue: Double((hex >> 00) & 0xff) / 255,
          opacity: opacity
      )
  }
}

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

    init(_ scheme: DBColorScheme, colorName: String, colors: [String: Color]) {
      switch scheme {
        case .dark:
          self.bgBasicLevel1Default = colors["\(colorName)3", default: .clear]
          self.bgBasicLevel1Hovered = colors["\(colorName)4", default: .clear]
          self.bgBasicLevel1Pressed = colors["\(colorName)5", default: .clear]
          self.bgBasicLevel2Default = colors["\(colorName)2", default: .clear]
          self.bgBasicLevel2Hovered = colors["\(colorName)3", default: .clear]
          self.bgBasicLevel2Pressed = colors["\(colorName)4", default: .clear]
          self.bgBasicLevel3Default = colors["\(colorName)1", default: .clear]
          self.bgBasicLevel3Hovered = colors["\(colorName)2", default: .clear]
          self.bgBasicLevel3Pressed = colors["\(colorName)3", default: .clear]
          self.bgBasicTransparentFullDefault = colors["\(colorName)9", default: .clear].opacity(1)
          self.bgBasicTransparentSemiDefault = colors["\(colorName)9", default: .clear].opacity(0.84)
          self.bgBasicTransparentHovered = colors["\(colorName)9", default: .clear].opacity(0.76)
          self.bgBasicTransparentPressed = colors["\(colorName)9", default: .clear].opacity(0.68)
          self.onBgBasicEmphasis100Default = colors["\(colorName)12", default: .clear]
          self.onBgBasicEmphasis100Hovered = colors["\(colorName)11", default: .clear]
          self.onBgBasicEmphasis100Pressed = colors["\(colorName)10", default: .clear]
          self.onBgBasicEmphasis90Default = colors["\(colorName)10", default: .clear]
          self.onBgBasicEmphasis90Hovered = colors["\(colorName)9", default: .clear]
          self.onBgBasicEmphasis90Pressed = colors["\(colorName)8", default: .clear]
          self.onBgBasicEmphasis80Default = colors["\(colorName)9", default: .clear]
          self.onBgBasicEmphasis80Hovered = colors["\(colorName)8", default: .clear]
          self.onBgBasicEmphasis80Pressed = colors["\(colorName)7", default: .clear]
          self.onBgBasicEmphasis70Default = colors["\(colorName)8", default: .clear]
          self.onBgBasicEmphasis70Hovered = colors["\(colorName)7", default: .clear]
          self.onBgBasicEmphasis70Pressed = colors["\(colorName)6", default: .clear]
          self.onBgBasicEmphasis60Default = colors["\(colorName)6", default: .clear]
          self.onBgBasicEmphasis60Hovered = colors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis60Pressed = colors["\(colorName)4", default: .clear]
          self.onBgBasicEmphasis50Default = colors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis50Hovered = colors["\(colorName)4", default: .clear]
          self.onBgBasicEmphasis50Pressed = colors["\(colorName)3", default: .clear]
          self.bgInvertedContrastMaxDefault = colors["\(colorName)12", default: .clear]
          self.bgInvertedContrastMaxHovered = colors["\(colorName)11", default: .clear]
          self.bgInvertedContrastMaxPressed = colors["\(colorName)10", default: .clear]
          self.bgInvertedContrastHighDefault = colors["\(colorName)9", default: .clear]
          self.bgInvertedContrastHighHovered = colors["\(colorName)8", default: .clear]
          self.bgInvertedContrastHighPressed = colors["\(colorName)7", default: .clear]
          self.bgInvertedContrastLowDefault = colors["\(colorName)8", default: .clear]
          self.bgInvertedContrastLowHovered = colors["\(colorName)7", default: .clear]
          self.bgInvertedContrastLowPressed = colors["\(colorName)6", default: .clear]
          self.onBgInvertedDefault = colors["\(colorName)3", default: .clear]
          self.onBgInvertedHovered = colors["\(colorName)4", default: .clear]
          self.onBgInvertedPressed = colors["\(colorName)5", default: .clear]
          self.onOriginDefault = colors["\(colorName)Dark", default: .clear]
          self.onOriginHovered = colors["\(colorName)OnOriginHoveredDark", default: .clear]
          self.onOriginPressed = colors["\(colorName)OnOriginPressedDark", default: .clear]
          self.originDefault = colors["\(colorName)OriginDefaultDark", default: .clear]
          self.originHovered = colors["\(colorName)OriginHoveredDark", default: .clear]
          self.originPressed = colors["\(colorName)OriginPressedDark", default: .clear]

        case .light:
          self.bgBasicLevel1Default = colors["\(colorName)14", default: .clear]
          self.bgBasicLevel1Hovered = colors["\(colorName)13", default: .clear]
          self.bgBasicLevel1Pressed = colors["\(colorName)12", default: .clear]
          self.bgBasicLevel2Default = colors["\(colorName)13", default: .clear]
          self.bgBasicLevel2Hovered = colors["\(colorName)12", default: .clear]
          self.bgBasicLevel2Pressed = colors["\(colorName)11", default: .clear]
          self.bgBasicLevel3Default = colors["\(colorName)12", default: .clear]
          self.bgBasicLevel3Hovered = colors["\(colorName)11", default: .clear]
          self.bgBasicLevel3Pressed = colors["\(colorName)10", default: .clear]
          self.bgBasicTransparentFullDefault = colors["\(colorName)6", default: .clear].opacity(1)
          self.bgBasicTransparentSemiDefault = colors["\(colorName)6", default: .clear].opacity(0.84)
          self.bgBasicTransparentHovered = colors["\(colorName)6", default: .clear].opacity(0.76)
          self.bgBasicTransparentPressed = colors["\(colorName)6", default: .clear].opacity(0.68)
          self.onBgBasicEmphasis100Default = colors["\(colorName)3", default: .clear]
          self.onBgBasicEmphasis100Hovered = colors["\(colorName)4", default: .clear]
          self.onBgBasicEmphasis100Pressed = colors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis90Default = colors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis90Hovered = colors["\(colorName)6", default: .clear]
          self.onBgBasicEmphasis90Pressed = colors["\(colorName)7", default: .clear]
          self.onBgBasicEmphasis80Default = colors["\(colorName)6", default: .clear]
          self.onBgBasicEmphasis80Hovered = colors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis80Pressed = colors["\(colorName)4", default: .clear]
          self.onBgBasicEmphasis70Default = colors["\(colorName)7", default: .clear]
          self.onBgBasicEmphasis70Hovered = colors["\(colorName)6", default: .clear]
          self.onBgBasicEmphasis70Pressed = colors["\(colorName)5", default: .clear]
          self.onBgBasicEmphasis60Default = colors["\(colorName)10", default: .clear]
          self.onBgBasicEmphasis60Hovered = colors["\(colorName)9", default: .clear]
          self.onBgBasicEmphasis60Pressed = colors["\(colorName)8", default: .clear]
          self.onBgBasicEmphasis50Default = colors["\(colorName)9", default: .clear]
          self.onBgBasicEmphasis50Hovered = colors["\(colorName)8", default: .clear]
          self.onBgBasicEmphasis50Pressed = colors["\(colorName)7", default: .clear]
          self.bgInvertedContrastMaxDefault = colors["\(colorName)3", default: .clear]
          self.bgInvertedContrastMaxHovered = colors["\(colorName)4", default: .clear]
          self.bgInvertedContrastMaxPressed = colors["\(colorName)5", default: .clear]
          self.bgInvertedContrastHighDefault = colors["\(colorName)6", default: .clear]
          self.bgInvertedContrastHighHovered = colors["\(colorName)5", default: .clear]
          self.bgInvertedContrastHighPressed = colors["\(colorName)4", default: .clear]
          self.bgInvertedContrastLowDefault = colors["\(colorName)7", default: .clear]
          self.bgInvertedContrastLowHovered = colors["\(colorName)6", default: .clear]
          self.bgInvertedContrastLowPressed = colors["\(colorName)5", default: .clear]
          self.onBgInvertedDefault = colors["\(colorName)14", default: .clear]
          self.onBgInvertedHovered = colors["\(colorName)13", default: .clear]
          self.onBgInvertedPressed = colors["\(colorName)12", default: .clear]
          self.onOriginDefault = colors["\(colorName)Light", default: .clear]
          self.onOriginHovered = colors["\(colorName)OnOriginHoveredLight", default: .clear]
          self.onOriginPressed = colors["\(colorName)OnOriginPressedLight", default: .clear]
          self.originDefault = colors["\(colorName)OriginDefaultLight", default: .clear]
          self.originHovered = colors["\(colorName)OriginHoveredLight", default: .clear]
          self.originPressed = colors["\(colorName)OriginPressedLight", default: .clear]

        }
    }
}

struct DesignSystemColorScheme {
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

func getColorSchemeDark(colors: [String: Color]) -> DesignSystemColorScheme {

    var neutralColorsDark: AdaptiveColors {
        .init(.dark, colorName: "neutral", colors: colors)
    }


    var brandColorsDark: AdaptiveColors {
        .init(.dark, colorName: "brand", colors: colors)
    }


    var informationalColorsDark: AdaptiveColors {
        .init(.dark, colorName: "informational", colors: colors)
    }


    var warningColorsDark: AdaptiveColors {
        .init(.dark, colorName: "warning", colors: colors)
    }


    var successfulColorsDark: AdaptiveColors {
        .init(.dark, colorName: "successful", colors: colors)
    }


    var criticalColorsDark: AdaptiveColors {
        .init(.dark, colorName: "critical", colors: colors)
    }


    var yellowColorsDark: AdaptiveColors {
        .init(.dark, colorName: "yellow", colors: colors)
    }


    var orangeColorsDark: AdaptiveColors {
        .init(.dark, colorName: "orange", colors: colors)
    }


    var redColorsDark: AdaptiveColors {
        .init(.dark, colorName: "red", colors: colors)
    }


    var pinkColorsDark: AdaptiveColors {
        .init(.dark, colorName: "pink", colors: colors)
    }


    var violetColorsDark: AdaptiveColors {
        .init(.dark, colorName: "violet", colors: colors)
    }


    var blueColorsDark: AdaptiveColors {
        .init(.dark, colorName: "blue", colors: colors)
    }


    var cyanColorsDark: AdaptiveColors {
        .init(.dark, colorName: "cyan", colors: colors)
    }


    var turquoiseColorsDark: AdaptiveColors {
        .init(.dark, colorName: "turquoise", colors: colors)
    }


    var greenColorsDark: AdaptiveColors {
        .init(.dark, colorName: "green", colors: colors)
    }


    return .init(
        neutral: neutralColorsDark,
        brand: brandColorsDark,
        informational: informationalColorsDark,
        warning: warningColorsDark,
        successful: successfulColorsDark,
        critical: criticalColorsDark,
        yellow: yellowColorsDark,
        orange: orangeColorsDark,
        red: redColorsDark,
        pink: pinkColorsDark,
        violet: violetColorsDark,
        blue: blueColorsDark,
        cyan: cyanColorsDark,
        turquoise: turquoiseColorsDark,
        green: greenColorsDark
    )
}

func getColorSchemeLight(colors: [String: Color]) -> DesignSystemColorScheme {

    var neutralColorsLight: AdaptiveColors {
        .init(.light, colorName: "neutral", colors: colors)
    }


    var brandColorsLight: AdaptiveColors {
        .init(.light, colorName: "brand", colors: colors)
    }


    var informationalColorsLight: AdaptiveColors {
        .init(.light, colorName: "informational", colors: colors)
    }


    var warningColorsLight: AdaptiveColors {
        .init(.light, colorName: "warning", colors: colors)
    }


    var successfulColorsLight: AdaptiveColors {
        .init(.light, colorName: "successful", colors: colors)
    }


    var criticalColorsLight: AdaptiveColors {
        .init(.light, colorName: "critical", colors: colors)
    }


    var yellowColorsLight: AdaptiveColors {
        .init(.light, colorName: "yellow", colors: colors)
    }


    var orangeColorsLight: AdaptiveColors {
        .init(.light, colorName: "orange", colors: colors)
    }


    var redColorsLight: AdaptiveColors {
        .init(.light, colorName: "red", colors: colors)
    }


    var pinkColorsLight: AdaptiveColors {
        .init(.light, colorName: "pink", colors: colors)
    }


    var violetColorsLight: AdaptiveColors {
        .init(.light, colorName: "violet", colors: colors)
    }


    var blueColorsLight: AdaptiveColors {
        .init(.light, colorName: "blue", colors: colors)
    }


    var cyanColorsLight: AdaptiveColors {
        .init(.light, colorName: "cyan", colors: colors)
    }


    var turquoiseColorsLight: AdaptiveColors {
        .init(.light, colorName: "turquoise", colors: colors)
    }


    var greenColorsLight: AdaptiveColors {
        .init(.light, colorName: "green", colors: colors)
    }


    return .init(
        neutral: neutralColorsLight,
        brand: brandColorsLight,
        informational: informationalColorsLight,
        warning: warningColorsLight,
        successful: successfulColorsLight,
        critical: criticalColorsLight,
        yellow: yellowColorsLight,
        orange: orangeColorsLight,
        red: redColorsLight,
        pink: pinkColorsLight,
        violet: violetColorsLight,
        blue: blueColorsLight,
        cyan: cyanColorsLight,
        turquoise: turquoiseColorsLight,
        green: greenColorsLight
    )
}

enum DBColorScheme {
    case light
    case dark
}

