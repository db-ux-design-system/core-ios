
import SwiftUI

struct SpacingDimensions {
  var responsive3xs: CGFloat
  var responsive2xs: CGFloat
  var responsiveXs: CGFloat
  var responsiveSm: CGFloat
  var responsiveMd: CGFloat
  var responsiveLg: CGFloat
  var responsiveXl: CGFloat
  var responsive2xl: CGFloat
  var responsive3xl: CGFloat
  var fixed3xs: CGFloat
  var fixed2xs: CGFloat
  var fixedXs: CGFloat
  var fixedSm: CGFloat
  var fixedMd: CGFloat
  var fixedLg: CGFloat
  var fixedXl: CGFloat
  var fixed2xl: CGFloat
  var fixed3xl: CGFloat
}
struct SizingDimensions {
  var base3xs: CGFloat
  var base2xs: CGFloat
  var baseXs: CGFloat
  var baseSm: CGFloat
  var baseMd: CGFloat
  var baseLg: CGFloat
  var baseXl: CGFloat
  var base2xl: CGFloat
  var base3xl: CGFloat
}
struct BorderDimensions {
  var height3xs: CGFloat
  var height2xs: CGFloat
  var heightXs: CGFloat
  var heightSm: CGFloat
  var heightMd: CGFloat
  var heightLg: CGFloat
  var heightXl: CGFloat
  var height2xl: CGFloat
  var height3xl: CGFloat
  var radius3xs: CGFloat
  var radius2xs: CGFloat
  var radiusXs: CGFloat
  var radiusSm: CGFloat
  var radiusMd: CGFloat
  var radiusLg: CGFloat
  var radiusXl: CGFloat
  var radius2xl: CGFloat
  var radius3xl: CGFloat
}
struct DesignSystemDimensions {
  var spacing: SpacingDimensions

  var sizing: SizingDimensions

  var border: BorderDimensions


    init(spacing: SpacingDimensions, sizing: SizingDimensions, border: BorderDimensions) {
        self.spacing = spacing
        self.sizing = sizing
        self.border = border
    }

