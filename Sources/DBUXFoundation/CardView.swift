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
import SwiftUI

struct CardView: ViewModifier {
	let elevation: DSSubElevation?
	let spacing: CGFloat?
	@Environment(\.theme) var theme

	func body(content: Content) -> some View {
		content
			.padding(.vertical, spacing ?? theme.dimensions.spacing.responsiveXs)
			.padding(.horizontal, spacing ?? theme.dimensions.spacing.responsiveXs)
			.cornerRadius(theme.dimensions.border.radiusSm)
			.overlay( /// use overlay to draw rounded corners as RoundedRectacle, thus avoid clipping
				RoundedRectangle(cornerRadius: theme.dimensions.border.radiusSm)
					.stroke(theme.activeColor.bgBasicLevel1Default, lineWidth: theme.dimensions.border.height3xs)
			)
			.dsShadow()
	}
}

extension View {
	func cardView(elevation: DSSubElevation? = DSElevation.sm, spacing: CGFloat? = nil) -> some View {
		self.modifier(CardView(elevation: elevation, spacing: spacing))
	}
}

#Preview("CardView light") {
	VStack(alignment: .center, spacing: 25) {
		Text("CardView")
			.font(DeutscheBahnTheme().fonts.bodyLg.font)
			.cardView(elevation: DSElevation.md)
			.dsTheme()
		Rectangle()
			.fill(.white)
			.frame(width: 100, height: 100, alignment: .center)
			.cardView(elevation: DSElevation.md)
			.dsTheme()
		Button(action: {}, label: {Text("Schaltfläche").font(DeutscheBahnTheme().fonts.bodyLg.font)})
			.cardView(elevation: DSElevation.md)
			.dsTheme()
	}
}

#Preview("CardView dark") {
	VStack(alignment: .center, spacing: 25) {
		Text("CardView")
			.font(DeutscheBahnTheme().fonts.bodyLg.font)
			.cardView(elevation: DSElevation.md)
			.dsTheme()
		Rectangle()
			.frame(width: 100, height: 100, alignment: .center)
			.cardView(elevation: DSElevation.md)
			.dsTheme()
		Button(action: {}, label: {Text("Schaltfläche").font(DeutscheBahnTheme().fonts.bodyLg.font)})
			.cardView(elevation: DSElevation.md)
			.dsTheme()
	}.preferredColorScheme(.dark)
}
