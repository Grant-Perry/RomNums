//   cityCoords.swift
//   RomNums
//
//   Created by: Grant Perry on 2/5/24 at 1:30 PM
//     Modified: 
//
//  Copyright © 2024 Delicious Studios, LLC. - Grant Perry
//

import SwiftUI

struct CityCoordinates {
	var cityName: String
	var longitude: Double
	var latitude: Double
}

let cityCoords: [String: CityCoordinates] = [
	"New York": CityCoordinates(cityName: "New York", longitude: -74.005973, latitude: 40.712776),
	"Los Angeles": CityCoordinates(cityName: "Los Angeles", longitude: -118.243685, latitude: 34.052234),
	"Chicago": CityCoordinates(cityName: "Chicago", longitude: -87.629798, latitude: 41.878113),
	"Houston": CityCoordinates(cityName: "Houston", longitude: -95.369803, latitude: 29.760427),
	"Phoenix": CityCoordinates(cityName: "Phoenix", longitude: -112.074037, latitude: 33.448377),
	"Philadelphia": CityCoordinates(cityName: "Philadelphia", longitude: -75.165222, latitude: 39.952583),
	"San Antonio": CityCoordinates(cityName: "San Antonio", longitude: -98.493628, latitude: 29.424122),
	"San Diego": CityCoordinates(cityName: "San Diego", longitude: -117.161084, latitude: 32.715738),
	"Dallas": CityCoordinates(cityName: "Dallas", longitude: -96.7970, latitude: 32.7767),
	"San Jose": CityCoordinates(cityName: "San Jose", longitude: -121.886329, latitude: 37.338208),
	"Austin": CityCoordinates(cityName: "Austin", longitude: -97.743061, latitude: 30.267153),
	"Jacksonville": CityCoordinates(cityName: "Jacksonville", longitude: -81.655651, latitude: 30.332184),
	"Fort Worth": CityCoordinates(cityName: "Fort Worth", longitude: -97.330766, latitude: 32.755488),
	"Columbus": CityCoordinates(cityName: "Columbus", longitude: -82.998794, latitude: 39.961176),
	"Charlotte": CityCoordinates(cityName: "Charlotte", longitude: -80.843127, latitude: 35.227087),
	"San Francisco": CityCoordinates(cityName: "San Francisco", longitude: -122.419416, latitude: 37.774929),
	"Indianapolis": CityCoordinates(cityName: "Indianapolis", longitude: -86.158068, latitude: 39.768403),
	"Seattle": CityCoordinates(cityName: "Seattle", longitude: -122.332071, latitude: 47.606209),
	"Denver": CityCoordinates(cityName: "Denver", longitude: -104.990251, latitude: 39.739236),
	"Washington": CityCoordinates(cityName: "Washington D.C.", longitude: -77.036871, latitude: 38.907192),
	"Boston": CityCoordinates(cityName: "Boston", longitude: -71.058880, latitude: 42.360082),
	"El Paso": CityCoordinates(cityName: "El Paso", longitude: -106.485022, latitude: 31.761878),
	"Detroit": CityCoordinates(cityName: "Detroit", longitude: -83.045754, latitude: 42.331427),
	"Nashville": CityCoordinates(cityName: "Nashville", longitude: -86.781602, latitude: 36.162664),
	"Memphis": CityCoordinates(cityName: "Memphis", longitude: -90.048980, latitude: 35.149534),
	"Portland": CityCoordinates(cityName: "Portland", longitude: -122.676482, latitude: 45.523062),
	"Las Vegas": CityCoordinates(cityName: "Las Vegas", longitude: -115.139830, latitude: 36.169941),
	"Louisville": CityCoordinates(cityName: "Louisville", longitude: -85.758456, latitude: 38.252665),
	"Baltimore": CityCoordinates(cityName: "Baltimore", longitude: -76.612189, latitude: 39.290385),
	"Milwaukee": CityCoordinates(cityName: "Milwaukee", longitude: -87.906474, latitude: 43.038902),
	"Albuquerque": CityCoordinates(cityName: "Albuquerque", longitude: -106.650422, latitude: 35.084386),
	"Tucson": CityCoordinates(cityName: "Tucson", longitude: -110.974711, latitude: 32.222607),
	"Fresno": CityCoordinates(cityName: "Fresno", longitude: -119.787125, latitude: 36.737798),
	"Sacramento": CityCoordinates(cityName: "Sacramento", longitude: -121.494400, latitude: 38.581572),
	"Kansas City": CityCoordinates(cityName: "Kansas City", longitude: -94.578567, latitude: 39.099727),
	"Long Beach": CityCoordinates(cityName: "Long Beach", longitude: -118.193740, latitude: 33.770050),
	"Mesa": CityCoordinates(cityName: "Mesa", longitude: -111.831472, latitude: 33.415184),
	"Atlanta": CityCoordinates(cityName: "Atlanta", longitude: -84.387982, latitude: 33.748995),
	"Colorado Springs": CityCoordinates(cityName: "Colorado Springs", longitude: -104.821363, latitude: 38.833882),
	"Virginia Beach": CityCoordinates(cityName: "Virginia Beach", longitude: -75.978835, latitude: 36.852926),
	"Raleigh": CityCoordinates(cityName: "Raleigh", longitude: -78.638179, latitude: 35.779590),
	"Omaha": CityCoordinates(cityName: "Omaha", longitude: -95.934503, latitude: 41.256537),
	"Miami": CityCoordinates(cityName: "Miami", longitude: -80.191790, latitude: 25.761680),
	"Oakland": CityCoordinates(cityName: "Oakland", longitude: -122.271114, latitude: 37.804364),
	"Minneapolis": CityCoordinates(cityName: "Minneapolis", longitude: -93.265011, latitude: 44.977753)
]

// Combine with the existing cityCoords
//let updatedCityCoords = combinedCityCoords.merging(moreCityCoords) { (current, _) in current }
