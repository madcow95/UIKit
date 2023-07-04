//
//  ViewController.swift
//  ChatList
//
//  Created by ChoiKwangWoo on 2023/07/03.
//

import UIKit

class ChatListViewController: UIViewController {
    
    let chatList: [Chat] = Chat.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}

extension ChatListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chatList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}

extension ChatListViewController: UICollectionViewDelegateFlowLayout {
    
}
