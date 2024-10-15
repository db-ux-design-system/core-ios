import SwiftUI

struct DSTypography {
    let lineHeight3xs: CGFloat
    let lineHeight2xs: CGFloat
    let lineHeightXs: CGFloat
    let lineHeightSm: CGFloat
    let lineHeightMd: CGFloat
    let lineHeightLg: CGFloat
    let lineHeightXl: CGFloat
    let lineHeight2xl: CGFloat
    let lineHeight3xl: CGFloat
    let fontSize3xs: CGFloat
    let fontSize2xs: CGFloat
    let fontSizeXs: CGFloat
    let fontSizeSm: CGFloat
    let fontSizeMd: CGFloat
    let fontSizeLg: CGFloat
    let fontSizeXl: CGFloat
    let fontSize2xl: CGFloat
    let fontSize3xl: CGFloat
}

struct DesignSystemTypography {
    let body: DSTypography
    let headline: DSTypography
}

extension DesignSystemTypography {
    private static func bodyTypographyFunctionalMobile(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.body,
        density: DSDensity.functional,
        device: DSDeviceType.mobile,
        sizes: sizes

      )
    }

    private static func headlineTypographyFunctionalMobile(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.headline,
        density: DSDensity.functional,
        device: DSDeviceType.mobile,
        sizes: sizes

      )
    }

    static func getTypographyFunctionalMobile(sizes: [String: CGFloat]) -> DesignSystemTypography {
    .init(
        body: bodyTypographyFunctionalMobile(sizes: sizes),
        headline: headlineTypographyFunctionalMobile(sizes: sizes)
        )
    }
}

extension DesignSystemTypography {
    private static func bodyTypographyFunctionalTablet(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.body,
        density: DSDensity.functional,
        device: DSDeviceType.tablet,
        sizes: sizes

      )
    }

    private static func headlineTypographyFunctionalTablet(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.headline,
        density: DSDensity.functional,
        device: DSDeviceType.tablet,
        sizes: sizes

      )
    }

    static func getTypographyFunctionalTablet(sizes: [String: CGFloat]) -> DesignSystemTypography {
    .init(
        body: bodyTypographyFunctionalTablet(sizes: sizes),
        headline: headlineTypographyFunctionalTablet(sizes: sizes)
        )
    }
}

extension DesignSystemTypography {
    private static func bodyTypographyRegularMobile(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.body,
        density: DSDensity.regular,
        device: DSDeviceType.mobile,
        sizes: sizes

      )
    }

    private static func headlineTypographyRegularMobile(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.headline,
        density: DSDensity.regular,
        device: DSDeviceType.mobile,
        sizes: sizes

      )
    }

    static func getTypographyRegularMobile(sizes: [String: CGFloat]) -> DesignSystemTypography {
    .init(
        body: bodyTypographyRegularMobile(sizes: sizes),
        headline: headlineTypographyRegularMobile(sizes: sizes)
        )
    }
}

extension DesignSystemTypography {
    private static func bodyTypographyRegularTablet(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.body,
        density: DSDensity.regular,
        device: DSDeviceType.tablet,
        sizes: sizes

      )
    }

    private static func headlineTypographyRegularTablet(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.headline,
        density: DSDensity.regular,
        device: DSDeviceType.tablet,
        sizes: sizes

      )
    }

    static func getTypographyRegularTablet(sizes: [String: CGFloat]) -> DesignSystemTypography {
    .init(
        body: bodyTypographyRegularTablet(sizes: sizes),
        headline: headlineTypographyRegularTablet(sizes: sizes)
        )
    }
}

