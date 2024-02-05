//   GetAddress.swift
//
//   Created by: Grant Perry on 2/4/24 at 9:32 AM
//     Modified: 
//
//  Copyright © 2024 Delicious Studios, LLC. - Grant Perry
//

import SwiftUI
import CoreLocation
import Observation

@Observable
class LocationManager: NSObject, CLLocationManagerDelegate {
	private var locationManager = CLLocationManager()
	var placeName = "Seeking..."
	var detailedAddress = ""
	
	override init() {
		super.init()
		locationManager.delegate = self
		locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
		locationManager.requestWhenInUseAuthorization()
		locationManager.startUpdatingLocation()
	}
	
	func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		guard let location = locations.last else {
			print("No location found")
			return
		}
		
		CLGeocoder().reverseGeocodeLocation(location) { [weak self] (placemarks, error) in
			if let error = error {
				print("Reverse geocoding failed with error: \(error.localizedDescription)")
				DispatchQueue.main.async {
					self?.placeName = "Unable to find address"
				}
				return
			}
			
			if let placemark = placemarks?.first {
				DispatchQueue.main.async {
					self?.placeName = placemark.name ?? "Not Available"
					let additionalDetails = [
						placemark.locality,
						placemark.administrativeArea,
						placemark.postalCode
					].compactMap { $0 }.joined(separator: ", ")
					self?.detailedAddress = additionalDetails
				}
			}
		}
	}
}

