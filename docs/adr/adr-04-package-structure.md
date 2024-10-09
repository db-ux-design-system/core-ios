# ADR-01 - Modular Package Structure for UX Design System

## Decision and justification
To maintain a clean, modular, and reusable codebase for our DB UX Design System, we will organize design tokens (such as colors, typography, spacing) and complete components (such as text fields and modal dialogs) into separate modules within the Swift Package. This separation will facilitate easier integration for developers who may only need specific parts of the design system.

## Problem description and context
A standardized and modular package structure is essential for achieving an efficient, maintainable, and scalable design system. By structuring the package modularly, we can ensure that all components and design tokens are organized effectively. This approach makes it easier for developers to integrate only the parts they need, without unnecessary code inclusion.

Using a modular architecture allows for independent development and integration of additional design components. It enables developers to create new components and simply import existing design tokens, ensuring consistency across all components while maintaining the flexibility to expand the design system as needed. This modular structure also aids in reducing dependencies and maintaining a lean, efficient system.

## General conditions and decision criteria

### General conditions
- The package must be easy to integrate with existing projects.
- Both design tokens and components should be easily accessible and independently maintainable.
- The package should remain lean, only including necessary dependencies for the specific parts being used.

### Decision criteria
- **Modularity:** The package structure should allow developers to include only the parts of the system they need.
- **Maintainability:** Design tokens and components should be maintained separately to promote cleaner code organization.
- **Efficiency:** The system should minimize unnecessary code inclusion and dependencies.

## Alternatives

### A - Monolithic Package Structure

#### Evaluation
- **Pros:** Simplified structure with all elements in one place.
- **Cons:** Leads to unnecessary code inclusion, harder maintenance, and more challenging project integration.

### B - Modular Package Structure

#### Evaluation
- **Pros:** Encourages clean code separation, easier maintenance, and efficient project integration.
- **Cons:** Initially requires more setup and thoughtful organization.

## Decision
We will adopt **Option B - Modular Package Structure**. This decision is based on the following reasons:

1. **Flexibility and Clarity:** A modular package will provide developers the flexibility to integrate and maintain only the parts they need, ensuring efficient and clear code organization.
2. **Independent Maintenance:** Managing design tokens and components separately allows for cleaner code and easier updates without affecting other parts of the system.
3. **Scalability:** The modular structure supports independent updates and the addition of new components, making it easier to expand the design system as needed.

## Consequences
- **Positive:** The modular package structure will ensure minimal code bloat, facilitate independent updates, and promote clearer code organization. It will also support lean and efficient integration.
- **Negative:** Initial implementation may require more effort and a well-thought-out structure.

By implementing a modular package structure for the DB UX Design System, we ensure that the system remains clear, consistent, and scalable, providing an excellent developer experience and facilitating its adoption across various projects and organizations.

## Links
- [Swift Package Manager Documentation](https://swift.org/package-manager/)

## Example Code

### Package Structure
```
MyDesignSystem/
├── Package.swift
├── Sources/
│   ├── Foundation/
│   │   ├── DBColors.swift
│   │   ├── DBTypography.swift
│   │   ├── DBSpacing.swift
│   │   └── ...
│   ├── Components/
│   │   ├── DBTextField.swift
│   │   ├── DBModalDialog.swift
│   │   └── ...
│   └── Utilities/
│       └── ...
└── Tests/
    ├── FoundationTests/
    ├── ComponentsTests/
    └── ...
```

### Foundation (Foundation/DBColors.swift)
```swift
import SwiftUI

public enum DBColors {
    public static let primary = Color("PrimaryColor", bundle: .module)
    public static let secondary = Color("SecondaryColor", bundle: .module)
    // Additional colors...
}
```

### Component (Components/DBTextField.swift)
```swift
import SwiftUI
import Foundation

public struct DBTextField: View {
    @Binding var text: String
    let placeholder: String

    public init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
    }

    public var body: some View {
        TextField(placeholder, text: $text)
            .padding(DBSpacing.medium)
            .background(DBColors.secondary)
            .cornerRadius(8.0)
            .font(DBTypography.body)
    }
}
```

### Package.swift Configuration
```swift
// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "DB UX Design System",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "Foundation",
            targets: ["Foundation"]),
        .library(
            name: "Components",
            targets: ["Components"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Foundation",
            dependencies: []),
        .target(
            name: "Components",
            dependencies: ["Foundation"]),
        .testTarget(
            name: "FoundationTests",
            dependencies: ["Foundation"]),
        .testTarget(
            name: "ComponentsTests",
            dependencies: ["Components"]),
    ]
)
```
