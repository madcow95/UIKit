//
//  FrameworkCell.swift
//  AppleFramework
//
//  Created by ChoiKwangWoo on 2023/07/06.
//

import UIKit

class FrameworkCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(framework: AppleFramework) {
        imageView.image = UIImage(named: framework.imageName)
        nameLabel.text = framework.name
    }
}
