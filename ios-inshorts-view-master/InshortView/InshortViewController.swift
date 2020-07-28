//
//  ViewController.swift
//  InshortView
//
//  Created by Vikas singamsetty on 04/07/20.
//  Copyright © 2020 Vikas singamsetty. All rights reserved.
//

import UIKit

class InshortViewController: UIViewController {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.dataSource = self
        self.collectionView.register(UINib.init(nibName: "NewsCardCollectionCell", bundle: nil), forCellWithReuseIdentifier: "NewsCardCollectionCell")
    }
}
// MARK: - UICollectionViewDataSource -
extension InshortViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCardCollectionCell", for: indexPath)
        if let newsCard = cell as? NewsCardCollectionCell {
            return newsCard
        }
        return cell
    }
}



