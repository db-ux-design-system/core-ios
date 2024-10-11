//
//  Copyright 2024 by DB Systel GmbH
//  
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//  
//          http://www.apache.org/licenses/LICENSE-2.0
//  
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//


import UIKit

protocol Dimensions {
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
