//
//  ViewController.swift
//  tipCalculator2
//
//  Created by Jayshawn Grant on 3/7/21.
//



import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var label15: UILabel!
    @IBOutlet weak var label20: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)

    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    @IBAction func CalcluatedAmount(_ sender: Any) {
        
        let theTotalBill = Double(billAmount.text ?? "Please  input a value")!

        
        let tip10 = 0.10
        let tip15 = 0.15
        let tip20 = 0.20
        
        let tipAmount10 = theTotalBill * tip10
        label10.text = "$\(tipAmount10)"
        
        let tipAmount15 = theTotalBill * tip15
        label15.text = "$\(tipAmount15)"
        
        let tipAmount20 = theTotalBill * tip20
        self.label20.text = "$\(tipAmount20)"
    }
    

}

