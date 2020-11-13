//
//  MainVC.swift
//  window_shopper
//
//  Created by owner on 12/11/2020.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        
        calculateButton.backgroundColor = #colorLiteral(red: 0.9622858503, green: 0.5582472682, blue: 0.01238107367, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calculateButton
        priceTextField.inputAccessoryView = calculateButton

    }

    @objc func calculate(){
        print("working")
        
    }

}

