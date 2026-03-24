import SwiftUI

protocol DSDimensions {
    var spacingResponsiveRegularTablet3xs: CGFloat { get }
    var spacingResponsiveRegularTablet2xs: CGFloat { get }
    var spacingResponsiveRegularTabletXs: CGFloat { get }
    var spacingResponsiveRegularTabletSm: CGFloat { get }
    var spacingResponsiveRegularTabletMd: CGFloat { get }
    var spacingResponsiveRegularTabletLg: CGFloat { get }
    var spacingResponsiveRegularTabletXl: CGFloat { get }
    var spacingResponsiveRegularTablet2xl: CGFloat { get }
    var spacingResponsiveRegularTablet3xl: CGFloat { get }
    var spacingResponsiveRegularMobile3xs: CGFloat { get }
    var spacingResponsiveRegularMobile2xs: CGFloat { get }
    var spacingResponsiveRegularMobileXs: CGFloat { get }
    var spacingResponsiveRegularMobileSm: CGFloat { get }
    var spacingResponsiveRegularMobileMd: CGFloat { get }
    var spacingResponsiveRegularMobileLg: CGFloat { get }
    var spacingResponsiveRegularMobileXl: CGFloat { get }
    var spacingResponsiveRegularMobile2xl: CGFloat { get }
    var spacingResponsiveRegularMobile3xl: CGFloat { get }
    var spacingResponsiveFunctionalTablet3xs: CGFloat { get }
    var spacingResponsiveFunctionalTablet2xs: CGFloat { get }
    var spacingResponsiveFunctionalTabletXs: CGFloat { get }
    var spacingResponsiveFunctionalTabletSm: CGFloat { get }
    var spacingResponsiveFunctionalTabletMd: CGFloat { get }
    var spacingResponsiveFunctionalTabletLg: CGFloat { get }
    var spacingResponsiveFunctionalTabletXl: CGFloat { get }
    var spacingResponsiveFunctionalTablet2xl: CGFloat { get }
    var spacingResponsiveFunctionalTablet3xl: CGFloat { get }
    var spacingResponsiveFunctionalMobile3xs: CGFloat { get }
    var spacingResponsiveFunctionalMobile2xs: CGFloat { get }
    var spacingResponsiveFunctionalMobileXs: CGFloat { get }
    var spacingResponsiveFunctionalMobileSm: CGFloat { get }
    var spacingResponsiveFunctionalMobileMd: CGFloat { get }
    var spacingResponsiveFunctionalMobileLg: CGFloat { get }
    var spacingResponsiveFunctionalMobileXl: CGFloat { get }
    var spacingResponsiveFunctionalMobile2xl: CGFloat { get }
    var spacingResponsiveFunctionalMobile3xl: CGFloat { get }
    var spacingResponsiveExpressiveTablet3xs: CGFloat { get }
    var spacingResponsiveExpressiveTablet2xs: CGFloat { get }
    var spacingResponsiveExpressiveTabletXs: CGFloat { get }
    var spacingResponsiveExpressiveTabletSm: CGFloat { get }
    var spacingResponsiveExpressiveTabletMd: CGFloat { get }
    var spacingResponsiveExpressiveTabletLg: CGFloat { get }
    var spacingResponsiveExpressiveTabletXl: CGFloat { get }
    var spacingResponsiveExpressiveTablet2xl: CGFloat { get }
    var spacingResponsiveExpressiveTablet3xl: CGFloat { get }
    var spacingResponsiveExpressiveMobile3xs: CGFloat { get }
    var spacingResponsiveExpressiveMobile2xs: CGFloat { get }
    var spacingResponsiveExpressiveMobileXs: CGFloat { get }
    var spacingResponsiveExpressiveMobileSm: CGFloat { get }
    var spacingResponsiveExpressiveMobileMd: CGFloat { get }
    var spacingResponsiveExpressiveMobileLg: CGFloat { get }
    var spacingResponsiveExpressiveMobileXl: CGFloat { get }
    var spacingResponsiveExpressiveMobile2xl: CGFloat { get }
    var spacingResponsiveExpressiveMobile3xl: CGFloat { get }
    var spacingFixedRegular3xs: CGFloat { get }
    var spacingFixedRegular2xs: CGFloat { get }
    var spacingFixedRegularXs: CGFloat { get }
    var spacingFixedRegularSm: CGFloat { get }
    var spacingFixedRegularMd: CGFloat { get }
    var spacingFixedRegularLg: CGFloat { get }
    var spacingFixedRegularXl: CGFloat { get }
    var spacingFixedRegular2xl: CGFloat { get }
    var spacingFixedRegular3xl: CGFloat { get }
    var spacingFixedFunctional3xs: CGFloat { get }
    var spacingFixedFunctional2xs: CGFloat { get }
    var spacingFixedFunctionalXs: CGFloat { get }
    var spacingFixedFunctionalSm: CGFloat { get }
    var spacingFixedFunctionalMd: CGFloat { get }
    var spacingFixedFunctionalLg: CGFloat { get }
    var spacingFixedFunctionalXl: CGFloat { get }
    var spacingFixedFunctional2xl: CGFloat { get }
    var spacingFixedFunctional3xl: CGFloat { get }
    var spacingFixedExpressive3xs: CGFloat { get }
    var spacingFixedExpressive2xs: CGFloat { get }
    var spacingFixedExpressiveXs: CGFloat { get }
    var spacingFixedExpressiveSm: CGFloat { get }
    var spacingFixedExpressiveMd: CGFloat { get }
    var spacingFixedExpressiveLg: CGFloat { get }
    var spacingFixedExpressiveXl: CGFloat { get }
    var spacingFixedExpressive2xl: CGFloat { get }
    var spacingFixedExpressive3xl: CGFloat { get }
    var sizingFixedMobileHeader: CGFloat { get }
    var sizingRegular3xl: CGFloat { get }
    var sizingRegular2xl: CGFloat { get }
    var sizingRegularXl: CGFloat { get }
    var sizingRegularLg: CGFloat { get }
    var sizingRegularMd: CGFloat { get }
    var sizingRegularSm: CGFloat { get }
    var sizingRegularXs: CGFloat { get }
    var sizingRegular2xs: CGFloat { get }
    var sizingRegular3xs: CGFloat { get }
    var sizingFunctional3xs: CGFloat { get }
    var sizingFunctional2xs: CGFloat { get }
    var sizingFunctionalXs: CGFloat { get }
    var sizingFunctionalSm: CGFloat { get }
    var sizingFunctionalMd: CGFloat { get }
    var sizingFunctionalLg: CGFloat { get }
    var sizingFunctionalXl: CGFloat { get }
    var sizingFunctional2xl: CGFloat { get }
    var sizingFunctional3xl: CGFloat { get }
    var sizingExpressive3xs: CGFloat { get }
    var sizingExpressive2xs: CGFloat { get }
    var sizingExpressiveXs: CGFloat { get }
    var sizingExpressiveSm: CGFloat { get }
    var sizingExpressiveMd: CGFloat { get }
    var sizingExpressiveLg: CGFloat { get }
    var sizingExpressiveXl: CGFloat { get }
    var sizingExpressive2xl: CGFloat { get }
    var sizingExpressive3xl: CGFloat { get }
    var borderHeight3xs: CGFloat { get }
    var borderHeight2xs: CGFloat { get }
    var borderHeightXs: CGFloat { get }
    var borderHeightSm: CGFloat { get }
    var borderHeightMd: CGFloat { get }
    var borderHeightLg: CGFloat { get }
    var borderHeightXl: CGFloat { get }
    var borderHeight2xl: CGFloat { get }
    var borderHeight3xl: CGFloat { get }
    var borderRadius3xs: CGFloat { get }
    var borderRadius2xs: CGFloat { get }
    var borderRadiusXs: CGFloat { get }
    var borderRadiusSm: CGFloat { get }
    var borderRadiusMd: CGFloat { get }
    var borderRadiusLg: CGFloat { get }
    var borderRadiusXl: CGFloat { get }
    var borderRadius2xl: CGFloat { get }
    var borderRadius3xl: CGFloat { get }
    var borderRadiusFull: CGFloat { get }
}

