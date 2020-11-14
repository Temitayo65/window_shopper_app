//
//  ViewController.swift
//  shopper
//
//  Created by owner on 14/11/2020.
//

import UIKit

class MainVC: UIViewController {
    // Outlets for textFields
    @IBOutlet weak var wageTxtField: CustomField!
    @IBOutlet weak var priceTxtField: CustomField!
    
    //Outlets for Labels
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Initially hide the results
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
        // Creating a UIButton from MainVC Instead of defining a custom Button
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        button.setTitle("Calculate", for: .normal)
        button.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        //Adding the created button to the accessory view of the textFields
        wageTxtField.inputAccessoryView = button
        priceTxtField.inputAccessoryView = button
    }
    
    @IBAction func clearCalcButton(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTxtField.text = ""
        priceTxtField.text = ""
        
    }
   
    // This objective-C function is called in the #selector for the addTarget
    @objc func calculate(){
        if let wageText = wageTxtField.text, let priceText = priceTxtField.text{
            if let wage = Double(wageText), let price = Double(priceText){
                resultLabel.text = ("\(Wage.getHours(forWage: wage, andPrice: price))")
                // reveal result when called
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
            }
        }
        
        
    }

}

