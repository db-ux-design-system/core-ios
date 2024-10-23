# ADR-03 - Integration of Assets (Icons, Fonts) in the Package

## Decision and justification

We need to decide how to integrate assets, specifically icons and fonts, into
the package. The assets include functional and illustrative icons (in SVG
format) and fonts (in TTF format).

## Problem description and context

The package must include assets from internal sources, organized in a way that
allows for easy usage, maintainability, and cross-platform support. The assets
consist of functional icons that can be colored, illustrative icons that are
multi-colored and cannot be re-colored, and fonts. The icons are organized by
functional grouping. The icons also have to support light and dark mode.

## General conditions and decision criteria

### General conditions

* **Asset Types:** Functional icons (colorable SVG), illustrative icons (
  multi-colored SVG), and fonts (TTF).
* **Source:** Internal sources, to be added to the package.
* **Formats:** SVG for icons, TTF for fonts.
* **Organization:** Icons are organized by functional grouping.
* **Usage:** Assets need to be easily accessible and usable within the app.
* **Performance:** No specific caching or performance requirements.
* **Build Process:** Assets should be included in the repository and integrated
  during the build process.
* **Platform Support:** Cross-platform support (iOS, macOS, watchOS, tvOS).
* **Licensing:** Compliance with any relevant licensing requirements.
* **Scalability:** Support for different screen sizes, resolutions, and themes (
  e.g., Dark Mode).
* **Future Maintenance:** Assets should be easy to update and maintain.

### Decision criteria

* **Ease of Integration:** Assets should be easily integrated into the package
  and accessible to developers.
* **Maintainability:** The solution should be easy to maintain and update.
* **Compatibility:** It should support all target platforms.
* **Organization:** The assets should be well-organized and easy to find.
* **Usage:** Assets should be straightforward to use in the app.
* **Scalability:** The solution should support different screen sizes,
  resolutions, and themes.

## Alternatives

### A - Direct Inclusion in the Repo

Include the assets directly in the repository and reference them in the
codebase.

#### Evaluation

* **Pros:**
  * Simple and straightforward.
  * Easy to access and use.
  * No additional steps required in the build process.
* **Cons:**
  * Potentially large repository size.
  * Manual updating process for assets.

### B - Asset Catalogs with Auto-Generated Extensions

Use asset catalogs to manage icons and fonts, and
leverage `ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS` for
auto-generating Swift extensions.

#### Evaluation

* **Pros:**
  * Centralized management of assets.
  * Supports grouping and scaling for different resolutions.
  * Integrated into Xcode.
  * Automatically generates Swift code for accessing assets.
* **Cons:**
  * Requires Xcode-specific setup.
  * May require additional configuration for different platforms.

### C - Font and Icon Management Libraries

Use libraries to manage fonts and icons, such as SwiftGen.

#### Evaluation

* **Pros:**
  * Automated asset management and generation of code.
  * Supports scalable vector graphics and different resolutions.
  * Keeps codebase clean.
* **Cons:**
  * Additional dependency.
  * Requires initial setup and configuration.

## Decision

To achieve ease of integration, maintainability, and scalability, we choose *
*Alternative B - Asset Catalogs with Auto-Generated Extensions**. This approach
provides centralized management, supports different screen sizes and
resolutions, integrates seamlessly with Xcode, and leverages auto-generated
Swift extensions for easy asset access.

## Consequences

* **Positive:**
  * Centralized management of assets.
  * Supports different resolutions and themes.
  * Integrated with Xcode for ease of use.
  * Auto-generates Swift extensions for easy access to assets.
  * Easy to update and maintain.
* **Negative:**
  * Requires initial setup in Xcode.
  * Asset catalogs are Xcode-specific and may require configuration for
    different platforms.

By implementing this approach, we ensure that our assets remain well-organized,
easy to update, and accessible across all target platforms, with the added
benefit of auto-generated Swift extensions for convenient asset usage.

## Links

* [Xcode Asset Catalog Documentation](https://developer.apple.com/documentation/xcode/managing-assets-with-asset-catalogs)
* [Build settings reference | Apple Developer Documentation](https://developer.apple.com/documentation/xcode/build-settings-reference#Generate-Asset-Symbols)

## Example Code

**Loading an Icon (SwiftUI):**

```swift
import SwiftUI

struct ExampleView: View {
    var body: some View {
        VStack {
            Image(.functionalIconName)
                .renderingMode(.template)
                .foregroundColor(.red)
            Image(.illustrativeIconName)
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
}
```

**Loading a Font (SwiftUI):**

```swift
import SwiftUI

struct ExampleView: View {
    var body: some View {
        Text("Custom Font")
            .font(.dsFont(.sansRegular))
    }
}
```
