//
//  ContentView.swift
//  WeattherForecast
//
//  Created by Станислав Леонов on 20.06.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(
                day: "Monday",
                isRainy: false,
                high: 30,
                low: 22
            )
            DayForecast(
                day: "Tuesday",
                isRainy: false,
                high: 25,
                low: 18
            )
            DayForecast(
                day: "Wednesday",
                isRainy: true,
                high: 18,
                low: 12
            )
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max"
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.largeTitle)
                .padding(5)
            Text("High: \(high)ºC")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)°C")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
