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
        stockPriceLabel.text = "\(stock.price) 원"
        diffLabel.text = "\(stock.diff)%"
    }
}
