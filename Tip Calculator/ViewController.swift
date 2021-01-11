//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Ellen Yang on 1/10/21.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var totalLabel: UILabel!
   @IBOutlet weak var tipPercentageLabel: UILabel!
   @IBOutlet weak var billAmountTextField: UITextField!
   @IBOutlet weak var tipControl: UISegmentedControl!
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
      self.title = "Tip Calculator"
   }

   @IBAction func onTap(_ sender: Any) {
   }

   @IBAction func calculateTip(_ sender: Any) {
      //Get initial bill amount and calculate tips
      let bill = Double(billAmountTextField.text!) ?? 0
      let tipPencentages = [0.15, 0.18, 0.2]

      // Calculate tip and total
      let tip = bill * tipPencentages[tipControl.selectedSegmentIndex]
      let total = bill + tip

      // Update the tip and total labels
      tipPercentageLabel.text = String(format: "$%.2f", tip)
      totalLabel.text = String(format: "$%.2f",total)   }
}

