//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Paweł Dylewski on 31.01.2019.
//  Copyright © 2019 Paweł Dylewski. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
