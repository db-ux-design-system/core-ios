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

public struct DSColorVariant {
    public let bgBasicLevel1Default: Color
    public let bgBasicLevel1Hovered: Color
    public let bgBasicLevel1Pressed: Color
    public let bgBasicLevel2Default: Color
    public let bgBasicLevel2Hovered: Color
    public let bgBasicLevel2Pressed: Color
    public let bgBasicLevel3Default: Color
    public let bgBasicLevel3Hovered: Color
    public let bgBasicLevel3Pressed: Color
    public let bgBasicTransparentFullDefault: Color
    public let bgBasicTransparentSemiDefault: Color
    public let bgBasicTransparentHovered: Color
    public let bgBasicTransparentPressed: Color
    public let onBgBasicEmphasis100Default: Color
    public let onBgBasicEmphasis100Hovered: Color
    public let onBgBasicEmphasis100Pressed: Color
    public let onBgBasicEmphasis90Default: Color
    public let onBgBasicEmphasis90Hovered: Color
    public let onBgBasicEmphasis90Pressed: Color
    public let onBgBasicEmphasis80Default: Color
    public let onBgBasicEmphasis80Hovered: Color
    public let onBgBasicEmphasis80Pressed: Color
    public let onBgBasicEmphasis70Default: Color
    public let onBgBasicEmphasis70Hovered: Color
    public let onBgBasicEmphasis70Pressed: Color
    public let onBgBasicEmphasis60Default: Color
    public let onBgBasicEmphasis60Hovered: Color
    public let onBgBasicEmphasis60Pressed: Color
    public let onBgBasicEmphasis50Default: Color
    public let onBgBasicEmphasis50Hovered: Color
    public let onBgBasicEmphasis50Pressed: Color
    public let bgInvertedContrastMaxDefault: Color
    public let bgInvertedContrastMaxHovered: Color
    public let bgInvertedContrastMaxPressed: Color
    public let bgInvertedContrastHighDefault: Color
    public let bgInvertedContrastHighHovered: Color
    public let bgInvertedContrastHighPressed: Color
    public let bgInvertedContrastLowDefault: Color
    public let bgInvertedContrastLowHovered: Color
    public let bgInvertedContrastLowPressed: Color
    public let onBgInvertedDefault: Color
    public let onBgInvertedHovered: Color
    public let onBgInvertedPressed: Color
    public let onOriginDefault: Color
    public let onOriginHovered: Color
    public let onOriginPressed: Color
    public let originDefault: Color
    public let originHovered: Color
    public let originPressed: Color

    init(_ scheme: DSColorScheme, colorName: String, colors: [String: Color]) {
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

public struct DesignSystemColorScheme {
    public let neutral: DSColorVariant
    public let brand: DSColorVariant
    public let informational: DSColorVariant
    public let warning: DSColorVariant
    public let successful: DSColorVariant
    public let critical: DSColorVariant
    public let yellow: DSColorVariant
    public let orange: DSColorVariant
    public let red: DSColorVariant
    public let pink: DSColorVariant
    public let violet: DSColorVariant
    public let blue: DSColorVariant
    public let cyan: DSColorVariant
    public let turquoise: DSColorVariant
    public let green: DSColorVariant

    static func getColorSchemeDark(colors: [String: Color]) -> DesignSystemColorScheme {

        var neutralColorsDark: DSColorVariant {
            .init(.dark, colorName: "neutral", colors: colors)
        }

        var brandColorsDark: DSColorVariant {
            .init(.dark, colorName: "brand", colors: colors)
        }

        var informationalColorsDark: DSColorVariant {
            .init(.dark, colorName: "informational", colors: colors)
        }

        var warningColorsDark: DSColorVariant {
            .init(.dark, colorName: "warning", colors: colors)
        }

        var successfulColorsDark: DSColorVariant {
            .init(.dark, colorName: "successful", colors: colors)
        }

        var criticalColorsDark: DSColorVariant {
            .init(.dark, colorName: "critical", colors: colors)
        }

        var yellowColorsDark: DSColorVariant {
            .init(.dark, colorName: "yellow", colors: colors)
        }

        var orangeColorsDark: DSColorVariant {
            .init(.dark, colorName: "orange", colors: colors)
        }

        var redColorsDark: DSColorVariant {
            .init(.dark, colorName: "red", colors: colors)
        }

        var pinkColorsDark: DSColorVariant {
            .init(.dark, colorName: "pink", colors: colors)
        }

        var violetColorsDark: DSColorVariant {
            .init(.dark, colorName: "violet", colors: colors)
        }

        var blueColorsDark: DSColorVariant {
            .init(.dark, colorName: "blue", colors: colors)
        }

        var cyanColorsDark: DSColorVariant {
            .init(.dark, colorName: "cyan", colors: colors)
        }

        var turquoiseColorsDark: DSColorVariant {
            .init(.dark, colorName: "turquoise", colors: colors)
        }

        var greenColorsDark: DSColorVariant {
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

    static func getColorSchemeLight(colors: [String: Color]) -> DesignSystemColorScheme {

        var neutralColorsLight: DSColorVariant {
            .init(.light, colorName: "neutral", colors: colors)
        }

        var brandColorsLight: DSColorVariant {
            .init(.light, colorName: "brand", colors: colors)
        }

        var informationalColorsLight: DSColorVariant {
            .init(.light, colorName: "informational", colors: colors)
        }

        var warningColorsLight: DSColorVariant {
            .init(.light, colorName: "warning", colors: colors)
        }

        var successfulColorsLight: DSColorVariant {
            .init(.light, colorName: "successful", colors: colors)
        }

        var criticalColorsLight: DSColorVariant {
            .init(.light, colorName: "critical", colors: colors)
        }

        var yellowColorsLight: DSColorVariant {
            .init(.light, colorName: "yellow", colors: colors)
        }

        var orangeColorsLight: DSColorVariant {
            .init(.light, colorName: "orange", colors: colors)
        }

        var redColorsLight: DSColorVariant {
            .init(.light, colorName: "red", colors: colors)
        }

        var pinkColorsLight: DSColorVariant {
            .init(.light, colorName: "pink", colors: colors)
        }

        var violetColorsLight: DSColorVariant {
            .init(.light, colorName: "violet", colors: colors)
        }

        var blueColorsLight: DSColorVariant {
            .init(.light, colorName: "blue", colors: colors)
        }

        var cyanColorsLight: DSColorVariant {
            .init(.light, colorName: "cyan", colors: colors)
        }

        var turquoiseColorsLight: DSColorVariant {
            .init(.light, colorName: "turquoise", colors: colors)
        }

        var greenColorsLight: DSColorVariant {
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

}


enum DSColorScheme {
    case light
    case dark
}

