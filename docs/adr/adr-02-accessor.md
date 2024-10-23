# ADR-02 - Accessor Strategy for Component Styling

## Decision and justification
We need to decide on an accessor strategy for styling components, such as text color, border, shadow, font, spacing, etc., independently.

## Problem description and context
We require a flexible and consistent method to apply styling to our SwiftUI components. The settings, adaptive color and density, must be adjustable and independently set. The structure for colors and themes should be easy to understand and maintain. Apply another density results in adaptive typography and dimensions, such as sizing, spacing and border.

## General conditions and decision criteria

### General conditions
- The styling approach must allow easy adjustment of various parameters.
- The styling approach must cosider all adaptive tokens: color, typography and dimensions.
- Styling settings should be inheritable.
- Components should support adaptive identifier that use specific color schemes based on the current theme.
- The solution should balance performance, scalability, flexibility, and maintainability.

### Decision criteria
- **Performance:** Minimal performance overhead.
- **Scalability:** Capable of future extensions.
- **Maintainability:** Easy to maintain and understand.
- **Consistency:** Reliable and consistent application of styles.
- **Usability:** Simple for developers to use and integrate with existing SwiftUI components.

## Alternatives

### A - Custom Wrapper Components
Create custom wrapper components (e.g., `DSVStack`, `DSButton`, etc.) to apply styling.

#### Evaluation
- **Pros:**
  - Clear separation of styled components.
  - Centralized control enforcing consistent styling.
- **Cons:**
  - Increased complexity with additional wrapper components.
  - Potential performance overhead due to the extra hierarchy.
  - More effort required to integrate with existing SwiftUI components.
  - Less flexible and granular control over individual style attributes.

### B - ViewModifier
Use `ViewModifier` to apply styling directly to SwiftUI components.

#### Evaluation
- **Pros:**
  - Minimal performance overhead, lightweight, and composable.
  - High flexibility and granular control over individual style attributes.
  - Easy integration with existing SwiftUI components without extra hierarchy.
  - Simple inheritance of styles through modifier chaining.
  - Can use `@Environment` for inheritance.
- **Cons:**
  - Potential for scattered styling logic if not well organized.
  - Requires developers to apply multiple modifiers manually.

### C - View Extensions
Use custom view extensions to apply styling directly to SwiftUI components, utilizing `@Environment` for inheritance.

#### Evaluation
- **Pros:**
  - Similar benefits as ViewModifier, with centralized extension methods.
  - High flexibility and maintainable.
  - Simple inheritance via `@Environment`.
- **Cons:**
  - Potential complexity if the extensions grow large.
  - Risk of styling logic being less discoverable.

## Decision
We choose **Alternative B - ViewModifier** to apply individual styling attributes directly to SwiftUI components. This approach offers better performance, scalability, and flexibility, allowing for more granular control and easier integration with existing SwiftUI components.

## Consequences
- **Positive:**
  - Improved performance due to minimal overhead.
  - Flexible and granular control over styling attributes.
  - Easier integration with existing SwiftUI components.
  - Simple inheritance of styles through modifier chaining.
- **Negative:**
  - Potential for inconsistencies if styling logic is not managed centrally.
  - Developers need to apply multiple modifiers, requiring discipline to maintain consistency.

By implementing this approach, we ensure that our styling strategy remains clear, consistent, and scalable, providing a solid foundation for the design system and facilitating seamless updates.

## Links
- [Apple SwiftUI ViewModifier Documentation](https://developer.apple.com/documentation/swiftui/viewmodifier)
- [Apple SwiftUI Environment Values Documentation](https://developer.apple.com/documentation/swiftui/environment-values)

## Example Code

### Define Environment Entries and Modifiers

**DBUXFoundation/ThemeEnvironment.swift:**
```swift
import SwiftUI

extension EnvironmentValues {
    @Entry var dsThemeColorScheme: DSThemeColorScheme = getColorSchemeLight()
    @Entry var dsActiveColorScheme: DSAdaptiveColorScheme = getColorSchemeLight().neutral
}
```

**DBUXFoundation/DSThemeModifier.swift:**
```swift
import SwiftUI

struct DSThemeModifier: ViewModifier {
    @Environment(\.colorScheme) var systemColorScheme
    
    func body(content: Content) -> some View {
        content
            .themeColorScheme(adaptiveColorScheme)
            .activeColorScheme(adaptiveColorScheme.neutral)
    }
    
    var adaptiveColorScheme: DSThemeColorScheme {
        systemColorScheme == .dark ? getColorSchemeDark() : getColorSchemeLight()
    }
}

extension View {
    public func dsTheme() -> some View {
        modifier(DSThemeModifier())
    }
    
    func themeColorScheme(_ theme: DSThemeColorScheme) -> some View {
        environment(\.dsThemeColorScheme, colorScheme)
    }
    
    func activeColorScheme(_ color: DSAdaptiveColorScheme) -> some View {
        environment(\.dsActiveColorScheme, color)
    }
}
```

### Define Color Modifiers and Example Usage

**DBUXFoundation/ColorModifiers.swift:**
```swift
import SwiftUI

struct DSSetColorSchemeModifier: ViewModifier {
    @Environment(\.dsThemeColorScheme) var themeColorScheme
    var flag: DSAdaptiveFlag
    
    func body(content: Content) -> some View {
        let colors: DSAdaptiveColorScheme
        switch flag {
        case .neutral:
            colors = themeColorScheme.neutral
        case .critical:
            colors = themeColorScheme.critical
        // Add other flag cases as needed
        default:
            colors = themeColorScheme.neutral
        }
        
        return content.environment(\.dsActiveColorScheme, colors)
    }
}

extension View {
    func dsSetColorScheme(_ flag: DSAdaptiveFlag) -> some View {
        self.modifier(DSSetColorSchemeModifier(flag: flag))
    }
}

enum DSAdaptiveFlag: Hashable {
    case neutral
    case brand
    case informational
    case warning
    case successful
    case critical
    // Add additional flags as needed
}
```

### Example Usage

**ContentView.swift:**
```swift
import SwiftUI
import DBUXFoundation

struct ContentView: View {
    @Environment(\.dsThemeColorScheme) var themeColorScheme
    @Environment(\.dsActiveColorScheme) var activeColorScheme
    
    var body: some View {
        VStack {
            Text("Critical Alert")
                .dsSetColorScheme(.critical)
                .foregroundColor(activeColorScheme.bgBasicLevel1Default)
            Text("Neutral Text")
                .dsSetColorScheme(.neutral)
                .foregroundColor(activeColorScheme.bgBasicLevel1Default)
        }
        .dsTheme()
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .dsTheme()
    }
}
```
