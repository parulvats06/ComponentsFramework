//
//  AmountTextView.swift
//  ComponentsSample
//
//  Created by Parul Vats on 18/07/2020.
//  Copyright © 2020 Tekhsters. All rights reserved.
//

import UIKit

@IBDesignable
public class AmountTextView: UIView {
    // MARK: -  class variables
    private var amountLabel = UILabel(frame: CGRect.zero)
    
    // MARK: -  configuarble properties
    public var font: UIFont? {
        didSet {
            if let font = self.font {
                amountLabel.font = font
                updateFrames()
            }
        }
    }
    
    public var textAlignment: NSTextAlignment = .right {
        didSet {
            amountLabel.textAlignment = textAlignment
        }
    }
    
    public var textColor: UIColor = .black {
        didSet {
            amountLabel.textColor = textColor
        }
    }
    
    // MARK: - Override Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    // initWithCode to init view from xib or storyboard
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    public override var frame: CGRect {
      didSet {
        updateFrames()
      }
    }
    
    public override func updateConstraints() {
      super.updateConstraints()
      updateFrames()
    }
    
    public override func layoutSubviews() {
      super.layoutSubviews()
      updateFrames()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
    }
    
    // MARK: - Configure view
    public func configure(value: Double) {
        guard let currencyType = CurrencyConfig.shared?.currencyType else {
            return
        }
        let minimumFractionDigits = CurrencyConfig.shared?.minimumFractionDigits ?? 2
        var formattedValue = value.getAmountText(amount: fabs(value), minimumFractionDigits: minimumFractionDigits)
        
        formattedValue = value < 0 ? ("-" + currencyType.rawValue + "  " + formattedValue) : (currencyType.rawValue + "  " + formattedValue)
        let styledText = formattedValue.asStylizedPrice(using: amountLabel.font)
        
        amountLabel.attributedText = styledText
        amountLabel.textColor = value < 0 ? .red : amountLabel.textColor
    }
    
    // MARK: - Setup And Update SubView
    private func setupView() {
        amountLabel.frame = bounds
        amountLabel.font = Fonts.medium(.large)
        amountLabel.textColor = .black
        amountLabel.textAlignment = .right
        amountLabel.minimumScaleFactor = 0.4
        addSubview(amountLabel)
    }
    
    private func updateFrames() {
      amountLabel.frame = bounds
    }
    
}
