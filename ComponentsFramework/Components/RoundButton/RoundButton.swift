//
//  RoundButton.swift
//  ComponentsSample
//
//  Created by Parul Vats on 21/07/2020.
//  Copyright © 2020 Tekhsters. All rights reserved.
//

import UIKit

@IBDesignable
public class RoundButton: UIButton {

    @IBInspectable public var cornerRadius: CGFloat = 0{
        didSet{
        self.layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable public var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable public var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    override public func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.contentEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
        backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        self.heightAnchor.constraint(equalToConstant: 48.0).isActive = true
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = self.frame.height/2
        self.layer.masksToBounds = true
    }
}
