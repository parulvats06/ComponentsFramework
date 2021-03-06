//
//  RoundedView.swift
//  ComponentsSample
//
//  Created by Parul Vats on 20/07/2020.
//  Copyright © 2020 Tekhsters. All rights reserved.
//

import Foundation

import UIKit

@IBDesignable
public class RoundedImageView: UIImageView {
    override init(image: UIImage?) {
        super.init(image: image)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 2
        self.clipsToBounds = true
    }
}
