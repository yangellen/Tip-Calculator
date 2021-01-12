//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Ellen Yang on 1/10/21.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var individualBill: UILabel!
   @IBOutlet weak var numParty: UITextField!
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
      // hides keyboard
      view.endEditing(true)
      
   }

   @IBAction func calculateTip(_ sender: Any) {
      //Get initial bill amount and calculate tips
      let bill = Double(billAmountTextField.text!) ?? 0
      let partySize = Double(numParty.text!) ?? 1
      let tipPencentages = [0.15, 0.18, 0.2]

      // Calculate tip and total
      let tip = bill * tipPencentages[tipControl.selectedSegmentIndex]
      let total = bill + tip
      let perPerson = total / partySize

      // Update the tip and total labels
      tipPercentageLabel.text = String(format: "$%.2f", tip)
      totalLabel.text = String(format: "$%.2f",total)
      individualBill.text = String(format: "$%.2f",perPerson)

   }
}

