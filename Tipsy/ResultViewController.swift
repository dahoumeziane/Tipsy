//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Dahou Meziane on 27/2/2021.
//  Copyright © 2021 Meziane Dahou. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var result = ""
    var tip = 0.0
    var split = ""
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
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
