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
     @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        
        let buttonTitleMinusPercentsign = String(buttonTitle.dropLast())
        
        let buttonTitleAsNumber = Double(buttonTitleMinusPercentsign)!
        
        tip = buttonTitleAsNumber / 100
     }
     
     @IBAction func stripperValueChanged(_ sender: UIButton) {
         
     }
     @IBAction func calculatePressed(_ sender: UIButton) {
        print(tip)
         
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
