//
//  ViewController.swift
//  tipcalculator
//
//  Created by Sasha Szura on 12/12/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var billfield: UITextField!
    
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    @IBOutlet weak var totallabel: UILabel!
    @IBOutlet weak var tiplabel: UILabel!
    @IBAction func calculatetip(_ sender: Any) {
        // Get bill amount
        let bill = Double(billfield.text!) ?? 0
            
        // Calculate tip and total
        let tippercentages = [0.15,0.18,0.20]
        
        let tip = bill * tippercentages[tipcontrol.selectedSegmentIndex]
        let total = bill + tip
        // Update tip and total
        tiplabel.text = String(format: "$%.2f", tip)
        totallabel.text = String(format: "$%.2f", total)
        
    }
    @IBAction func ontap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