public struct DSSpacingDimensions {
    public var responsive3xs: CGFloat
    public var responsive2xs: CGFloat
    public var responsiveXs: CGFloat
    public var responsiveSm: CGFloat
    public var responsiveMd: CGFloat
    public var responsiveLg: CGFloat
    public var responsiveXl: CGFloat
    public var responsive2xl: CGFloat
    public var responsive3xl: CGFloat
    public var fixed3xs: CGFloat
    public var fixed2xs: CGFloat
    public var fixedXs: CGFloat
    public var fixedSm: CGFloat
    public var fixedMd: CGFloat
    public var fixedLg: CGFloat
    public var fixedXl: CGFloat
    public var fixed2xl: CGFloat
    public var fixed3xl: CGFloat
}

public struct DSSizingDimensions {
    public var base3xs: CGFloat
    public var base2xs: CGFloat
    public var baseXs: CGFloat
    public var baseSm: CGFloat
    public var baseMd: CGFloat
    public var baseLg: CGFloat
    public var baseXl: CGFloat
    public var base2xl: CGFloat
    public var base3xl: CGFloat
}

public struct DSBorderDimensions {
    public var height3xs: CGFloat
    public var height2xs: CGFloat
    public var heightXs: CGFloat
    public var heightSm: CGFloat
    public var heightMd: CGFloat
    public var heightLg: CGFloat
    public var heightXl: CGFloat
    public var height2xl: CGFloat
    public var height3xl: CGFloat
    public var radius3xs: CGFloat
    public var radius2xs: CGFloat
    public var radiusXs: CGFloat
    public var radiusSm: CGFloat
    public var radiusMd: CGFloat
    public var radiusLg: CGFloat
    public var radiusXl: CGFloat
    public var radius2xl: CGFloat
    public var radius3xl: CGFloat
}