    private static func getSpacingDimensionsFunctionalMobile(dimensions: Dimensions) -> SpacingDimensions {
      .init(
          responsive3xs: dimensions.spacingResponsiveFunctionalMobile3xs,
          responsive2xs: dimensions.spacingResponsiveFunctionalMobile2xs,
          responsiveXs: dimensions.spacingResponsiveFunctionalMobileXs,
          responsiveSm: dimensions.spacingResponsiveFunctionalMobileSm,
          responsiveMd: dimensions.spacingResponsiveFunctionalMobileMd,
          responsiveLg: dimensions.spacingResponsiveFunctionalMobileLg,
          responsiveXl: dimensions.spacingResponsiveFunctionalMobileXl,
          responsive2xl: dimensions.spacingResponsiveFunctionalMobile2xl,
          responsive3xl: dimensions.spacingResponsiveFunctionalMobile3xl,
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

    private static func getSizingDimensionsFunctionalMobile(dimensions: Dimensions) -> SizingDimensions {
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

    private static func getBorderDimensionsFunctionalMobile(dimensions: Dimensions) -> BorderDimensions {
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

    static func getDimensionsFunctionalMobile(dimensions: Dimensions) -> DesignSystemDimensions {
      .init(
        spacing: getSpacingDimensionsFunctionalMobile(dimensions: dimensions),
        sizing: getSizingDimensionsFunctionalMobile(dimensions: dimensions),
        border: getBorderDimensionsFunctionalMobile(dimensions: dimensions)
      )
    }

    private static func getSpacingDimensionsFunctionalTablet(dimensions: Dimensions) -> SpacingDimensions {
      .init(
          responsive3xs: dimensions.spacingResponsiveFunctionalTablet3xs,
          responsive2xs: dimensions.spacingResponsiveFunctionalTablet2xs,
          responsiveXs: dimensions.spacingResponsiveFunctionalTabletXs,
          responsiveSm: dimensions.spacingResponsiveFunctionalTabletSm,
          responsiveMd: dimensions.spacingResponsiveFunctionalTabletMd,
          responsiveLg: dimensions.spacingResponsiveFunctionalTabletLg,
          responsiveXl: dimensions.spacingResponsiveFunctionalTabletXl,
          responsive2xl: dimensions.spacingResponsiveFunctionalTablet2xl,
          responsive3xl: dimensions.spacingResponsiveFunctionalTablet3xl,
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

    private static func getSizingDimensionsFunctionalTablet(dimensions: Dimensions) -> SizingDimensions {
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

    private static func getBorderDimensionsFunctionalTablet(dimensions: Dimensions) -> BorderDimensions {
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

    static func getDimensionsFunctionalTablet(dimensions: Dimensions) -> DesignSystemDimensions {
      .init(
        spacing: getSpacingDimensionsFunctionalTablet(dimensions: dimensions),
        sizing: getSizingDimensionsFunctionalTablet(dimensions: dimensions),
        border: getBorderDimensionsFunctionalTablet(dimensions: dimensions)
      )
    }

    private static func getSpacingDimensionsRegularMobile(dimensions: Dimensions) -> SpacingDimensions {
      .init(
          responsive3xs: dimensions.spacingResponsiveRegularMobile3xs,
          responsive2xs: dimensions.spacingResponsiveRegularMobile2xs,
          responsiveXs: dimensions.spacingResponsiveRegularMobileXs,
          responsiveSm: dimensions.spacingResponsiveRegularMobileSm,
          responsiveMd: dimensions.spacingResponsiveRegularMobileMd,
          responsiveLg: dimensions.spacingResponsiveRegularMobileLg,
          responsiveXl: dimensions.spacingResponsiveRegularMobileXl,
          responsive2xl: dimensions.spacingResponsiveRegularMobile2xl,
          responsive3xl: dimensions.spacingResponsiveRegularMobile3xl,
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

    private static func getSizingDimensionsRegularMobile(dimensions: Dimensions) -> SizingDimensions {
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

    private static func getBorderDimensionsRegularMobile(dimensions: Dimensions) -> BorderDimensions {
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

    static func getDimensionsRegularMobile(dimensions: Dimensions) -> DesignSystemDimensions {
      .init(
        spacing: getSpacingDimensionsRegularMobile(dimensions: dimensions),
        sizing: getSizingDimensionsRegularMobile(dimensions: dimensions),
        border: getBorderDimensionsRegularMobile(dimensions: dimensions)
      )
    }

    private static func getSpacingDimensionsRegularTablet(dimensions: Dimensions) -> SpacingDimensions {
      .init(
          responsive3xs: dimensions.spacingResponsiveRegularTablet3xs,
          responsive2xs: dimensions.spacingResponsiveRegularTablet2xs,
          responsiveXs: dimensions.spacingResponsiveRegularTabletXs,
          responsiveSm: dimensions.spacingResponsiveRegularTabletSm,
          responsiveMd: dimensions.spacingResponsiveRegularTabletMd,
          responsiveLg: dimensions.spacingResponsiveRegularTabletLg,
          responsiveXl: dimensions.spacingResponsiveRegularTabletXl,
          responsive2xl: dimensions.spacingResponsiveRegularTablet2xl,
          responsive3xl: dimensions.spacingResponsiveRegularTablet3xl,
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

    private static func getSizingDimensionsRegularTablet(dimensions: Dimensions) -> SizingDimensions {
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

    private static func getBorderDimensionsRegularTablet(dimensions: Dimensions) -> BorderDimensions {
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

    static func getDimensionsRegularTablet(dimensions: Dimensions) -> DesignSystemDimensions {
      .init(
        spacing: getSpacingDimensionsRegularTablet(dimensions: dimensions),
        sizing: getSizingDimensionsRegularTablet(dimensions: dimensions),
        border: getBorderDimensionsRegularTablet(dimensions: dimensions)
      )
    }

    private static func getSpacingDimensionsExpressiveMobile(dimensions: Dimensions) -> SpacingDimensions {
      .init(
          responsive3xs: dimensions.spacingResponsiveExpressiveMobile3xs,
          responsive2xs: dimensions.spacingResponsiveExpressiveMobile2xs,
          responsiveXs: dimensions.spacingResponsiveExpressiveMobileXs,
          responsiveSm: dimensions.spacingResponsiveExpressiveMobileSm,
          responsiveMd: dimensions.spacingResponsiveExpressiveMobileMd,
          responsiveLg: dimensions.spacingResponsiveExpressiveMobileLg,
          responsiveXl: dimensions.spacingResponsiveExpressiveMobileXl,
          responsive2xl: dimensions.spacingResponsiveExpressiveMobile2xl,
          responsive3xl: dimensions.spacingResponsiveExpressiveMobile3xl,
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

    private static func getSizingDimensionsExpressiveMobile(dimensions: Dimensions) -> SizingDimensions {
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

    private static func getBorderDimensionsExpressiveMobile(dimensions: Dimensions) -> BorderDimensions {
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

    static func getDimensionsExpressiveMobile(dimensions: Dimensions) -> DesignSystemDimensions {
      .init(
        spacing: getSpacingDimensionsExpressiveMobile(dimensions: dimensions),
        sizing: getSizingDimensionsExpressiveMobile(dimensions: dimensions),
        border: getBorderDimensionsExpressiveMobile(dimensions: dimensions)
      )
    }

    private static func getSpacingDimensionsExpressiveTablet(dimensions: Dimensions) -> SpacingDimensions {
      .init(
          responsive3xs: dimensions.spacingResponsiveExpressiveTablet3xs,
          responsive2xs: dimensions.spacingResponsiveExpressiveTablet2xs,
          responsiveXs: dimensions.spacingResponsiveExpressiveTabletXs,
          responsiveSm: dimensions.spacingResponsiveExpressiveTabletSm,
          responsiveMd: dimensions.spacingResponsiveExpressiveTabletMd,
          responsiveLg: dimensions.spacingResponsiveExpressiveTabletLg,
          responsiveXl: dimensions.spacingResponsiveExpressiveTabletXl,
          responsive2xl: dimensions.spacingResponsiveExpressiveTablet2xl,
          responsive3xl: dimensions.spacingResponsiveExpressiveTablet3xl,
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

    private static func getSizingDimensionsExpressiveTablet(dimensions: Dimensions) -> SizingDimensions {
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

    private static func getBorderDimensionsExpressiveTablet(dimensions: Dimensions) -> BorderDimensions {
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

    static func getDimensionsExpressiveTablet(dimensions: Dimensions) -> DesignSystemDimensions {
      .init(
        spacing: getSpacingDimensionsExpressiveTablet(dimensions: dimensions),
        sizing: getSizingDimensionsExpressiveTablet(dimensions: dimensions),
        border: getBorderDimensionsExpressiveTablet(dimensions: dimensions)
      )
    }


}
