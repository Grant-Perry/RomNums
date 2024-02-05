//   routesListView.swift
//   RomNums
//
//   Created by: Grant Perry on 2/4/24 at 11:11 AM
//     Modified:
//
//  Copyright © 2024 Delicious Studios, LLC. - Grant Perry
//

import SwiftUI

struct routesListView: View {
	var body: some View {
		HStack {
			// Left side VStack
			VStack(alignment: .leading) {
				Text("Newport News")
					.padding([.top, .leading])
					.font(.title3)
					.fontWeight(.semibold)
					.foregroundColor(.white)
					.background(.blue.gradient)
				//				Divider()
				Rectangle()
					.frame(width: .infinity, height: 1)
					.foregroundColor(.gpGray)
				//					.padding(.horizontal)

				HStack {
					VStack(alignment: .trailing, spacing: 4) {
						Text("Date:")
						Text("Dist:")
						Text("Speed:")
					}
					.padding(.leading)
					.font(.footnote)

					VStack(alignment: .leading, spacing: 4) {
						Text("02/03/24").fontWeight(.semibold)
						Text("2.56 miles").fontWeight(.semibold)
						Text("3.4 MPH").fontWeight(.semibold)
					}
					.padding(.trailing)
					.font(.footnote)
				}
				.padding(.leading)
				.frame(maxWidth: .infinity, alignment: .leading)
			}

			// Vertical Divider
			//			Divider()
			Rectangle()
				.frame(width: 1, height: 200)
				.foregroundColor(.gpGray)


			// Right side VStack
			VStack {
				Spacer()
				HStack {
					Button(action: {}) {
						Text("Map")
							.foregroundColor(.white)
							.padding()
							.frame(height: 35)
							.background(.green.gradient)
							.cornerRadius(8)
					}
				}
				.padding([.top, .trailing])
				Spacer()
			}
		}

		.foregroundColor(.white)
		.frame(height: 130)
		.background(.blue.gradient)
		//		.background(RoundedRectangle( cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
		.cornerRadius(15)
//		.shadow(color: .white, radius: 10)
		.shadow(color: .gray, radius: 10, x: 0, y: 4)
		.padding()

	}
}


#Preview {
	routesListView()
}
