//
//  CurrencyTxtField.swift
//  Window-Shopper
//
//  Created by Chris Smith on 12/09/2017.
//  Copyright © 2017 CDSApps. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        // Placeholder is a property of the text field, that's why I have access to it.
        if let p = placeholder{
            
            let place = NSAttributedString(string: p, attributes: [NSForegroundColorAttributeName : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            // If this is set here, it will override the regular placeholder
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    
}






























