//
//  ViewController.swift
//  SymbolRoller
//
//  Created by ChoiKwangWoo on 2023/06/19.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeWeather()
        button.tintColor = UIColor.systemPink
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let weather: Weather = Weather()
        let randomSymbol = weather.getWeatherSymbol()
        changeWeather(symbol: randomSymbol)
    }
    
    func changeWeather(symbol: String = "wind") {
        ImageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
}

