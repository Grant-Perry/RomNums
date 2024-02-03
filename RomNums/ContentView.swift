//   ContentView.swift
//   RomNums
//
//   Created by: Gp. on 2/2/24 at 7:44 PM
//     Modified:
//
//  Copyright © 2024 Delicious Studios, LLC. - Grant Perry
//

import SwiftUI

struct ContentView: View {
	@State private var input = ""
	@State private var output = ""
	@State private var lastValidConversion = 0

	// DateFormatter setup
	let formatter = DateFormatter()
	let currentYear: String

	init() {
		formatter.dateFormat = "yyyy"
		currentYear = formatter.string(from: Date())
	}

	var body: some View {
			ZStack {
				Color.white // Background color
				VStack {
					Spacer()
					VStack {
						Text("\nRoman Numeral")
							.font(.title)
							.foregroundColor(.white)
						Text("Converter")
							.font(.title2)
							.foregroundColor(.white)
					}
					.padding()
					//			 .background(.blue.gradient) // Uncomment if .blue.gradient is defined
					ScrollView {
						ZStack {
							Color.white // Background color
								.frame(width: 50)
								.cornerRadius(10) // If you want rounded corners
								.padding(.horizontal) // Match the horizontal padding of the TextField

							TextField("Enter Number to Convert", text: $input)
								.onChange(of: input) { _ in
									let convertedOutput = convertInput(input: input)
									if convertedOutput != "Invalid Input" {
										output = convertedOutput
									} else {
										output = "Invalid Input"
									}
								}
//								.ignoresSafeArea(.keyboard, edges: .bottom)
								.padding()
								.font(.subheadline)
								.background(.white)
								.textFieldStyle(PlainTextFieldStyle())
								.foregroundColor(.black)
								.frame(width: 200, height: 50)
								.cornerRadius(10) // Optional for rounded corners
						}
						.padding()

					.cornerRadius(20)
					//			.background(.blue.gradient)

					VStack {
						VStack {
							Text(input.isEmpty ? "" : output)
								.padding(.top, 50)
								.kerning(5)
								.font(.system(size: 75))
								.bold()
								.foregroundColor(.white)
								.shadow(color: .brown, radius: 10)
								.frame(width: 900, height: 300)
						}
						Button(action: resetInput) {
							Text("Reset")
								.padding()
								.foregroundColor(.white)
								.background(.green) // .green.gradient if gradient is defined
								.cornerRadius(10)
								.shadow(color: .white, radius: 10)
						}
						Spacer()
					}
				}

					VStack {
						Divider()
						Text("Copyright \u{00A9} \(currentYear)\nDelicious Studios")
							.padding()
							.font(.system(size: 10))
							.foregroundColor(.white)
					}
					.frame(width: 500, height: 65)
					.background(Color.blue.gradient)
				}
				.frame(width: 900, height: 900)
				.background(Color.blue.gradient)
			}
			.preferredColorScheme(.light)

	}


	private func convertInput(input: String) -> String {
		if let intValue = Int(input) {
			return intToRoman(intValue)
		} else {
			let romanValue = romanToInt(input.uppercased())
			return romanValue >= 0 ? String(romanValue) : "Invalid Input"
		}
	}

	private func romanToInt(_ s: String) -> Int {
		let romanValues: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
		var result = 0
		var previousValue = 0

		for char in s.reversed() {
			if let value = romanValues[char] {
				if value < previousValue {
					result -= value
				} else {
					result += value
				}
				previousValue = value
			} else {
				return -1 // Invalid character
			}
		}
		return result
	}

	private func intToRoman(_ num: Int) -> String {
		let numeralPairs: [(Int, String)] = [
			(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
			(100, "C"), (90, "XC"), (50, "L"), (40, "XL"),
			(10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")
		]

		var number = num
		var result = ""

		for (value, symbol) in numeralPairs {
			while number >= value {
				number -= value
				result += symbol
			}
		}

		return result
	}

	private func resetInput() {
		input = ""
		output = ""
		lastValidConversion = 0
	}
}

#Preview {
	ContentView()
}
