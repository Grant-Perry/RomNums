//   showAddress.swift
//   RomNums
//
//   Created by: Grant Perry on 2/4/24 at 9:46 AM
//     Modified: 
//
//  Copyright © 2024 Delicious Studios, LLC. - Grant Perry
//

import SwiftUI
import CoreLocation

struct showAddress: View {
	var locationManager = LocationManager()

	var body: some View {
		ZStack {
			LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue.opacity(0.7)]), startPoint: .topLeading, endPoint: .bottomTrailing)
				.edgesIgnoringSafeArea(.all)

			VStack {
				Text(locationManager.placeName)
					.font(.system(size: 30)).bold()
					.foregroundColor(.white)
					.shadow(color: .brown, radius: 10)
//					.scaledToFit()
					.multilineTextAlignment(.leading)
					.padding()

				Text(locationManager.detailedAddress)
					.font(.system(size: 15)).bold()
					.foregroundColor(.white)
					.multilineTextAlignment(.center)
					.padding(.top, -35)
					.padding()
			}
			.frame(width: 500, height: 100)
			.background(.blue.gradient)
		}

	}
}

#Preview {
    showAddress()
}
