//
//  CalculateController.swift
//  Tipsy
//
//  Created by Dahou Meziane on 27/2/2021.
//  Copyright © 2021 Meziane Dahou. All rights reserved.
//

import UIKit

class CalculateController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
     @IBOutlet weak var zeroPctButton: UIButton!
     @IBOutlet weak var tenPctButton: UIButton!
     @IBOutlet weak var twentyPctButton: UIButton!
     @IBOutlet weak var splitNumberLabel: UILabel!
     
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = ""
     @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        billTextField.endEditing(true)
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        
        let buttonTitleMinusPercentsign = String(buttonTitle.dropLast())
        
        let buttonTitleAsNumber = Double(buttonTitleMinusPercentsign)!
        
        tip = buttonTitleAsNumber / 100
        
     }
     
     @IBAction func stripperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text =
            String(format:"%.0f", sender.value)
        numberOfPeople = Int(sender.value)
         
     }
     @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        if bill != "" {
            billTotal = Double(bill)!
            
            let result = billTotal * (1 + tip ) / Double(numberOfPeople)
            finalResult = String(
                format :"%.2f", result)
            
        }
        self.performSegue(withIdentifier: "toResultSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toResultSegue"){
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = finalResult
            destinationVC.tip = Int(tip * 100)
            destinationVC.split = numberOfPeople
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
