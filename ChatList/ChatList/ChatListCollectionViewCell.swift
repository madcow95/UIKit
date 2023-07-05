//
//  ChatListCollectionViewCell.swift
//  ChatList
//
//  Created by ChoiKwangWoo on 2023/07/04.
//

import UIKit

class ChatListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chatLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnail.layer.cornerRadius = 10
    }
    
    func configure(chat: Chat) {
        thumbnail.image = UIImage(named: chat.name)
        nameLabel.text = chat.name
        chatLabel.text = chat.chat
        
        let formattedDate = formattedDateString(dateString: chat.date)
        dateLabel.text = formattedDate
    }
    
    func formattedDateString(dateString: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        guard let date = formatter.date(from: dateString) else {
            return ""
        }
        
        formatter.dateFormat = "M/d"
        return formatter.string(from: date)
    }
}
