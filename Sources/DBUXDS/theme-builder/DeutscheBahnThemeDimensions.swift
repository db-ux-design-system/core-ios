
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
struct DeutscheBahnThemeDimensions {
  var spacing: SpacingDimensions
  var sizing: SizingDimensions
  var border: BorderDimensions
}
nonisolated(unsafe) var spacingDimensionsFunctionalMobile = SpacingDimensions(responsive3xs: Dimensions.spacingResponsiveFunctionalMobile3xs,
responsive2xs: Dimensions.spacingResponsiveFunctionalMobile2xs,
responsiveXs: Dimensions.spacingResponsiveFunctionalMobileXs,
responsiveSm: Dimensions.spacingResponsiveFunctionalMobileSm,
responsiveMd: Dimensions.spacingResponsiveFunctionalMobileMd,
responsiveLg: Dimensions.spacingResponsiveFunctionalMobileLg,
responsiveXl: Dimensions.spacingResponsiveFunctionalMobileXl,
responsive2xl: Dimensions.spacingResponsiveFunctionalMobile2xl,
responsive3xl: Dimensions.spacingResponsiveFunctionalMobile3xl,
fixed3xs: Dimensions.spacingFixedFunctional3xs,
fixed2xs: Dimensions.spacingFixedFunctional2xs,
fixedXs: Dimensions.spacingFixedFunctionalXs,
fixedSm: Dimensions.spacingFixedFunctionalSm,
fixedMd: Dimensions.spacingFixedFunctionalMd,
fixedLg: Dimensions.spacingFixedFunctionalLg,
fixedXl: Dimensions.spacingFixedFunctionalXl,
fixed2xl: Dimensions.spacingFixedFunctional2xl,
fixed3xl: Dimensions.spacingFixedFunctional3xl
)
nonisolated(unsafe) var sizingDimensionsFunctionalMobile = SizingDimensions(base3xs: Dimensions.sizingFunctional3xs,
base2xs: Dimensions.sizingFunctional2xs,
baseXs: Dimensions.sizingFunctionalXs,
baseSm: Dimensions.sizingFunctionalSm,
baseMd: Dimensions.sizingFunctionalMd,
baseLg: Dimensions.sizingFunctionalLg,
baseXl: Dimensions.sizingFunctionalXl,
base2xl: Dimensions.sizingFunctional2xl,
base3xl: Dimensions.sizingFunctional3xl
)
nonisolated(unsafe) var borderDimensionsFunctionalMobile = BorderDimensions(height3xs: Dimensions.borderHeight3xs,
height2xs: Dimensions.borderHeight2xs,
heightXs: Dimensions.borderHeightXs,
heightSm: Dimensions.borderHeightSm,
heightMd: Dimensions.borderHeightMd,
heightLg: Dimensions.borderHeightLg,
heightXl: Dimensions.borderHeightXl,
height2xl: Dimensions.borderHeight2xl,
height3xl: Dimensions.borderHeight3xl,
radius3xs: Dimensions.borderRadius3xs,
radius2xs: Dimensions.borderRadius2xs,
radiusXs: Dimensions.borderRadiusXs,
radiusSm: Dimensions.borderRadiusSm,
radiusMd: Dimensions.borderRadiusMd,
radiusLg: Dimensions.borderRadiusLg,
radiusXl: Dimensions.borderRadiusXl,
radius2xl: Dimensions.borderRadius2xl,
radius3xl: Dimensions.borderRadius3xl
)
func getDimensionsFunctionalMobile(spacing: SpacingDimensions = spacingDimensionsFunctionalMobile,
sizing: SizingDimensions = sizingDimensionsFunctionalMobile,
border: BorderDimensions = borderDimensionsFunctionalMobile
) -> DeutscheBahnThemeDimensions { DeutscheBahnThemeDimensions(
spacing: spacing,
sizing: sizing,
border: border
)
}
nonisolated(unsafe) var spacingDimensionsFunctionalTablet = SpacingDimensions(responsive3xs: Dimensions.spacingResponsiveFunctionalTablet3xs,
responsive2xs: Dimensions.spacingResponsiveFunctionalTablet2xs,
responsiveXs: Dimensions.spacingResponsiveFunctionalTabletXs,
responsiveSm: Dimensions.spacingResponsiveFunctionalTabletSm,
responsiveMd: Dimensions.spacingResponsiveFunctionalTabletMd,
responsiveLg: Dimensions.spacingResponsiveFunctionalTabletLg,
responsiveXl: Dimensions.spacingResponsiveFunctionalTabletXl,
responsive2xl: Dimensions.spacingResponsiveFunctionalTablet2xl,
responsive3xl: Dimensions.spacingResponsiveFunctionalTablet3xl,
fixed3xs: Dimensions.spacingFixedFunctional3xs,
fixed2xs: Dimensions.spacingFixedFunctional2xs,
fixedXs: Dimensions.spacingFixedFunctionalXs,
fixedSm: Dimensions.spacingFixedFunctionalSm,
fixedMd: Dimensions.spacingFixedFunctionalMd,
fixedLg: Dimensions.spacingFixedFunctionalLg,
fixedXl: Dimensions.spacingFixedFunctionalXl,
fixed2xl: Dimensions.spacingFixedFunctional2xl,
fixed3xl: Dimensions.spacingFixedFunctional3xl
)
nonisolated(unsafe) var sizingDimensionsFunctionalTablet = SizingDimensions(base3xs: Dimensions.sizingFunctional3xs,
base2xs: Dimensions.sizingFunctional2xs,
baseXs: Dimensions.sizingFunctionalXs,
baseSm: Dimensions.sizingFunctionalSm,
baseMd: Dimensions.sizingFunctionalMd,
baseLg: Dimensions.sizingFunctionalLg,
baseXl: Dimensions.sizingFunctionalXl,
base2xl: Dimensions.sizingFunctional2xl,
base3xl: Dimensions.sizingFunctional3xl
)
nonisolated(unsafe) var borderDimensionsFunctionalTablet = BorderDimensions(height3xs: Dimensions.borderHeight3xs,
height2xs: Dimensions.borderHeight2xs,
heightXs: Dimensions.borderHeightXs,
heightSm: Dimensions.borderHeightSm,
heightMd: Dimensions.borderHeightMd,
heightLg: Dimensions.borderHeightLg,
heightXl: Dimensions.borderHeightXl,
height2xl: Dimensions.borderHeight2xl,
height3xl: Dimensions.borderHeight3xl,
radius3xs: Dimensions.borderRadius3xs,
radius2xs: Dimensions.borderRadius2xs,
radiusXs: Dimensions.borderRadiusXs,
radiusSm: Dimensions.borderRadiusSm,
radiusMd: Dimensions.borderRadiusMd,
radiusLg: Dimensions.borderRadiusLg,
radiusXl: Dimensions.borderRadiusXl,
radius2xl: Dimensions.borderRadius2xl,
radius3xl: Dimensions.borderRadius3xl
)
func getDimensionsFunctionalTablet(spacing: SpacingDimensions = spacingDimensionsFunctionalTablet,
sizing: SizingDimensions = sizingDimensionsFunctionalTablet,
border: BorderDimensions = borderDimensionsFunctionalTablet
) -> DeutscheBahnThemeDimensions { DeutscheBahnThemeDimensions(
spacing: spacing,
sizing: sizing,
border: border
)
}
nonisolated(unsafe) var spacingDimensionsRegularMobile = SpacingDimensions(responsive3xs: Dimensions.spacingResponsiveRegularMobile3xs,
responsive2xs: Dimensions.spacingResponsiveRegularMobile2xs,
responsiveXs: Dimensions.spacingResponsiveRegularMobileXs,
responsiveSm: Dimensions.spacingResponsiveRegularMobileSm,
responsiveMd: Dimensions.spacingResponsiveRegularMobileMd,
responsiveLg: Dimensions.spacingResponsiveRegularMobileLg,
responsiveXl: Dimensions.spacingResponsiveRegularMobileXl,
responsive2xl: Dimensions.spacingResponsiveRegularMobile2xl,
responsive3xl: Dimensions.spacingResponsiveRegularMobile3xl,
fixed3xs: Dimensions.spacingFixedRegular3xs,
fixed2xs: Dimensions.spacingFixedRegular2xs,
fixedXs: Dimensions.spacingFixedRegularXs,
fixedSm: Dimensions.spacingFixedRegularSm,
fixedMd: Dimensions.spacingFixedRegularMd,
fixedLg: Dimensions.spacingFixedRegularLg,
fixedXl: Dimensions.spacingFixedRegularXl,
fixed2xl: Dimensions.spacingFixedRegular2xl,
fixed3xl: Dimensions.spacingFixedRegular3xl
)
nonisolated(unsafe) var sizingDimensionsRegularMobile = SizingDimensions(base3xs: Dimensions.sizingRegular3xs,
base2xs: Dimensions.sizingRegular2xs,
baseXs: Dimensions.sizingRegularXs,
baseSm: Dimensions.sizingRegularSm,
baseMd: Dimensions.sizingRegularMd,
baseLg: Dimensions.sizingRegularLg,
baseXl: Dimensions.sizingRegularXl,
base2xl: Dimensions.sizingRegular2xl,
base3xl: Dimensions.sizingRegular3xl
)
nonisolated(unsafe) var borderDimensionsRegularMobile = BorderDimensions(height3xs: Dimensions.borderHeight3xs,
height2xs: Dimensions.borderHeight2xs,
heightXs: Dimensions.borderHeightXs,
heightSm: Dimensions.borderHeightSm,
heightMd: Dimensions.borderHeightMd,
heightLg: Dimensions.borderHeightLg,
heightXl: Dimensions.borderHeightXl,
height2xl: Dimensions.borderHeight2xl,
height3xl: Dimensions.borderHeight3xl,
radius3xs: Dimensions.borderRadius3xs,
radius2xs: Dimensions.borderRadius2xs,
radiusXs: Dimensions.borderRadiusXs,
radiusSm: Dimensions.borderRadiusSm,
radiusMd: Dimensions.borderRadiusMd,
radiusLg: Dimensions.borderRadiusLg,
radiusXl: Dimensions.borderRadiusXl,
radius2xl: Dimensions.borderRadius2xl,
radius3xl: Dimensions.borderRadius3xl
)
func getDimensionsRegularMobile(spacing: SpacingDimensions = spacingDimensionsRegularMobile,
sizing: SizingDimensions = sizingDimensionsRegularMobile,
border: BorderDimensions = borderDimensionsRegularMobile
) -> DeutscheBahnThemeDimensions { DeutscheBahnThemeDimensions(
spacing: spacing,
sizing: sizing,
border: border
)
}
nonisolated(unsafe) var spacingDimensionsRegularTablet = SpacingDimensions(responsive3xs: Dimensions.spacingResponsiveRegularTablet3xs,
responsive2xs: Dimensions.spacingResponsiveRegularTablet2xs,
responsiveXs: Dimensions.spacingResponsiveRegularTabletXs,
responsiveSm: Dimensions.spacingResponsiveRegularTabletSm,
responsiveMd: Dimensions.spacingResponsiveRegularTabletMd,
responsiveLg: Dimensions.spacingResponsiveRegularTabletLg,
responsiveXl: Dimensions.spacingResponsiveRegularTabletXl,
responsive2xl: Dimensions.spacingResponsiveRegularTablet2xl,
responsive3xl: Dimensions.spacingResponsiveRegularTablet3xl,
fixed3xs: Dimensions.spacingFixedRegular3xs,
fixed2xs: Dimensions.spacingFixedRegular2xs,
fixedXs: Dimensions.spacingFixedRegularXs,
fixedSm: Dimensions.spacingFixedRegularSm,
fixedMd: Dimensions.spacingFixedRegularMd,
fixedLg: Dimensions.spacingFixedRegularLg,
fixedXl: Dimensions.spacingFixedRegularXl,
fixed2xl: Dimensions.spacingFixedRegular2xl,
fixed3xl: Dimensions.spacingFixedRegular3xl
)
nonisolated(unsafe) var sizingDimensionsRegularTablet = SizingDimensions(base3xs: Dimensions.sizingRegular3xs,
base2xs: Dimensions.sizingRegular2xs,
baseXs: Dimensions.sizingRegularXs,
baseSm: Dimensions.sizingRegularSm,
baseMd: Dimensions.sizingRegularMd,
baseLg: Dimensions.sizingRegularLg,
baseXl: Dimensions.sizingRegularXl,
base2xl: Dimensions.sizingRegular2xl,
base3xl: Dimensions.sizingRegular3xl
)
nonisolated(unsafe) var borderDimensionsRegularTablet = BorderDimensions(height3xs: Dimensions.borderHeight3xs,
height2xs: Dimensions.borderHeight2xs,
heightXs: Dimensions.borderHeightXs,
heightSm: Dimensions.borderHeightSm,
heightMd: Dimensions.borderHeightMd,
heightLg: Dimensions.borderHeightLg,
heightXl: Dimensions.borderHeightXl,
height2xl: Dimensions.borderHeight2xl,
height3xl: Dimensions.borderHeight3xl,
radius3xs: Dimensions.borderRadius3xs,
radius2xs: Dimensions.borderRadius2xs,
radiusXs: Dimensions.borderRadiusXs,
radiusSm: Dimensions.borderRadiusSm,
radiusMd: Dimensions.borderRadiusMd,
radiusLg: Dimensions.borderRadiusLg,
radiusXl: Dimensions.borderRadiusXl,
radius2xl: Dimensions.borderRadius2xl,
radius3xl: Dimensions.borderRadius3xl
)
func getDimensionsRegularTablet(spacing: SpacingDimensions = spacingDimensionsRegularTablet,
sizing: SizingDimensions = sizingDimensionsRegularTablet,
border: BorderDimensions = borderDimensionsRegularTablet
) -> DeutscheBahnThemeDimensions { DeutscheBahnThemeDimensions(
spacing: spacing,
sizing: sizing,
border: border
)
}
nonisolated(unsafe) var spacingDimensionsExpressiveMobile = SpacingDimensions(responsive3xs: Dimensions.spacingResponsiveExpressiveMobile3xs,
responsive2xs: Dimensions.spacingResponsiveExpressiveMobile2xs,
responsiveXs: Dimensions.spacingResponsiveExpressiveMobileXs,
responsiveSm: Dimensions.spacingResponsiveExpressiveMobileSm,
responsiveMd: Dimensions.spacingResponsiveExpressiveMobileMd,
responsiveLg: Dimensions.spacingResponsiveExpressiveMobileLg,
responsiveXl: Dimensions.spacingResponsiveExpressiveMobileXl,
responsive2xl: Dimensions.spacingResponsiveExpressiveMobile2xl,
responsive3xl: Dimensions.spacingResponsiveExpressiveMobile3xl,
fixed3xs: Dimensions.spacingFixedExpressive3xs,
fixed2xs: Dimensions.spacingFixedExpressive2xs,
fixedXs: Dimensions.spacingFixedExpressiveXs,
fixedSm: Dimensions.spacingFixedExpressiveSm,
fixedMd: Dimensions.spacingFixedExpressiveMd,
fixedLg: Dimensions.spacingFixedExpressiveLg,
fixedXl: Dimensions.spacingFixedExpressiveXl,
fixed2xl: Dimensions.spacingFixedExpressive2xl,
fixed3xl: Dimensions.spacingFixedExpressive3xl
)
nonisolated(unsafe) var sizingDimensionsExpressiveMobile = SizingDimensions(base3xs: Dimensions.sizingExpressive3xs,
base2xs: Dimensions.sizingExpressive2xs,
baseXs: Dimensions.sizingExpressiveXs,
baseSm: Dimensions.sizingExpressiveSm,
baseMd: Dimensions.sizingExpressiveMd,
baseLg: Dimensions.sizingExpressiveLg,
baseXl: Dimensions.sizingExpressiveXl,
base2xl: Dimensions.sizingExpressive2xl,
base3xl: Dimensions.sizingExpressive3xl
)
nonisolated(unsafe) var borderDimensionsExpressiveMobile = BorderDimensions(height3xs: Dimensions.borderHeight3xs,
height2xs: Dimensions.borderHeight2xs,
heightXs: Dimensions.borderHeightXs,
heightSm: Dimensions.borderHeightSm,
heightMd: Dimensions.borderHeightMd,
heightLg: Dimensions.borderHeightLg,
heightXl: Dimensions.borderHeightXl,
height2xl: Dimensions.borderHeight2xl,
height3xl: Dimensions.borderHeight3xl,
radius3xs: Dimensions.borderRadius3xs,
radius2xs: Dimensions.borderRadius2xs,
radiusXs: Dimensions.borderRadiusXs,
radiusSm: Dimensions.borderRadiusSm,
radiusMd: Dimensions.borderRadiusMd,
radiusLg: Dimensions.borderRadiusLg,
radiusXl: Dimensions.borderRadiusXl,
radius2xl: Dimensions.borderRadius2xl,
radius3xl: Dimensions.borderRadius3xl
)
func getDimensionsExpressiveMobile(spacing: SpacingDimensions = spacingDimensionsExpressiveMobile,
sizing: SizingDimensions = sizingDimensionsExpressiveMobile,
border: BorderDimensions = borderDimensionsExpressiveMobile
) -> DeutscheBahnThemeDimensions { DeutscheBahnThemeDimensions(
spacing: spacing,
sizing: sizing,
border: border
)
}
nonisolated(unsafe) var spacingDimensionsExpressiveTablet = SpacingDimensions(responsive3xs: Dimensions.spacingResponsiveExpressiveTablet3xs,
responsive2xs: Dimensions.spacingResponsiveExpressiveTablet2xs,
responsiveXs: Dimensions.spacingResponsiveExpressiveTabletXs,
responsiveSm: Dimensions.spacingResponsiveExpressiveTabletSm,
responsiveMd: Dimensions.spacingResponsiveExpressiveTabletMd,
responsiveLg: Dimensions.spacingResponsiveExpressiveTabletLg,
responsiveXl: Dimensions.spacingResponsiveExpressiveTabletXl,
responsive2xl: Dimensions.spacingResponsiveExpressiveTablet2xl,
responsive3xl: Dimensions.spacingResponsiveExpressiveTablet3xl,
fixed3xs: Dimensions.spacingFixedExpressive3xs,
fixed2xs: Dimensions.spacingFixedExpressive2xs,
fixedXs: Dimensions.spacingFixedExpressiveXs,
fixedSm: Dimensions.spacingFixedExpressiveSm,
fixedMd: Dimensions.spacingFixedExpressiveMd,
fixedLg: Dimensions.spacingFixedExpressiveLg,
fixedXl: Dimensions.spacingFixedExpressiveXl,
fixed2xl: Dimensions.spacingFixedExpressive2xl,
fixed3xl: Dimensions.spacingFixedExpressive3xl
)
nonisolated(unsafe) var sizingDimensionsExpressiveTablet = SizingDimensions(base3xs: Dimensions.sizingExpressive3xs,
base2xs: Dimensions.sizingExpressive2xs,
baseXs: Dimensions.sizingExpressiveXs,
baseSm: Dimensions.sizingExpressiveSm,
baseMd: Dimensions.sizingExpressiveMd,
baseLg: Dimensions.sizingExpressiveLg,
baseXl: Dimensions.sizingExpressiveXl,
base2xl: Dimensions.sizingExpressive2xl,
base3xl: Dimensions.sizingExpressive3xl
)
nonisolated(unsafe) var borderDimensionsExpressiveTablet = BorderDimensions(height3xs: Dimensions.borderHeight3xs,
height2xs: Dimensions.borderHeight2xs,
heightXs: Dimensions.borderHeightXs,
heightSm: Dimensions.borderHeightSm,
heightMd: Dimensions.borderHeightMd,
heightLg: Dimensions.borderHeightLg,
heightXl: Dimensions.borderHeightXl,
height2xl: Dimensions.borderHeight2xl,
height3xl: Dimensions.borderHeight3xl,
radius3xs: Dimensions.borderRadius3xs,
radius2xs: Dimensions.borderRadius2xs,
radiusXs: Dimensions.borderRadiusXs,
radiusSm: Dimensions.borderRadiusSm,
radiusMd: Dimensions.borderRadiusMd,
radiusLg: Dimensions.borderRadiusLg,
radiusXl: Dimensions.borderRadiusXl,
radius2xl: Dimensions.borderRadius2xl,
radius3xl: Dimensions.borderRadius3xl
)
func getDimensionsExpressiveTablet(spacing: SpacingDimensions = spacingDimensionsExpressiveTablet,
sizing: SizingDimensions = sizingDimensionsExpressiveTablet,
border: BorderDimensions = borderDimensionsExpressiveTablet
) -> DeutscheBahnThemeDimensions { DeutscheBahnThemeDimensions(
spacing: spacing,
sizing: sizing,
border: border
)
}
