//   CityView.swift
//   RomNums
//
//   Created by: Grant Perry on 2/5/24 at 2:19 PM
//     Modified: 
//
//  Copyright © 2024 Delicious Studios, LLC. - Grant Perry
//

import SwiftUI
import CoreLocation
import MapKit

struct CityView: View {
	@State private var address: String = "Loading address..."
	var city: CityCoordinates

	var body: some View {
		VStack {
			HStack {
				VStack(alignment: .leading) {
					Text(city.cityName)
						.font(.system(size: 25)).bold()
						.lineLimit(1)
						.minimumScaleFactor(0.5)
						.scaledToFit()
						.foregroundColor(.white)
					Text(Date(), style: .date)
						.lineLimit(1)
						.minimumScaleFactor(0.5)
						.scaledToFit()
						.foregroundColor(.white)
					Divider()
					Text(address)
						.foregroundColor(.white)
						.onAppear {
							fetchAddress()
						}
						.font(.footnote)
				}
				.padding()
				.background(.blue.gradient)

				//				Spacer()
				Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: city.latitude,
																															 longitude: city.longitude),
																					latitudinalMeters: 10000, longitudinalMeters: 10000)))
			}
		}
		.frame(width: .infinity, height: 130)
//			.frame(maxWidth: .infinity, maxHeight: .infinity)
//			.edgesIgnoringSafeArea(.all)
			.cornerRadius(20)
//			.background(.blue.gradient)
			.shadow(radius: 5)
//		}
	}

	private func fetchAddress() {
		let geocoder = CLGeocoder()
		let location = CLLocation(latitude: city.latitude, longitude: city.longitude)

		geocoder.reverseGeocodeLocation(location) { (placemarks, error) in
			if let error = error {
				self.address = "Address not found: \(error.localizedDescription)"
				return
			}

			if let placemark = placemarks?.first {
				self.address = [placemark.thoroughfare, placemark.locality, placemark.administrativeArea, placemark.postalCode].compactMap { $0 }.joined(separator: ", ")
			}
		}
	}
}

