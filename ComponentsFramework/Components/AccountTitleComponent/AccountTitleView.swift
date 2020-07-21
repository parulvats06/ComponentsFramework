//
//  AccountTitleView.swift
//  ComponentsSample
//
//  Created by Parul Vats on 18/07/2020.
//  Copyright © 2020 Tekhsters. All rights reserved.
//

import UIKit

@IBDesignable
public class AccountTitleView: UIView {
    
    // MARK: - IBOutlets
    @IBOutlet private weak var accountTitleLabel: UILabel! {
        didSet {
            accountTitleLabel.text = ""
            accountTitleLabel.textColor = .black
        }
    }
    @IBOutlet private weak var accountNumberLabel: UILabel! {
        didSet {
            accountNumberLabel.text = ""
            accountNumberLabel.textColor = .gray
        }
    }
    
    // MARK: -  configuarble properties
    public var accountTitleAppearance: AccountTitleAppearance = AccountTitleAppearance() {
        didSet {
            setUpAppearance()
        }
    }
    
    // MARK: - init
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
        commonInit()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
        commonInit()
    }
    
    // MARK: - Setup And Update SubView
    private func commonInit() {
        // default settings
        setUpAppearance()
    }
    
    private func setUpAppearance() {
        accountTitleLabel.font = accountTitleAppearance.accountTitleFont
        accountNumberLabel.font = accountTitleAppearance.accountNumberFont
    }
    
    // MARK: - Configure view
    public func configure(accountTitle: String, accountNumber: String) {
        accountTitleLabel.text = accountTitle
        let formattedNumber = accountNumber.separate(every: 4, with: " ")
        accountNumberLabel.text = formattedNumber
    }
    
}


public struct AccountTitleAppearance {
    fileprivate let accountTitleFont: UIFont
    fileprivate let accountNumberFont: UIFont

    init(accountTitleFont: UIFont = Fonts.medium(.large), accountNumberFont: UIFont = Fonts.regular(.medium)) {
        self.accountTitleFont = accountTitleFont
        self.accountNumberFont = accountNumberFont
    }
}
