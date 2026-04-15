import SwiftUI

public struct BasicColor {
    public var text: TextColor
    public var icon: IconColor
    public var border: BorderColor
    public var background: BackgroundColor
}

public struct InvertedBackgroundColor {
    public var contrastMax: StateColor
    public var contrastHigh: StateColor
    public var contrastLow: StateColor
}

public struct InvertedColor {
    public var background: InvertedBackgroundColor
    public var onBackground: StateColor
}

public struct OriginColor {
    public var origin: StateColor
    public var onOrigin: Color
}

public struct TextColor {
    public var `default`: StateColor
    public var emphasis100: StateColor
    public var emphasis90: StateColor
    public var emphasis80: StateColor
}

public struct IconColor {
    public var `default`: StateColor
    public var emphasis100: StateColor
    public var emphasis90: StateColor
    public var emphasis80: StateColor
    public var emphasis70: StateColor
}

public struct BorderColor {
    public var `default`: StateColor
    public var emphasis100: StateColor
    public var emphasis70: StateColor
    public var emphasis60: Color
    public var emphasis50: Color
}

public struct BackgroundColor {
    public var transparent: TransparentColor
    public var level1: StateColor
    public var level2: StateColor
    public var level3: StateColor
}

public struct TransparentColor {
    public var full: StateColor
    public var semi: StateColor
}

public struct StateColor {
    public var `default`: Color
    public var hovered: Color
    public var pressed: Color
}

extension StateColor {
    public func colorForPressed(_ pressed: Bool) -> Color {
        if pressed {
            return self.pressed
        } else {
            return self.default
        }
    }
}

extension DSColorVariant {
    
    public var basic: BasicColor {
        .init(
            text: .init(
                default: .init(
                    default: onBgBasicEmphasis100Default,
                    hovered: onBgBasicEmphasis100Hovered,
                    pressed: onBgBasicEmphasis100Pressed
                ),
                emphasis100: .init(
                    default: onBgBasicEmphasis100Default,
                    hovered: onBgBasicEmphasis100Hovered,
                    pressed: onBgBasicEmphasis100Pressed
                ),
                emphasis90: .init(
                    default: onBgBasicEmphasis80Default,
                    hovered: onBgBasicEmphasis80Hovered,
                    pressed: onBgBasicEmphasis80Pressed
                ),
                emphasis80: .init(
                    default: onBgBasicEmphasis80Default,
                    hovered: onBgBasicEmphasis80Hovered,
                    pressed: onBgBasicEmphasis80Pressed
                )
            ),
            icon: .init(
                default: .init(
                    default: onBgBasicEmphasis70Default,
                    hovered: onBgBasicEmphasis70Hovered,
                    pressed: onBgBasicEmphasis70Pressed
                ),
                emphasis100: .init(
                    default: onBgBasicEmphasis100Default,
                    hovered: onBgBasicEmphasis100Hovered,
                    pressed: onBgBasicEmphasis100Pressed
                ),
                emphasis90: .init(
                    default: onBgBasicEmphasis90Default,
                    hovered: onBgBasicEmphasis90Hovered,
                    pressed: onBgBasicEmphasis90Pressed
                ),
                emphasis80: .init(
                    default: onBgBasicEmphasis80Default,
                    hovered: onBgBasicEmphasis80Hovered,
                    pressed: onBgBasicEmphasis80Pressed
                ),
                emphasis70: .init(
                    default: onBgBasicEmphasis70Default,
                    hovered: onBgBasicEmphasis70Hovered,
                    pressed: onBgBasicEmphasis70Pressed
                )
            ),
            border: .init(
                default: .init(
                    default: onBgBasicEmphasis60Default,
                    hovered: onBgBasicEmphasis60Default,
                    pressed: onBgBasicEmphasis60Default
                ),
                emphasis100: .init(
                    default: onBgBasicEmphasis100Default,
                    hovered: onBgBasicEmphasis100Hovered,
                    pressed: onBgBasicEmphasis100Pressed
                ),
                emphasis70: .init(
                    default: onBgBasicEmphasis70Default,
                    hovered: onBgBasicEmphasis70Hovered,
                    pressed: onBgBasicEmphasis70Pressed
                ),
                emphasis60: onBgBasicEmphasis60Default,
                emphasis50: onBgBasicEmphasis50Default
            ),
            background: .init(
                transparent: .init(
                    full: .init(
                        default: bgBasicTransparentFullDefault,
                        hovered: bgBasicTransparentFullHovered,
                        pressed: bgBasicTransparentFullPressed
                    ),
                    semi: .init(
                        default: bgBasicTransparentSemiDefault,
                        hovered: bgBasicTransparentSemiHovered,
                        pressed: bgBasicTransparentSemiPressed
                    )
                ),
                level1: .init(
                    default: bgBasicLevel1Default,
                    hovered: bgBasicLevel1Hovered,
                    pressed: bgBasicLevel1Pressed
                ),
                level2: .init(
                    default: bgBasicLevel2Default,
                    hovered: bgBasicLevel2Hovered,
                    pressed: bgBasicLevel2Pressed
                ),
                level3: .init(
                    default: bgBasicLevel3Default,
                    hovered: bgBasicLevel3Hovered,
                    pressed: bgBasicLevel3Pressed
                )
            )
        )
    }
    
    public var inverted: InvertedColor {
        .init(
            background: .init(
                contrastMax: .init(
                    default: bgInvertedContrastMaxDefault,
                    hovered: bgInvertedContrastMaxHovered,
                    pressed: bgInvertedContrastMaxPressed
                ),
                contrastHigh: .init(
                    default: bgInvertedContrastHighDefault,
                    hovered: bgInvertedContrastHighHovered,
                    pressed: bgInvertedContrastHighPressed
                ),
                contrastLow: .init(
                    default: bgInvertedContrastLowDefault,
                    hovered: bgInvertedContrastLowHovered,
                    pressed: bgInvertedContrastLowPressed
                )
            ),
            onBackground: .init(
                default: onBgInvertedDefault,
                hovered: onBgInvertedHovered,
                pressed: onBgInvertedPressed
            )
        )
    }
    
    public var origin: OriginColor {
        .init(
            origin: .init(
                default: originDefault,
                hovered: originHovered,
                pressed: originPressed
            ),
            onOrigin: onOriginDefault
        )
    }
}
