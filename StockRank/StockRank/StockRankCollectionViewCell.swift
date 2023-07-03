//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by ChoiKwangWoo on 2023/06/22.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var companyIconImageView: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var stockPriceLabel: UILabel!
    @IBOutlet weak var diffLabel: UILabel!

    func configure(stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        companyIconImageView.image = UIImage(named: stock.imageName)
        companyNameLabel.text = stock.name
        
        let convertedPrice = convertToCurrencyFormat(price: stock.price)
        stockPriceLabel.text = "\(convertedPrice) 원"
        
        let diffLabelColor = stock.diff > 0 ? UIColor.red : UIColor.blue
        diffLabel.text = "\(stock.diff)%"
        diffLabel.textColor = diffLabelColor
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        // 몇자리 소수점까지 표시할 것인지
        // default : 0
        // 3을 입력하면 소수점 3번째 자리까지 출려
        numberFormatter.maximumFractionDigits = 0
        guard let priceToString = numberFormatter.string(from: NSNumber(value: price)) else {
            return ""
        }
        return priceToString
    }
}
