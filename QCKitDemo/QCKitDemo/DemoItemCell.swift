//
//  DemoItemCell.swift
//  QCKitDemo
//
//  Created by yanqunchao on 2019/12/2.
//  Copyright © 2019 yanqunchao. All rights reserved.
//

import UIKit
import YQCKit
class DemoItemCell: UICollectionViewCell {

    @IBOutlet weak var titleLab: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.titleLab.layer.borderColor = UIColor.qc_randomColor().cgColor
        self.titleLab.layer.borderWidth = 1
    }
}
