# ADR-01 - Integration of Color Tokens from Theme Builder

## Decision and justification
We will integrate color tokens exported by the `theme-builder` (https://github.com/db-ui/theme-builder) into our Swift package. These tokens will be defined as `Color` instances prefixed with `DB` and used in different color schemes through adaptive themes.

## Problem description and context
We want to ensure that color definitions from the `theme-builder` are efficiently integrated into our Swift package. The color tokens should be adaptable to different color schemes (e.g., light and dark modes) to be flexible in response to different themes.

The structure for colors and themes should be easy to understand and maintain.

## General conditions and decision criteria

### General conditions
- The color tokens must be easily imported from the `theme-builder` export.
- The naming and mapping of tokens to color schemes should be consistent and clear.
- The structure must be flexible enough to accommodate future changes or expansions.

### Decision criteria
- **Clarity:** The integration of color tokens should be clear and understandable.
- **Consistency:** The naming and structure of color tokens and themes should be uniform.
- **Flexibility:** The structure should be easy to extend.
- **Performance:** The implementation should be performant and should not consume unnecessary resources.

## Alternatives

### A - Direct definition of color tokens in code

#### Evaluation
- **Pros:** Simple implementation without additional tools or dependencies.
- **Cons:** Less flexible for changes and not automatically synchronized with the `theme-builder`.

### B - Using the export from the `theme-builder`

#### Evaluation
- **Pros:** Direct adoption of color tokens from the `theme-builder`, simple maintenance and synchronization.
- **Cons:** Dependency on the `theme-builder` and its export structure.

## Decision
We choose **Alternative B - Using the export from the `theme-builder`** to directly adopt the color tokens. This ensures simple maintenance and synchronization of color definitions.

## Consequences
- **Positive:** Using the `theme-builder` export allows for consistent and easy updates of color tokens. The structure enables simple customization and expansion of themes.
- **Negative:** There is a dependency on the theme builder and its export functions.

By implementing this approach, we ensure that our color tokens are clear, consistent, and scalable, providing a solid foundation for the color schemes in our design system and facilitating seamless updates.

## Links
- [Theme Builder GitHub Repository](https://github.com/db-ui/theme-builder)
- [Swift Package Manager Documentation](https://www.swift.org/documentation/package-manager/)
- [Apple SwiftUI Documentation](https://developer.apple.com/documentation/swiftui/)

## Example Code

### Color Tokens Definition (DBUXFoundation/Colors.swift)
```swift
import SwiftUI

let dbColors: [String: Color] = [
    "neutral0": Color(hex: 0x070709),
    "neutral1": Color(hex: 0x0d0e11),
    "neutral2": Color(hex: 0x121316),
    "neutral3": Color(hex: 0x1a1c1f),
    "neutral4": Color(hex: 0x2e3036),
    // More color definitions...
]
```

### AdaptiveColors Struct (DBUXFoundation/AdaptiveColors.swift)
```swift
import SwiftUI

struct DBAdaptiveColors {
    let bgBasicLevel1Default: Color
    let bgBasicLevel1Hovered: Color
    let bgBasicLevel1Pressed: Color
    let bgBasicLevel2Default: Color
    let bgBasicLevel2Hovered: Color
    let bgBasicLevel2Pressed: Color
    
    // Initialize the DBAdaptiveColors struct based on the given scheme and colorName
    init(_ scheme: DBColorScheme, colorName: String) {
        switch scheme {
        case .dark:
            self.bgBasicLevel1Default = dbColors["\(colorName)3", default: .clear]
            self.bgBasicLevel1Hovered = dbColors["\(colorName)4", default: .clear]
            self.bgBasicLevel1Pressed = dbColors["\(colorName)5", default: .clear]
            self.bgBasicLevel2Default = dbColors["\(colorName)2", default: .clear]
            self.bgBasicLevel2Hovered = dbColors["\(colorName)3", default: .clear]
            self.bgBasicLevel2Pressed = dbColors["\(colorName)4", default: .clear]
          
        case .light:
            self.bgBasicLevel1Default = dbColors["\(colorName)1", default: .clear]
            self.bgBasicLevel1Hovered = dbColors["\(colorName)2", default: .clear]
            self.bgBasicLevel1Pressed = dbColors["\(colorName)3", default: .clear]
            self.bgBasicLevel2Default = dbColors["\(colorName)0", default: .clear]
            self.bgBasicLevel2Hovered = dbColors["\(colorName)1", default: .clear]
            self.bgBasicLevel2Pressed = dbColors["\(colorName)2", default: .clear]
        }
    }
}

enum DBColorScheme {
    case light
    case dark
}
```

### Usage of Defined Themes (Usage example)
```swift
let neutralColorsLight: DBAdaptiveColors = .init(.light, colorName: "neutral")
let brandColorsDark: DBAdaptiveColors = .init(.dark, colorName: "brand")
```