public struct DesignSystemDimensions {
    public var spacing: DSSpacingDimensions
    
    public var sizing: DSSizingDimensions
    
    public var border: DSBorderDimensions
    
    enum DeviceType {
        case mobile
        case tablet
    }
    
    init(spacing: DSSpacingDimensions, sizing: DSSizingDimensions, border: DSBorderDimensions) {
        self.spacing = spacing
        self.sizing = sizing
        self.border = border
    }
    
    static func getDimensionsFunctionalMobile(dimensions: DSDimensions) -> DesignSystemDimensions {
        .init(
            spacing: getSpacingDimensionsFunctional(device: .mobile, dimensions: dimensions),
            sizing: getSizingDimensionsFunctional(dimensions: dimensions),
            border: getBorderDimensions(dimensions: dimensions)
        )
    }
    
    static func getDimensionsFunctionalTablet(dimensions: DSDimensions) -> DesignSystemDimensions {
        .init(
            spacing: getSpacingDimensionsFunctional(device: .tablet, dimensions: dimensions),
            sizing: getSizingDimensionsFunctional(dimensions: dimensions),
            border: getBorderDimensions(dimensions: dimensions)
        )
    }
    
    static func getDimensionsRegularMobile(dimensions: DSDimensions) -> DesignSystemDimensions {
        .init(
            spacing: getSpacingDimensionsRegular(device: .mobile, dimensions: dimensions),
            sizing: getSizingDimensionsRegular(dimensions: dimensions),
            border: getBorderDimensions(dimensions: dimensions)
        )
    }
    
    static func getDimensionsRegularTablet(dimensions: DSDimensions) -> DesignSystemDimensions {
        .init(
            spacing: getSpacingDimensionsRegular(device: .tablet, dimensions: dimensions),
            sizing: getSizingDimensionsRegular(dimensions: dimensions),
            border: getBorderDimensions(dimensions: dimensions)
        )
    }
    
    static func getDimensionsExpressiveMobile(dimensions: DSDimensions) -> DesignSystemDimensions {
        .init(
            spacing: getSpacingDimensionsExpressive(device: .mobile, dimensions: dimensions),
            sizing: getSizingDimensionsExpressive(dimensions: dimensions),
            border: getBorderDimensions(dimensions: dimensions)
        )
    }
    
    static func getDimensionsExpressiveTablet(dimensions: DSDimensions) -> DesignSystemDimensions {
        .init(
            spacing: getSpacingDimensionsExpressive(device: .tablet, dimensions: dimensions),
            sizing: getSizingDimensionsExpressive(dimensions: dimensions),
            border: getBorderDimensions(dimensions: dimensions)
        )
    }
    