extension DesignSystemTypography {
    private static func bodyTypographyExpressiveMobile(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.body,
        density: DSDensity.expressive,
        device: DSDeviceType.mobile,
        sizes: sizes

      )
    }

    private static func headlineTypographyExpressiveMobile(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.headline,
        density: DSDensity.expressive,
        device: DSDeviceType.mobile,
        sizes: sizes

      )
    }

    static func getTypographyExpressiveMobile(sizes: [String: CGFloat]) -> DesignSystemTypography {
    .init(
        body: bodyTypographyExpressiveMobile(sizes: sizes),
        headline: headlineTypographyExpressiveMobile(sizes: sizes)
        )
    }
}

extension DesignSystemTypography {
    private static func bodyTypographyExpressiveTablet(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.body,
        density: DSDensity.expressive,
        device: DSDeviceType.tablet,
        sizes: sizes

      )
    }

    private static func headlineTypographyExpressiveTablet(sizes: [String: CGFloat]) -> DSTypography { .init(
        variant: DSTypographyVariant.headline,
        density: DSDensity.expressive,
        device: DSDeviceType.tablet,
        sizes: sizes

      )
    }

    static func getTypographyExpressiveTablet(sizes: [String: CGFloat]) -> DesignSystemTypography {
    .init(
        body: bodyTypographyExpressiveTablet(sizes: sizes),
        headline: headlineTypographyExpressiveTablet(sizes: sizes)
        )
    }
}


enum DSDeviceType: String {
    case mobile = "Mobile"
    case tablet = "Tablet"
}

enum DSTypographyVariant: String {
    case body
    case headline
}

extension DSTypography {
    init(variant: DSTypographyVariant, density: DSDensity, device: DSDeviceType, sizes: [String: CGFloat]) {
        lineHeight3xs = sizes["\(variant)LineHeight\(density.rawValue)\(device.rawValue)3xs", default: 12]
        lineHeight2xs = sizes["\(variant)LineHeight\(density.rawValue)\(device.rawValue)2xs", default: 12]
        lineHeightXs = sizes["\(variant)LineHeight\(density.rawValue)\(device.rawValue)Xs", default: 12]
        lineHeightSm = sizes["\(variant)LineHeight\(density.rawValue)\(device.rawValue)Sm", default: 12]
        lineHeightMd = sizes["\(variant)LineHeight\(density.rawValue)\(device.rawValue)Md", default: 12]
        lineHeightLg = sizes["\(variant)LineHeight\(density.rawValue)\(device.rawValue)Lg", default: 12]
        lineHeightXl = sizes["\(variant)LineHeight\(density.rawValue)\(device.rawValue)Xl", default: 12]
        lineHeight2xl = sizes["\(variant)LineHeight\(density.rawValue)\(device.rawValue)2xl", default: 12]
        lineHeight3xl = sizes["\(variant)LineHeight\(density.rawValue)\(device.rawValue)3xl", default: 12]
        
        fontSize3xs = sizes["\(variant)FontSize\(density.rawValue)\(device.rawValue)3xs", default: 12]
        fontSize2xs = sizes["\(variant)FontSize\(density.rawValue)\(device.rawValue)2xs", default: 12]
        fontSizeXs = sizes["\(variant)FontSize\(density.rawValue)\(device.rawValue)2xs", default: 12]
        fontSizeSm = sizes["\(variant)FontSize\(density.rawValue)\(device.rawValue)Sm", default: 12]
        fontSizeMd = sizes["\(variant)FontSize\(density.rawValue)\(device.rawValue)Md", default: 12]
        fontSizeLg = sizes["\(variant)FontSize\(density.rawValue)\(device.rawValue)Lg", default: 12]
        fontSizeXl = sizes["\(variant)FontSize\(density.rawValue)\(device.rawValue)Xl", default: 12]
        fontSize2xl = sizes["\(variant)FontSize\(density.rawValue)\(device.rawValue)2xl", default: 12]
        fontSize3xl = sizes["\(variant)FontSize\(density.rawValue)\(device.rawValue)3xl", default: 12]
    }
}

public struct DSTextStyle {
    public let font: Font
    let uiFont: UIFont
    public let lineHeight: CGFloat
    public let fontWeight: Font.Weight
}

