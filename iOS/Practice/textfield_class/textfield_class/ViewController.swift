//
//  ViewController.swift
//  textfield_class
//
//  Created by Gabe Raymondi on 9/26/19.
//  Copyright © 2019 Gabe Raymondi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var checkAmount: UITextField!
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var peopleStepper: UIStepper!
    @IBOutlet weak var tipDue: UITextField!
    @IBOutlet weak var totalDue: UITextField!
    @IBOutlet weak var totalDuePerPerson: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func updatePeople(_ sender: Any) {
        if peopleStepper.value == 1 {
            peopleLabel.text = "1 person"
        } else {
            peopleLabel.text = String(format: "%.0f", peopleStepper.value) + " people"
        }
    }
    
    func updateTipTotals() {
        var amount:Float
        var pct:Float
        
        if checkAmount.text!.isEmpty {
            amount = 0.0
        } else {
            amount = Float(checkAmount.text!)!
        }
        if tipPercent.text!.isEmpty {
            pct = 0.0
        } else {
            pct = Float(tipPercent.text!)!/100
        }
        
        let numberOfPeople = peopleStepper.value
        let tip=amount*pct
        let total = amount+tip
        var personTotal : Float = 0.0
        
        if numberOfPeople > 0 {
            personTotal = total / Float(numberOfPeople)
        }else {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Warning", message: "The number of people must be greater than 0", preferredStyle: UIAlertController.Style.alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(cancelAction)
            let okAction=UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {action in
                self.peopleStepper
                self.
            })
        }
        
        //forumla results as currency
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle=NumberFormatter.Style.currency
            //set the number style
        tipDue.text = currencyFormatter.string(from: NSNumber(value: tip))
            //returns a formatted string
        totalDue.text = currencyFormatter.string(from: NSNumber(value: total))
        totalDuePerPerson.text = currencyFormatter.string(from: NSNumber(value: personTotal))
    }
    
    override func viewDidLoad() {
        checkAmount.delegate=self
        tipPercent.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

