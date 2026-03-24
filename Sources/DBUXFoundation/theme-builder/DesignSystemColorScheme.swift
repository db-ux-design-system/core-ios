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
    public let bgVibrantDefault: Color
    public let bgVibrantHovered: Color
    public let bgVibrantPressed: Color
    public let onBgVibrantDefault: Color
    public let onBgVibrantHovered: Color
    public let onBgVibrantPressed: Color
    
    init(_ scheme: DSColorScheme, colorName: String, colors: [String: Color]) {
        self.bgBasicLevel1Default = colors["\(colorName)\(scheme == .dark ? "3" : "14")", default: .clear]
        self.bgBasicLevel1Hovered = colors["\(colorName)\(scheme == .dark ? "4" : "13")", default: .clear]
        self.bgBasicLevel1Pressed = colors["\(colorName)\(scheme == .dark ? "5" : "12")", default: .clear]
        self.bgBasicLevel2Default = colors["\(colorName)\(scheme == .dark ? "2" : "13")", default: .clear]
        self.bgBasicLevel2Hovered = colors["\(colorName)\(scheme == .dark ? "3" : "12")", default: .clear]
        self.bgBasicLevel2Pressed = colors["\(colorName)\(scheme == .dark ? "4" : "11")", default: .clear]
        self.bgBasicLevel3Default = colors["\(colorName)\(scheme == .dark ? "1" : "12")", default: .clear]
        self.bgBasicLevel3Hovered = colors["\(colorName)\(scheme == .dark ? "2" : "11")", default: .clear]
        self.bgBasicLevel3Pressed = colors["\(colorName)\(scheme == .dark ? "3" : "10")", default: .clear]
        self.bgBasicTransparentFullDefault = colors["\(colorName)\(scheme == .dark ? "9" : "6")", default: .clear].opacity(1)
        self.bgBasicTransparentSemiDefault = colors["\(colorName)\(scheme == .dark ? "9" : "6")", default: .clear].opacity(0.84)
        self.bgBasicTransparentHovered = colors["\(colorName)\(scheme == .dark ? "9" : "6")", default: .clear].opacity(0.76)
        self.bgBasicTransparentPressed = colors["\(colorName)\(scheme == .dark ? "9" : "6")", default: .clear].opacity(0.68)
        self.onBgBasicEmphasis100Default = colors["\(colorName)\(scheme == .dark ? "12" : "3")", default: .clear]
        self.onBgBasicEmphasis100Hovered = colors["\(colorName)\(scheme == .dark ? "11" : "4")", default: .clear]
        self.onBgBasicEmphasis100Pressed = colors["\(colorName)\(scheme == .dark ? "10" : "5")", default: .clear]
        self.onBgBasicEmphasis90Default = colors["\(colorName)\(scheme == .dark ? "10" : "5")", default: .clear]
        self.onBgBasicEmphasis90Hovered = colors["\(colorName)\(scheme == .dark ? "9" : "6")", default: .clear]
        self.onBgBasicEmphasis90Pressed = colors["\(colorName)\(scheme == .dark ? "8" : "7")", default: .clear]
        self.onBgBasicEmphasis80Default = colors["\(colorName)\(scheme == .dark ? "9" : "6")", default: .clear]
        self.onBgBasicEmphasis80Hovered = colors["\(colorName)\(scheme == .dark ? "8" : "5")", default: .clear]
        self.onBgBasicEmphasis80Pressed = colors["\(colorName)\(scheme == .dark ? "7" : "4")", default: .clear]
        self.onBgBasicEmphasis70Default = colors["\(colorName)\(scheme == .dark ? "8" : "7")", default: .clear]
        self.onBgBasicEmphasis70Hovered = colors["\(colorName)\(scheme == .dark ? "7" : "6")", default: .clear]
        self.onBgBasicEmphasis70Pressed = colors["\(colorName)\(scheme == .dark ? "6" : "5")", default: .clear]
        self.onBgBasicEmphasis60Default = colors["\(colorName)\(scheme == .dark ? "6" : "10")", default: .clear]
        self.onBgBasicEmphasis60Hovered = colors["\(colorName)\(scheme == .dark ? "5" : "9")", default: .clear]
        self.onBgBasicEmphasis60Pressed = colors["\(colorName)\(scheme == .dark ? "4" : "8")", default: .clear]
        self.onBgBasicEmphasis50Default = colors["\(colorName)\(scheme == .dark ? "5" : "9")", default: .clear]
        self.onBgBasicEmphasis50Hovered = colors["\(colorName)\(scheme == .dark ? "4" : "8")", default: .clear]
        self.onBgBasicEmphasis50Pressed = colors["\(colorName)\(scheme == .dark ? "3" : "7")", default: .clear]
        self.bgInvertedContrastMaxDefault = colors["\(colorName)\(scheme == .dark ? "12" : "3")", default: .clear]
        self.bgInvertedContrastMaxHovered = colors["\(colorName)\(scheme == .dark ? "11" : "4")", default: .clear]
        self.bgInvertedContrastMaxPressed = colors["\(colorName)\(scheme == .dark ? "10" : "5")", default: .clear]
        self.bgInvertedContrastHighDefault = colors["\(colorName)\(scheme == .dark ? "9" : "6")", default: .clear]
        self.bgInvertedContrastHighHovered = colors["\(colorName)\(scheme == .dark ? "8" : "5")", default: .clear]
        self.bgInvertedContrastHighPressed = colors["\(colorName)\(scheme == .dark ? "7" : "4")", default: .clear]
        self.bgInvertedContrastLowDefault = colors["\(colorName)\(scheme == .dark ? "8" : "7")", default: .clear]
        self.bgInvertedContrastLowHovered = colors["\(colorName)\(scheme == .dark ? "7" : "6")", default: .clear]
        self.bgInvertedContrastLowPressed = colors["\(colorName)\(scheme == .dark ? "6" : "5")", default: .clear]
        self.onBgInvertedDefault = colors["\(colorName)\(scheme == .dark ? "3" : "14")", default: .clear]
        self.onBgInvertedHovered = colors["\(colorName)\(scheme == .dark ? "4" : "13")", default: .clear]
        self.onBgInvertedPressed = colors["\(colorName)\(scheme == .dark ? "5" : "12")", default: .clear]
        self.onOriginDefault = colors["\(colorName)\(scheme == .dark ? "Dark" : "Light")", default: .clear]
        self.onOriginHovered = colors["\(colorName)OnOriginHovered\(scheme == .dark ? "Dark" : "Light")", default: .clear]
        self.onOriginPressed = colors["\(colorName)OnOriginPressed\(scheme == .dark ? "Dark" : "Light")", default: .clear]
        self.originDefault = colors["\(colorName)OriginDefault\(scheme == .dark ? "Dark" : "Light")", default: .clear]
        self.originHovered = colors["\(colorName)OriginHovered\(scheme == .dark ? "Dark" : "Light")", default: .clear]
        self.originPressed = colors["\(colorName)OriginPressed\(scheme == .dark ? "Dark" : "Light")", default: .clear]
        self.bgVibrantDefault = colors["\(colorName)9", default: .clear]
        self.bgVibrantHovered = colors["\(colorName)12", default: .clear]
        self.bgVibrantPressed = colors["\(colorName)10", default: .clear]
        self.onBgVibrantDefault = colors["\(colorName)1", default: .clear]
        self.onBgVibrantHovered = colors["\(colorName)4", default: .clear]
        self.onBgVibrantPressed = colors["\(colorName)2", default: .clear]
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