    private static func getSpacingDimensionsFunctional(device: DeviceType, dimensions: DSDimensions) -> DSSpacingDimensions {
        .init(
            responsive3xs: device == .mobile ? dimensions.spacingResponsiveFunctionalMobile3xs : dimensions.spacingResponsiveFunctionalTablet3xs,
            responsive2xs: device == .mobile ? dimensions.spacingResponsiveFunctionalMobile2xs : dimensions.spacingResponsiveFunctionalTablet2xs,
            responsiveXs: device == .mobile ? dimensions.spacingResponsiveFunctionalMobileXs : dimensions.spacingResponsiveFunctionalTabletXs,
            responsiveSm: device == .mobile ? dimensions.spacingResponsiveFunctionalMobileSm : dimensions.spacingResponsiveFunctionalTabletSm,
            responsiveMd: device == .mobile ? dimensions.spacingResponsiveFunctionalMobileMd : dimensions.spacingResponsiveFunctionalTabletMd,
            responsiveLg: device == .mobile ? dimensions.spacingResponsiveFunctionalMobileLg : dimensions.spacingResponsiveFunctionalTabletLg,
            responsiveXl: device == .mobile ? dimensions.spacingResponsiveFunctionalMobileXl : dimensions.spacingResponsiveFunctionalTabletXl,
            responsive2xl: device == .mobile ? dimensions.spacingResponsiveFunctionalMobile2xl : dimensions.spacingResponsiveFunctionalTablet2xl,
            responsive3xl: device == .mobile ? dimensions.spacingResponsiveFunctionalMobile3xl : dimensions.spacingResponsiveFunctionalTablet3xl,
            fixed3xs: dimensions.spacingFixedFunctional3xs,
            fixed2xs: dimensions.spacingFixedFunctional2xs,
            fixedXs: dimensions.spacingFixedFunctionalXs,
            fixedSm: dimensions.spacingFixedFunctionalSm,
            fixedMd: dimensions.spacingFixedFunctionalMd,
            fixedLg: dimensions.spacingFixedFunctionalLg,
            fixedXl: dimensions.spacingFixedFunctionalXl,
            fixed2xl: dimensions.spacingFixedFunctional2xl,
            fixed3xl: dimensions.spacingFixedFunctional3xl
        )
    }
    
    private static func getSpacingDimensionsRegular(device: DeviceType, dimensions: DSDimensions) -> DSSpacingDimensions {
        .init(
            responsive3xs: device == .mobile ? dimensions.spacingResponsiveRegularMobile3xs : dimensions.spacingResponsiveRegularTablet3xs,
            responsive2xs: device == .mobile ? dimensions.spacingResponsiveRegularMobile2xs : dimensions.spacingResponsiveRegularTablet2xs,
            responsiveXs: device == .mobile ? dimensions.spacingResponsiveRegularMobileXs : dimensions.spacingResponsiveRegularTabletXs,
            responsiveSm: device == .mobile ? dimensions.spacingResponsiveRegularMobileSm : dimensions.spacingResponsiveRegularTabletSm,
            responsiveMd: device == .mobile ? dimensions.spacingResponsiveRegularMobileMd : dimensions.spacingResponsiveRegularTabletMd,
            responsiveLg: device == .mobile ? dimensions.spacingResponsiveRegularMobileLg : dimensions.spacingResponsiveRegularTabletLg,
            responsiveXl: device == .mobile ? dimensions.spacingResponsiveRegularMobileXl : dimensions.spacingResponsiveRegularTabletXl,
            responsive2xl: device == .mobile ? dimensions.spacingResponsiveRegularMobile2xl : dimensions.spacingResponsiveRegularTablet2xl,
            responsive3xl: device == .mobile ? dimensions.spacingResponsiveRegularMobile3xl : dimensions.spacingResponsiveRegularTablet3xl,
            fixed3xs: dimensions.spacingFixedRegular3xs,
            fixed2xs: dimensions.spacingFixedRegular2xs,
            fixedXs: dimensions.spacingFixedRegularXs,
            fixedSm: dimensions.spacingFixedRegularSm,
            fixedMd: dimensions.spacingFixedRegularMd,
            fixedLg: dimensions.spacingFixedRegularLg,
            fixedXl: dimensions.spacingFixedRegularXl,
            fixed2xl: dimensions.spacingFixedRegular2xl,
            fixed3xl: dimensions.spacingFixedRegular3xl
        )
    }
    
