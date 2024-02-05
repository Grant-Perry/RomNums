//   CitiesListView.swift
//
//   Created by: Grant Perry on 2/5/24 at 2:22 PM
//     Modified: 
//
//  Copyright © 2024 Delicious Studios, LLC. - Grant Perry
//

import SwiftUI
import MapKit

struct CitiesListView: View {
	var body: some View {
			NavigationView {
				List(cityCoords.keys.sorted(), id: \.self) { key in
					if let city = cityCoords[key] {
						NavigationLink(destination: FullMapView(city: city)) {
							CityView(city: city)
						}
					}
				}
				.navigationTitle("Workouts")
			}
			.edgesIgnoringSafeArea(.all)
			.background(.blue.gradient)
		}
}

struct FullMapView: View {
	var city: CityCoordinates

	var body: some View {
		Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: city.latitude, 
																													 longitude: city.longitude),
																			latitudinalMeters: 2500, longitudinalMeters: 2500)))
			.edgesIgnoringSafeArea(.all)
			.navigationTitle(city.cityName)
			.background(.white)
	}

}


#Preview {
    CitiesListView()
}
