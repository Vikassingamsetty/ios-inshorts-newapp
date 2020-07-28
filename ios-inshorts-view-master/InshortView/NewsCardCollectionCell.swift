//
//  NewsCardCollectionCell.swift
//  InshortView
//
//  Created by Vikas singamsetty on 04/07/20.
//  Copyright © 2020 Vikas singamsetty. All rights reserved.
//

import UIKit

class NewsCardCollectionCell: UICollectionViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 8
    }
}
