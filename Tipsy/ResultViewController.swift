//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Dahou Meziane on 27/2/2021.
//  Copyright © 2021 Meziane Dahou. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var result = "0.0"
    var tip = 10
    var split = 2
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = result
        settingsLabel.text = "Split between \(split) people, with \(tip)% tip."
         

    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true) {
            
        }
    }
  

}
