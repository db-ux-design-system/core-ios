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

struct DeutscheBahnThemeTypography {
    let body: Typography
    let headline: Typography
}

let bodyTypographyFunctionalMobile: Typography = .init(
    variant: TypographyVariant.body,
    density: Density.functional,
    device: DeviceType.mobile

)

let headlineTypographyFunctionalMobile: Typography = .init(
    variant: TypographyVariant.headline,
    density: Density.functional,
    device: DeviceType.mobile

)

func getTypographyFunctionalMobile(body: Typography = bodyTypographyFunctionalMobile,
headline: Typography = headlineTypographyFunctionalMobile) -> DeutscheBahnThemeTypography {
    .init(
        body: body,
        headline: headline
    )
}

let bodyTypographyFunctionalTablet: Typography = .init(
    variant: TypographyVariant.body,
    density: Density.functional,
    device: DeviceType.tablet

)

let headlineTypographyFunctionalTablet: Typography = .init(
    variant: TypographyVariant.headline,
    density: Density.functional,
    device: DeviceType.tablet

)

func getTypographyFunctionalTablet(body: Typography = bodyTypographyFunctionalTablet,
headline: Typography = headlineTypographyFunctionalTablet) -> DeutscheBahnThemeTypography {
    .init(
        body: body,
        headline: headline
    )
}

let bodyTypographyRegularMobile: Typography = .init(
    variant: TypographyVariant.body,
    density: Density.regular,
    device: DeviceType.mobile

)

let headlineTypographyRegularMobile: Typography = .init(
    variant: TypographyVariant.headline,
    density: Density.regular,
    device: DeviceType.mobile

)

func getTypographyRegularMobile(body: Typography = bodyTypographyRegularMobile,
headline: Typography = headlineTypographyRegularMobile) -> DeutscheBahnThemeTypography {
    .init(
        body: body,
        headline: headline
    )
}

let bodyTypographyRegularTablet: Typography = .init(
    variant: TypographyVariant.body,
    density: Density.regular,
    device: DeviceType.tablet

)

let headlineTypographyRegularTablet: Typography = .init(
    variant: TypographyVariant.headline,
    density: Density.regular,
    device: DeviceType.tablet

)

func getTypographyRegularTablet(body: Typography = bodyTypographyRegularTablet,
headline: Typography = headlineTypographyRegularTablet) -> DeutscheBahnThemeTypography {
    .init(
        body: body,
        headline: headline
    )
}

let bodyTypographyExpressiveMobile: Typography = .init(
    variant: TypographyVariant.body,
    density: Density.expressive,
    device: DeviceType.mobile

)

let headlineTypographyExpressiveMobile: Typography = .init(
    variant: TypographyVariant.headline,
    density: Density.expressive,
    device: DeviceType.mobile

)

func getTypographyExpressiveMobile(body: Typography = bodyTypographyExpressiveMobile,
headline: Typography = headlineTypographyExpressiveMobile) -> DeutscheBahnThemeTypography {
    .init(
        body: body,
        headline: headline
    )
}

let bodyTypographyExpressiveTablet: Typography = .init(
    variant: TypographyVariant.body,
    density: Density.expressive,
    device: DeviceType.tablet

)

let headlineTypographyExpressiveTablet: Typography = .init(
    variant: TypographyVariant.headline,
    density: Density.expressive,
    device: DeviceType.tablet

)

