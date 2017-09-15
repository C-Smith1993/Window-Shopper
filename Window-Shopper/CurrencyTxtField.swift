//
//  CurrencyTxtField.swift
//  Window-Shopper
//
//  Created by Chris Smith on 12/09/2017.
//  Copyright © 2017 CDSApps. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8682758521, green: 0.8682758521, blue: 0.8682758521, alpha: 0.8046072346)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
    // This function updates the interface builder so that the custom code matches.
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    // This function is called at runtime.
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    // This function holds all of the custom view attributes.
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
    // Placeholder is a property of the text field, that's why I have access to it.
        if let p = placeholder{
            
            let place = NSAttributedString(string: p, attributes: [NSForegroundColorAttributeName : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
    // If this is set here, it will override the regular placeholder.
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}






