public struct DesignSystemTextStyles{
    public let h1: DSTextStyle
    public let h2: DSTextStyle
    public let h3: DSTextStyle
    public let h4: DSTextStyle
    public let h5: DSTextStyle
    public let h6: DSTextStyle
    public let body: DSTextStyle
    public let body3xl: DSTextStyle
    public let body2xl: DSTextStyle
    public let bodyXl: DSTextStyle
    public let bodyLg: DSTextStyle
    public let bodyMd: DSTextStyle
    public let bodySm: DSTextStyle
    public let bodyXs: DSTextStyle
    public let body2xs: DSTextStyle
    public let body3xs: DSTextStyle


    static func getFonts(typo: DesignSystemTypography) -> DesignSystemTextStyles { 
      .init(
            h1: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.headline.fontSizeXl), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.headline.fontSizeXl), lineHeight: typo.headline.lineHeightXl, fontWeight: .black),
            h2: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.headline.fontSizeLg), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.headline.fontSizeLg), lineHeight: typo.headline.lineHeightLg, fontWeight: .black),
            h3: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.headline.fontSizeMd), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.headline.fontSizeMd), lineHeight: typo.headline.lineHeightMd, fontWeight: .black),
            h4: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.headline.fontSizeSm), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.headline.fontSizeSm), lineHeight: typo.headline.lineHeightSm, fontWeight: .black),
            h5: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.headline.fontSizeXs), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.headline.fontSizeXs), lineHeight: typo.headline.lineHeightXs, fontWeight: .black),
            h6: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.headline.fontSize2xs), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.headline.fontSize2xs), lineHeight: typo.headline.lineHeight2xs, fontWeight: .black),
            body: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.body.fontSizeMd), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.body.fontSizeMd), lineHeight: typo.body.lineHeightMd, fontWeight: .regular),
            body3xl: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.body.fontSize3xl), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.body.fontSize3xl), lineHeight: typo.body.lineHeight3xl, fontWeight: .regular),
            body2xl: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.body.fontSize2xl), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.body.fontSize2xl), lineHeight: typo.body.lineHeight2xl, fontWeight: .regular),
            bodyXl: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.body.fontSizeXl), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.body.fontSizeXl), lineHeight: typo.body.lineHeightXl, fontWeight: .regular),
            bodyLg: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.body.fontSizeLg), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.body.fontSizeLg), lineHeight: typo.body.lineHeightLg, fontWeight: .regular),
            bodyMd: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.body.fontSizeMd), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.body.fontSizeMd), lineHeight: typo.body.lineHeightMd, fontWeight: .regular),
            bodySm: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.body.fontSizeSm), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.body.fontSizeSm), lineHeight: typo.body.lineHeightSm, fontWeight: .regular),
            bodyXs: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.body.fontSizeXs), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.body.fontSizeXs), lineHeight: typo.body.lineHeightXs, fontWeight: .regular),
            body2xs: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.body.fontSize2xs), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.body.fontSize2xs), lineHeight: typo.body.lineHeight2xs, fontWeight: .regular),
            body3xs: .init(font: DSFont.dbNeoScreenFlex.font(size: typo.body.fontSize3xs), uiFont: DSFont.dbNeoScreenFlex.uiFont(size: typo.body.fontSize3xs), lineHeight: typo.body.lineHeight3xs, fontWeight: .regular)
        )
    }
}

struct TextStyleViewModifier: ViewModifier {
    let font: DSTextStyle
    
    func body(content: Content) -> some View {
        content
            .font(font.font)
            .fontWeight(font.fontWeight)
            .lineSpacing(font.lineHeight - font.uiFont.lineHeight)
            .padding(.vertical, (font.lineHeight - font.uiFont.lineHeight) / 2)
    }
}

extension View {
    public func dsTextStyle(_ font: DSTextStyle) -> some View {
        modifier(TextStyleViewModifier(font: font))
    }
}
