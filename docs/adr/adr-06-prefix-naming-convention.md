# ADR-06 - Prefix Naming Convention for Components & Accessors

## Decision and justification

To ensure clarity, consistency, and scalability, we will adopt a systematic
naming convention for all components and accessors within our DB UX Design
System. The names will follow specific rules to make the system intuitive and
easy to use, while also preventing naming collisions and ensuring compatibility
with SwiftUI standards.

## Problem description and context

A standardized naming convention is essential for achieving clear identification
and avoiding conflicts within the design system. By adopting a consistent naming
strategy, we can ensure that all components are easily recognizable as part of
the Design System, which aids in both development and maintenance.

## General conditions and decision criteria

### General conditions

* The naming convention should facilitate easy integration and usage, providing
  clear and intuitive names for all components and accessors.
* Names must avoid conflicts with existing framework or library names.
* The convention should support future scalability, accommodating the addition
  of new components without breaking established patterns.

### Decision criteria

* **Unique Prefix:** Use a unique prefix to categorize components of our design
  system.
* **Short Names:** Prefer shorter names for brevity and ease of use.
* **SwiftUI Alignment:** Names should align with SwiftUI conventions to ensure
  familiarity and ease of integration.
* **Modular Flexibility:** The naming convention should support modularity,
  ensuring that additional components can be seamlessly integrated.
* **Collision Prevention:** Implement a prefix strategy to avoid potential
  naming collisions.

## Alternatives

### A - Company-Specific Prefix (e.g., `DB`)

#### Evaluation

* **Pros:** Clearly identifies components as part of the Deutsche Bahn design
  system.
* **Cons:** Could deter other companies from using the design system due to the
  company-specific prefix, leading to a sense of ownership by Deutsche Bahn.

### B - Neutral Prefix (e.g., `DS` for Design System)

#### Evaluation

* **Pros:** Neutral prefix that can be adopted by any organization, reducing the
  risk of conflicts with other company-specific prefixes.
* **Cons:** Less immediate brand recognition for Deutsche Bahn components, but
  increases the system's universality.

### C - No Prefix, Suffix Only

#### Evaluation

* **Pros:** Simplifies names by focusing on the type indicator and eliminates
  potential prefix conflicts.
* **Cons:** May lead to naming collisions with existing SwiftUI or third-party
  components. Less clear association with the design system.

### D - Component Type Prefix (e.g., `View`, `Button`)

#### Evaluation

* **Pros:** Emphasizes the function of the component upfront, which can be
  useful for readability.
* **Cons:** Could result in verbose and less intuitive names, may not clearly
  indicate that the component belongs to the design system.

### E - Namespace (e.g., via nested enums or structs)

#### Evaluation

* **Pros:** Provides a clear scope for all design system components, reducing
  the risk of naming collisions. Namespaces make it clear that components and
  accessors belong to the design system.
* **Cons:** Adds an extra layer of nesting, which can make usage more verbose
  and may affect readability.

## Decision

We will adopt **Option B - Neutral Prefix (e.g., `DS` for Design System)**. This
approach ensures unique identification, reinforces brand recognition, and
provides consistency with our established design system. It balances the need to
prevent naming collisions with SwiftUI components while supporting a modular and
scalable design system.

## Consequences

* **Positive:** The naming convention will provide clarity and consistency,
  ensuring easy integration and maintenance. The use of an neutral prefix avoids
  naming collisions.
* **Negative:** Initial transition to the new naming convention may require
  updates to existing components and documentation. Less immediate brand
  recognition for Deutsche Bahn.

By implementing this naming convention, we ensure that our UX Design System
remains clear, consistent, and scalable, providing an excellent developer
experience and facilitating its adoption across various projects and
organizations.

## Naming Convention Guidelines

1. **Prefix with `DS` (Design System):** All components and accessors will be
   prefixed with `DS`.
2. **Short and Concise:** Names should be as short as possible while still
   clearly conveying the component's purpose.
3. **Alignment with SwiftUI:** Follow SwiftUI naming conventions to enhance
   familiarity and ease of use.
4. **Modular and Extensible:** Ensure the structure supports the addition of new
   components without breaking the established pattern.

## Example Code

### Design Tokens (DBUXFoundation/Colors.swift)

```swift
import SwiftUI

public enum DSColors {
    public static let primary = Color("PrimaryColor", bundle: .module)
    public static let secondary = Color("SecondaryColor", bundle: .module)
    // Additional colors...
}
```

### Components/TextField.swift

```swift
import SwiftUI
import DBUXFoundation

public struct DSTextField: View {
    @Binding var text: String
    let placeholder: String

    public init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
    }

    public var body: some View {
        SwiftUI.TextField(placeholder, text: $text)
            .padding(DSSpacing.medium)
            .background(DSColors.secondary)
            .cornerRadius(8.0)
            .font(DSTypography.body)
    }
}
```

### Modifiers/TextFieldModifier.swift

```swift
import SwiftUI
import DSUXFoundation

struct DSTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(DSSpacing.medium)
            .background(DSColors.secondary)
            .cornerRadius(8.0)
            .font(DSTypography.body)
    }
}

extension View {
    func dbTextFieldStyle() -> some View {
        self.modifier(DSTextFieldModifier())
    }
}
```

### ContentView.swift

```swift
import SwiftUI
import DSUXFoundation
import Components

struct ContentView: View {
    @State private var text = ""

    var body: some View {
        VStack {
            Text("Enter your name:")
                .font(.headline)
            DSTextField(text: $text, placeholder: "Name")
                .padding()
            Text("Hello, \(text)!")
                .font(.title)
                .padding()
        }
        .padding()
    }
}

// Alternative usage of ViewModifiers
struct ContentViewWithModifier: View {
    @State private var text = ""

    var body: some View {
        VStack {
            Text("Enter your name:")
                .font(.headline)
            SwiftUI.TextField("Name", text: $text)
                .dsTextFieldStyle() // Using the custom ViewModifier
                .padding()
            Text("Hello, \(text)!")
                .font(.title)
                .padding()
        }
        .padding()
    }
}
```
