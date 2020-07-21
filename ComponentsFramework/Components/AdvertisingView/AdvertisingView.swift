//
//  AdvertisingView.swift
//  ComponentsSample
//
//  Created by Parul Vats on 21/07/2020.
//  Copyright © 2020 Tekhsters. All rights reserved.
//

import UIKit

@IBDesignable
public class AdvertisingView: UIView {
    
    // MARK: - IB Outlets
    @IBOutlet private weak var moreInfoButton: RoundButton! {
        didSet {
            moreInfoButton.setTitle("", for: .normal)
        }
    }
    @IBOutlet private weak var closeButton: UIButton! {
        didSet {
            closeButton.setTitle("", for: .normal   )
            closeButton.setImage( UIImage(systemName: "xmark.circle"), for: .normal)
        }
    }
    @IBOutlet private weak var backgroundImageView: UIImageView! {
        didSet {
            backgroundImageView.backgroundColor = .lightGray
        }
    }
    
    // MARK: - private variables
    private var moreInfoUrl: String = ""
    
    // MARK: - init
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    // MARK: - Update SubView
    public func configure(image: UIImage?, infoButtonTitle: String = "", infoButtonFont: UIFont, infoUrl: String = "") {
        backgroundImageView.image = image
        moreInfoButton.setTitle(infoButtonTitle, for: .normal)
        moreInfoButton.isHidden = (infoButtonTitle.isEmpty || infoUrl.isEmpty) ? true : false
        moreInfoUrl = infoUrl
        moreInfoButton.titleLabel?.font = infoButtonFont
    }
    
    // MARK: - IB Actions
    @IBAction func moreInfoButtonClicked(_ sender: Any) {
        // do nothing
    }
    @IBAction func closeButtonClicked(_ sender: Any) {
        // do nothing
    }
}
