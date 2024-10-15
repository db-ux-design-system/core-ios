import SwiftUI
struct Typography {
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
    let body: Typography
    let headline: Typography
}

extension DesignSystemTypography {
    private static func bodyTypographyFunctionalMobile(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.body,
        density: Density.functional,
        device: DeviceType.mobile,
        sizes: sizes

      )
    }

    private static func headlineTypographyFunctionalMobile(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.headline,
        density: Density.functional,
        device: DeviceType.mobile,
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
    private static func bodyTypographyFunctionalTablet(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.body,
        density: Density.functional,
        device: DeviceType.tablet,
        sizes: sizes

      )
    }

    private static func headlineTypographyFunctionalTablet(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.headline,
        density: Density.functional,
        device: DeviceType.tablet,
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
    private static func bodyTypographyRegularMobile(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.body,
        density: Density.regular,
        device: DeviceType.mobile,
        sizes: sizes

      )
    }

    private static func headlineTypographyRegularMobile(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.headline,
        density: Density.regular,
        device: DeviceType.mobile,
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
    private static func bodyTypographyRegularTablet(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.body,
        density: Density.regular,
        device: DeviceType.tablet,
        sizes: sizes

      )
    }

    private static func headlineTypographyRegularTablet(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.headline,
        density: Density.regular,
        device: DeviceType.tablet,
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
    private static func bodyTypographyExpressiveMobile(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.body,
        density: Density.expressive,
        device: DeviceType.mobile,
        sizes: sizes

      )
    }

    private static func headlineTypographyExpressiveMobile(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.headline,
        density: Density.expressive,
        device: DeviceType.mobile,
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
    private static func bodyTypographyExpressiveTablet(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.body,
        density: Density.expressive,
        device: DeviceType.tablet,
        sizes: sizes

      )
    }

    private static func headlineTypographyExpressiveTablet(sizes: [String: CGFloat]) -> Typography { .init(
        variant: TypographyVariant.headline,
        density: Density.expressive,
        device: DeviceType.tablet,
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


enum DeviceType: String {
    case mobile = "Mobile"
    case tablet = "Tablet"
}

enum TypographyVariant: String {
    case body
    case headline
}

extension Typography {
    init(variant: TypographyVariant, density: Density, device: DeviceType, sizes: [String: CGFloat]) {
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

enum DesignSystemTextStyle {
    case h1
    case h2
    case h3
    case h4
    case h5
    case h6
    case body
    case body3xl
    case body2xl
    case bodyXl
    case bodyLg
    case bodyMd
    case bodySm
    case bodyXs
    case body2xs
    case body3xs
}

public struct Blub {
    let font: Font
    let uiFont: UIFont
    let lineHeight: CGFloat
    let fontWeight: Font.Weight
}

struct DesignSystemFonts{
    let h1: Blub
    let h2: Font
    let h3: Font
    let h4: Font
    let h5: Font
    let h6: Font
    let body: Font
    let body3xl: Font
    let body2xl: Font
    let bodyXl: Font
    let bodyLg: Blub
    let bodyMd: Font
    let bodySm: Font
    let bodyXs: Font
    let body2xs: Font
    let body3xs: Font


    static func getFonts(typo: DesignSystemTypography) -> DesignSystemFonts {
        .init(
            h1: .init(font: DBFont.dbFlex.font(size: typo.headline.fontSizeXl), uiFont: DBFont.dbFlex.uiFont(size: typo.headline.fontSizeXl), lineHeight: typo.headline.lineHeightXl, fontWeight: .black),
            h2: DBFont.dbFlex.font(size: typo.headline.fontSizeLg),
            h3: DBFont.dbFlex.font(size: typo.headline.fontSizeMd).weight(.black),
            h4: DBFont.dbFlex.font(size: typo.headline.fontSizeSm).weight(.black),
            h5: DBFont.dbFlex.font(size: typo.headline.fontSizeXs).weight(.black),
            h6: DBFont.dbFlex.font(size: typo.headline.fontSize2xs).weight(.black),
            body: DBFont.dbFlex.font(size: typo.body.fontSizeMd).weight(.regular),
            body3xl: DBFont.dbFlex.font(size: typo.body.fontSize3xl).weight(.regular),
            body2xl: DBFont.dbFlex.font(size: typo.body.fontSize2xl).weight(.regular),
            bodyXl: DBFont.dbFlex.font(size: typo.body.fontSizeXl).weight(.regular),
            bodyLg: .init(font: DBFont.dbFlex.font(size: typo.body.fontSizeLg), uiFont: DBFont.dbFlex.uiFont(size: typo.body.fontSizeLg), lineHeight: typo.body.lineHeightLg, fontWeight: .regular),
            bodyMd: DBFont.dbFlex.font(size: typo.body.fontSizeMd).weight(.regular),
            bodySm: DBFont.dbFlex.font(size: typo.body.fontSizeSm).weight(.regular),
            bodyXs: DBFont.dbFlex.font(size: typo.body.fontSizeXs).weight(.regular),
            body2xs: DBFont.dbFlex.font(size: typo.body.fontSize2xs).weight(.regular),
            body3xs: DBFont.dbFlex.font(size: typo.body.fontSize3xs).weight(.regular)
        )
    }
}

struct TextStyleViewModifier: ViewModifier {
    let font: Blub
    
    func body(content: Content) -> some View {
        print("UI lineHeight: \(font.uiFont.lineHeight)")
        print("lineHeight: \(font.lineHeight)")
        return content
            .font(font.font)
            .fontWeight(font.fontWeight)
            .lineSpacing(font.lineHeight - font.uiFont.lineHeight)
            .padding(.vertical, (font.lineHeight - font.uiFont.lineHeight) / 2)
    }
}

extension View {
    public func dbTextStyle(_ font: Blub) -> some View {
        modifier(TextStyleViewModifier(font: font))
    }
}