func getTypographyExpressiveTablet(body: Typography = bodyTypographyExpressiveTablet,
headline: Typography = headlineTypographyExpressiveTablet) -> DeutscheBahnThemeTypography {
    .init(
        body: body,
        headline: headline
    )
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
    init(variant: TypographyVariant, density: Density, device: DeviceType) {
        lineHeight3xs = dbTypography["\(variant)LineHeight\(density.rawValue)\(device.rawValue)3xs", default: 12]
        lineHeight2xs = dbTypography["\(variant)LineHeight\(density.rawValue)\(device.rawValue)2xs", default: 12]
        lineHeightXs = dbTypography["\(variant)LineHeight\(density.rawValue)\(device.rawValue)Xs", default: 12]
        lineHeightSm = dbTypography["\(variant)LineHeight\(density.rawValue)\(device.rawValue)Sm", default: 12]
        lineHeightMd = dbTypography["\(variant)LineHeight\(density.rawValue)\(device.rawValue)Md", default: 12]
        lineHeightLg = dbTypography["\(variant)LineHeight\(density.rawValue)\(device.rawValue)Lg", default: 12]
        lineHeightXl = dbTypography["\(variant)LineHeight\(density.rawValue)\(device.rawValue)Xl", default: 12]
        lineHeight2xl = dbTypography["\(variant)LineHeight\(density.rawValue)\(device.rawValue)2xl", default: 12]
        lineHeight3xl = dbTypography["\(variant)LineHeight\(density.rawValue)\(device.rawValue)3xl", default: 12]
        
        fontSize3xs = dbTypography["\(variant)FontSize\(density.rawValue)\(device.rawValue)3xs", default: 12]
        fontSize2xs = dbTypography["\(variant)FontSize\(density.rawValue)\(device.rawValue)2xs", default: 12]
        fontSizeXs = dbTypography["\(variant)FontSize\(density.rawValue)\(device.rawValue)2xs", default: 12]
        fontSizeSm = dbTypography["\(variant)FontSize\(density.rawValue)\(device.rawValue)Sm", default: 12]
        fontSizeMd = dbTypography["\(variant)FontSize\(density.rawValue)\(device.rawValue)Md", default: 12]
        fontSizeLg = dbTypography["\(variant)FontSize\(density.rawValue)\(device.rawValue)Lg", default: 12]
        fontSizeXl = dbTypography["\(variant)FontSize\(density.rawValue)\(device.rawValue)Xl", default: 12]
        fontSize2xl = dbTypography["\(variant)FontSize\(density.rawValue)\(device.rawValue)2xl", default: 12]
        fontSize3xl = dbTypography["\(variant)FontSize\(density.rawValue)\(device.rawValue)3xl", default: 12]
    }
}
  struct DeutscheBahnThemeFonts{
let h1: Font
let h2: Font
let h3: Font
let h4: Font
let h5: Font
let h6: Font
let body: Font
let body3xl: Font
let body2xl: Font
let bodyXl: Font
let bodyLg: Font
let bodyMd: Font
let bodySm: Font
let bodyXs: Font
let body2xs: Font
let body3xs: Font
}

func getFonts(typo: DeutscheBahnThemeTypography) -> DeutscheBahnThemeFonts { 
    .init(
        h1: DBFont.flex.font(size: typo.headline.fontSizeXl),
        h2: DBFont.flex.font(size: typo.headline.fontSizeLg),
        h3: DBFont.flex.font(size: typo.headline.fontSizeMd),
        h4: DBFont.flex.font(size: typo.headline.fontSizeSm),
        h5: DBFont.flex.font(size: typo.headline.fontSizeXs),
        h6: DBFont.flex.font(size: typo.headline.fontSize2xs),
        body: DBFont.flex.font(size: typo.body.fontSizeMd),
        body3xl: DBFont.flex.font(size: typo.body.fontSize3xl),
        body2xl: DBFont.flex.font(size: typo.body.fontSize2xl),
        bodyXl: DBFont.flex.font(size: typo.body.fontSizeXl),
        bodyLg: DBFont.flex.font(size: typo.body.fontSizeLg),
        bodyMd: DBFont.flex.font(size: typo.body.fontSizeMd),
        bodySm: DBFont.flex.font(size: typo.body.fontSizeSm),
        bodyXs: DBFont.flex.font(size: typo.body.fontSizeXs),
        body2xs: DBFont.flex.font(size: typo.body.fontSize2xs),
        body3xs: DBFont.flex.font(size: typo.body.fontSize3xs)
    )
}

