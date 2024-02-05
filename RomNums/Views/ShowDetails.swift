//   ShowDetails.swift
//   RomNums
//
//   Created by: Grant Perry on 2/4/24 at 1:12 PM
//     Modified: 
//
//  Copyright © 2024 Delicious Studios, LLC. - Grant Perry
//

import SwiftUI

struct ShowDetails: View {
	@State private var appear = false

	var body: some View {
		NavigationView {
			ScrollView {
				VStack(spacing: -15) {
					ForEach(0..<10, id: \.self) { index in
						NavigationLink(destination: DetailView(id: index)) {
							routesListView()
						}
						.opacity(appear ? 1 : 0) // Initially invisible, becomes fully opaque
						.animation(.easeInOut(duration: 1).delay(0.1 * Double(index)), value: appear) // Delay based on index
					}
				}
				.onAppear {
					appear = true // Triggers the animation when the view appears
				}
			}
			.navigationTitle("Routes List")
			.background(Color.white)
		}
	}
}

struct DetailView: View {
	var id: Int

	var body: some View {
		Text("Detail View \(id)")
			.font(.system(size: 35)).bold()
			.foregroundColor(.white)
			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(Color.blue)
			.edgesIgnoringSafeArea(.all)
	}
}


#Preview {
    ShowDetails()
}