    private static func getSpacingDimensionsExpressive(device: DeviceType, dimensions: DSDimensions) -> DSSpacingDimensions {
        .init(
            responsive3xs: device == .mobile ? dimensions.spacingResponsiveExpressiveMobile3xs : dimensions.spacingResponsiveExpressiveTablet3xs,
            responsive2xs: device == .mobile ? dimensions.spacingResponsiveExpressiveMobile2xs : dimensions.spacingResponsiveExpressiveTablet2xs,
            responsiveXs: device == .mobile ? dimensions.spacingResponsiveExpressiveMobileXs : dimensions.spacingResponsiveExpressiveTabletXs,
            responsiveSm: device == .mobile ? dimensions.spacingResponsiveExpressiveMobileSm : dimensions.spacingResponsiveExpressiveTabletSm,
            responsiveMd: device == .mobile ? dimensions.spacingResponsiveExpressiveMobileMd : dimensions.spacingResponsiveExpressiveTabletMd,
            responsiveLg: device == .mobile ? dimensions.spacingResponsiveExpressiveMobileLg : dimensions.spacingResponsiveExpressiveTabletLg,
            responsiveXl: device == .mobile ? dimensions.spacingResponsiveExpressiveMobileXl : dimensions.spacingResponsiveExpressiveTabletXl,
            responsive2xl: device == .mobile ? dimensions.spacingResponsiveExpressiveMobile2xl : dimensions.spacingResponsiveExpressiveTablet3xl,
            responsive3xl: device == .mobile ? dimensions.spacingResponsiveExpressiveMobile3xl : dimensions.spacingResponsiveExpressiveTablet3xl,
            fixed3xs: dimensions.spacingFixedExpressive3xs,
            fixed2xs: dimensions.spacingFixedExpressive2xs,
            fixedXs: dimensions.spacingFixedExpressiveXs,
            fixedSm: dimensions.spacingFixedExpressiveSm,
            fixedMd: dimensions.spacingFixedExpressiveMd,
            fixedLg: dimensions.spacingFixedExpressiveLg,
            fixedXl: dimensions.spacingFixedExpressiveXl,
            fixed2xl: dimensions.spacingFixedExpressive2xl,
            fixed3xl: dimensions.spacingFixedExpressive3xl
        )
    }
    
    private static func getSizingDimensionsFunctional(dimensions: DSDimensions) -> DSSizingDimensions {
        .init(
            base3xs: dimensions.sizingFunctional3xs,
            base2xs: dimensions.sizingFunctional2xs,
            baseXs: dimensions.sizingFunctionalXs,
            baseSm: dimensions.sizingFunctionalSm,
            baseMd: dimensions.sizingFunctionalMd,
            baseLg: dimensions.sizingFunctionalLg,
            baseXl: dimensions.sizingFunctionalXl,
            base2xl: dimensions.sizingFunctional2xl,
            base3xl: dimensions.sizingFunctional3xl
        )
    }
    
    private static func getSizingDimensionsRegular(dimensions: DSDimensions) -> DSSizingDimensions {
        .init(
            base3xs: dimensions.sizingRegular3xs,
            base2xs: dimensions.sizingRegular2xs,
            baseXs: dimensions.sizingRegularXs,
            baseSm: dimensions.sizingRegularSm,
            baseMd: dimensions.sizingRegularMd,
            baseLg: dimensions.sizingRegularLg,
            baseXl: dimensions.sizingRegularXl,
            base2xl: dimensions.sizingRegular2xl,
            base3xl: dimensions.sizingRegular3xl
        )
    }
    
    private static func getSizingDimensionsExpressive(dimensions: DSDimensions) -> DSSizingDimensions {
        .init(
            base3xs: dimensions.sizingExpressive3xs,
            base2xs: dimensions.sizingExpressive2xs,
            baseXs: dimensions.sizingExpressiveXs,
            baseSm: dimensions.sizingExpressiveSm,
            baseMd: dimensions.sizingExpressiveMd,
            baseLg: dimensions.sizingExpressiveLg,
            baseXl: dimensions.sizingExpressiveXl,
            base2xl: dimensions.sizingExpressive2xl,
            base3xl: dimensions.sizingExpressive3xl
        )
    }
    
    private static func getBorderDimensions(dimensions: DSDimensions) -> DSBorderDimensions {
        .init(
            height3xs: dimensions.borderHeight3xs,
            height2xs: dimensions.borderHeight2xs,
            heightXs: dimensions.borderHeightXs,
            heightSm: dimensions.borderHeightSm,
            heightMd: dimensions.borderHeightMd,
            heightLg: dimensions.borderHeightLg,
            heightXl: dimensions.borderHeightXl,
            height2xl: dimensions.borderHeight2xl,
            height3xl: dimensions.borderHeight3xl,
            radius3xs: dimensions.borderRadius3xs,
            radius2xs: dimensions.borderRadius2xs,
            radiusXs: dimensions.borderRadiusXs,
            radiusSm: dimensions.borderRadiusSm,
            radiusMd: dimensions.borderRadiusMd,
            radiusLg: dimensions.borderRadiusLg,
            radiusXl: dimensions.borderRadiusXl,
            radius2xl: dimensions.borderRadius2xl,
            radius3xl: dimensions.borderRadius3xl
        )
    }
}
