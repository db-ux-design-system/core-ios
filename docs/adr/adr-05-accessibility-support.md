# ADR-05 - Utilize Native Accessibility APIs in the Design System

## Decision and justification

We need to integrate native accessibility features and settings into our Design
System components, including a detailed implementation plan. This includes using
native accessibility APIs to ensure our colors, spacing, and typography comply
with accessibility standards predominantly for iOS and iPadOS.

## Problem description and context

The Design System must support various accessibility features to comply with
accessibility standards and ensure an optimal experience for all users,
including those with disabilities. This involves leveraging native APIs for
features such as VoiceOver, Dynamic Type, Bold Text, Increase Contrast, and
more.

## General conditions and decision criteria

### General conditions

* **Target User Groups:** All users, with a focus on those with visual,
  auditory, motor, and cognitive disabilities.
* **Platforms Supported:** Primarily iOS and iPadOS.
* **Native Accessibility Features to be Supported:**
  * VoiceOver
  * Dynamic Type
  * Bold Text
  * Increase Contrast
  * Reduce Transparency
  * Reduce Motion
  * Monochrome
* **Affected Components:** Colors, spacing, and typography from the Foundation
  Package.
* **Standards and Guidelines:** Compliant with WCAG AA standards.
* **Testing and Validation:** Automated testing in the CI pipeline.
* **Documentation:** Only high-level documentation indicating that accessibility
  features are implemented.
* **User Customizations:** Support for user customizations and settings for
  accessibility.

### Decision criteria

* **Compliance:** The Design System must comply with WCAG AA standards.
* **Ease of Integration:** Attributes related to accessibility should be easily
  integrated into the Design System.
* **Maintainability:** The solution should be easy to maintain and update.
* **Compatibility:** It should support the features and settings on iOS and
  iPadOS.
* **Scalability:** The solution should support different screen sizes,
  resolutions, and themes.
* **Testing:** Automated testing for accessibility features.

## Decision

We have decided to utilize native accessibility APIs to integrate accessibility
features and settings into our Design System components, with specific
implementation details for each feature.

## Links

* [Apple Accessibility Overview](https://developer.apple.com/accessibility/)
* [WCAG 2.1 Guidelines](https://www.w3.org/WAI/standards-guidelines/wcag/)
* [Xcode Accessibility Inspector](https://developer.apple.com/videos/play/wwdc2019/253/)
* [SwiftUI Accessibility Guide](https://developer.apple.com/documentation/swiftui/accessibility)

## Implementation Plan

### Step-by-Step Implementation

1. **Define Accessibility Attributes:**
   * Identify and define the accessibility attributes required for each
   * component in the Design System, including colors, spacing, and typography.

2. **Dynamic Type Implementation:**
   * For each text style (h1, h2, h3, h4, h5, h6, p, small), map the custom text
     sizes to the appropriate Apple text styles to support Dynamic Type.

   **Mapping Example:**

   ```swift
   struct Typography {
       static func font(forTextStyle textStyle: TextStyle) -> Font {
           switch textStyle {
           case .h1:
               return Font.system(size: 34, weight: .bold)
                   .scaledToFitTextStyle(.largeTitle)
           case .h2:
               return Font.system(size: 28, weight: .bold)
                   .scaledToFitTextStyle(.title1)
           case .h3:
               return Font.system(size: 22, weight: .bold)
                   .scaledToFitTextStyle(.title2)
           case .h4:
               return Font.system(size: 20, weight: .semibold)
                   .scaledToFitTextStyle(.title3)
           case .h5:
               return Font.system(size: 17, weight: .semibold)
                   .scaledToFitTextStyle(.headline)
           case .h6:
               return Font.system(size: 15, weight: .medium)
                   .scaledToFitTextStyle(.subheadline)
           case .p:
               return Font.system(size: 17, weight: .regular)
                   .scaledToFitTextStyle(.body)
           case .small:
               return Font.system(size: 13, weight: .regular)
                   .scaledToFitTextStyle(.caption1)
           }
       }
   }
   
   extension Font {
       func scaledToFitTextStyle(_ textStyle: UIFont.TextStyle) -> Font {
           return self
               .scaledToFill()
               .adaptiveFontSize(for: textStyle)
       }
   }
   
   extension Font {
       func adaptiveFontSize(for textStyle: UIFont.TextStyle) -> Font {
           guard let customFont = UIFont(name: self.name, size: self.size) else {
               return self
           }

           return Font(UIFontMetrics(forTextStyle: textStyle).scaledFont(for: customFont))
       }
   }
   ```

3. **VoiceOver Implementation:**
    * Ensure all interactive elements have appropriate accessibilityLabel,
      accessibilityHint, and accessibilityTraits.
    * Group related UI elements using accessibilityContainers where necessary.

    **VoiceOver Example:**

    ```swift
    struct AccessibleButton: View {
        var body: some View {
            Button(action: {
                // Button action
            }) {
                Text("Submit")
            }
            .accessibility(label: Text("Submit button"))
            .accessibility(hint: Text("Double tap to submit the form"))
            .accessibility(addTraits: .isButton)
        }
    }
    ```

4. **Bold Text Implementation:**
    * Ensure that all text elements respect the bold text user setting by using
      the `.bold()` modifier or appropriate Font settings.

    **Bold Text Example:**

    ```swift
    struct BoldTextExampleView: View {
        @Environment(\.isBoldTextEnabled) var isBoldTextEnabled

        var body: some View {
            Text("Bold Text Example")
                .font(isBoldTextEnabled ? .headline.bold() : .headline)
                .accessibility(label: Text("Example with Bold Text"))
        }
    }
    ```

5. **Increased Contrast Implementation:**
    * Adjust colors to ensure adequate contrast using
      SwiftUI’s `.colorMultiply()` method to dynamically adjust color contrast.

    **High Contrast Example:**

    ```swift
    struct HighContrastView: View {
        @Environment(\.accessibilityContrast) var accessibilityContrast

        var body: some View {
            let backgroundColor = accessibilityContrast == .high ? Color.black : Color.gray

            VStack {
                Text("High Contrast")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(backgroundColor)
                    .cornerRadius(8)
            }
        }
    }
    ```

6. **Validation and Compliance:**
    * Continuously monitor and validate the accessibility compliance of
      components using automated tests.
    * Maintain compliance with WCAG AA standards through regular updates and
      refinements.
