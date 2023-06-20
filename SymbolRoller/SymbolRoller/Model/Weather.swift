//
//  Weather.swift
//  SymbolRoller
//
//  Created by ChoiKwangWoo on 2023/06/20.
//

import Foundation

class Weather {
    private let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    func getWeatherSymbol() -> String {
        guard let randomSymbol = symbols.randomElement() else {
            return ""
        }
        return randomSymbol
    }
}
