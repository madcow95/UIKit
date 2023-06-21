//
//  City.swift
//  SympleWeather
//
//  Created by ChoiKwangWoo on 2023/06/21.
//

import Foundation

class City {
    private let cities: [String] = [
        "Seoul",
        "Tokyo",
        "LA",
        "Seattle"
    ]
    
    func getRandomCity() -> String {
        guard let randomCity = self.cities.randomElement() else {
            return "Seoul"
        }
        return randomCity
    }
}
