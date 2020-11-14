//
//  CustomField.swift
//  shopper
//
//  Created by owner on 14/11/2020.
//

import UIKit
@IBDesignable
class CustomField: UITextField {
    
    override func draw(_ rect: CGRect) {
        
        let size : CGFloat = 40
        let currencyIcon = UILabel(frame: CGRect(x: 10, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyIcon.backgroundColor = #colorLiteral(red: 0.7630497456, green: 0.8261706344, blue: 0.9178696066, alpha: 0.1024721747)
        currencyIcon.layer.cornerRadius = 10
        currencyIcon.textAlignment = .center
        currencyIcon.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyIcon.clipsToBounds = true
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = .current
        currencyIcon.text = numberFormatter.currencySymbol
        addSubview(currencyIcon)
        
    }
    
    
    
    override func prepareForInterfaceBuilder() {
        super.awakeFromNib()
        updateView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateView()
        
    }
    
    func updateView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    

}
