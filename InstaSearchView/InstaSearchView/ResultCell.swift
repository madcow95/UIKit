//
//  ResultCell.swift
//  InstaSearchView
//
//  Created by ChoiKwangWoo on 2023/07/09.
//

import UIKit

class ResultCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        thumbnailImageView.image = nil
    }
    
    func configure(imageName: String) {
        thumbnailImageView.image = UIImage(named: imageName)
    }
}
