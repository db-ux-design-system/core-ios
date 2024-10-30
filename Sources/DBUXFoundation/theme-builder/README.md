# How to use the theme

1. Move the `theme` directory into your project
3. Add your theme to your `ContentView`:

```swift
import SwiftUI

@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .dsTheme()
        }
    }
}
```

Use the tokens like this:
```swift
import SwiftUI

struct ContentView: View {
    @Environment(\.theme) var theme
    
    var body: some View {
        Text("Headline")
            .font(theme.fonts.h1.font)
            .foregroundColor(theme.activeColor.onBgBasicEmphasis80Default)
            .padding(theme.dimensions.spacing.responsiveXs)
    }
}
```

To use another theme, export it and copy the `theme/<theme name>` directory to your project. Set it like this:

```swift
// Code from step 3
@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .dsTheme(<theme name>Theme())
        }
    }
}
```
