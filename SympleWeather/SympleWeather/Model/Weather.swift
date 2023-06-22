//
//  Weather.swift
//  SympleWeather
//
//  Created by ChoiKwangWoo on 2023/06/21.
//

import Foundation

struct Weather {
    private let weathers: [String] = [
        "cloud.fill",
        "sun.max.fill",
        "wind",
        "cloud.sun.rain.fill"
    ]
    
    func getRandomWeather() -> String {
        guard let randomWeather = self.weathers.randomElement() else {
            return "wind"
        }
        return randomWeather
    }
}
