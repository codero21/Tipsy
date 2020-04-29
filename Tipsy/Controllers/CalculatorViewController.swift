//
//  ViewController.swift
//  Tipsy
//
//  Created by Rollin Francois on 4/28/20.
//  Copyright © 2020 Francois Technology. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
//        Deselect all buttons
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
//        Make the button that is selected highlight
        sender.isSelected = true
        
//        Get currentTitle of button pressed
        let buttonTitle = sender.currentTitle!
        
//        Remove the last character (%) from the title then turn it back into a String.
        let buttonTitleMinusPercentSign = String((buttonTitle.dropLast()))
        
//        Turn the String into a Double.
        let buttonTitleAsNumber = Double(buttonTitleMinusPercentSign)!
        
//        Divide the percent expressed out of 100 into a decimal
        tip = buttonTitleAsNumber / 100
        
        
        
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tip)
    }
    
}

