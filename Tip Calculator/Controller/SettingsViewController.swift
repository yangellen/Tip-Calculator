//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Ellen Yang on 1/10/21.
//

import UIKit

let defaults = UserDefaults.standard

class SettingsViewController: UIViewController {

   @IBOutlet weak var tip3: UITextField!
   @IBOutlet weak var tip2: UITextField!
   @IBOutlet weak var tip1: UITextField!

   override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

   //save change default values
   @IBAction func tapSave(_ sender: Any) {

      defaults.set((Double(tip1.text!) ?? 15) / 100, forKey: "lowTip")
      defaults.set((Double(tip2.text!) ?? 18) / 100, forKey: "midTip")
      defaults.set((Double(tip3.text!) ?? 20) / 100, forKey: "highTip")

      // Force UserDefaults to save
      defaults.synchronize()

   }
}
