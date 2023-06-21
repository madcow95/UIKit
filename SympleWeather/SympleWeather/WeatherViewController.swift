//
//  ViewController.swift
//  SympleWeather
//
//  Created by ChoiKwangWoo on 2023/06/21.
//

import UIKit

class WeatherViewController: UIViewController {
    
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let city: City = City()
        let weather: Weather = Weather()
        
        let randomCity = city.getRandomCity()
        let randomWeather = weather.getRandomWeather()
        let randomTemperature: Int = Int.random(in: 10...20)
        
        cityLabel.text = randomCity
        weatherImage.image = UIImage(systemName: randomWeather)?.withRenderingMode(.alwaysOriginal)
        temperatureLabel.text = "\(randomTemperature)°"
    }
}

