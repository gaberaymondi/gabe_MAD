//
//  ViewController.swift
//  midterm
//
//  Created by Gabe Raymondi on 10/15/19.
//  Copyright © 2019 Gabe Raymondi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var totalDistance: UITextField!
    @IBOutlet weak var numberGasMiles: UILabel!
    @IBOutlet weak var showMonthlyCommute: UISwitch!
    @IBOutlet weak var vehicleImage: UIImageView!
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBOutlet weak var totalCommuteTime: UILabel!
    @IBOutlet weak var gas2Purchase: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func changeGasMiles(_ sender: UISlider) {
        let gallonMiles = sender.value
        numberGasMiles.text = String(format: "%.0f", gallonMiles)
    }
    
    func updateImage() {
        if imageControl.selectedSegmentIndex == 0 {
            vehicleImage.image = UIImage(named: "car")
        }
        else if imageControl.selectedSegmentIndex == 1 {
            vehicleImage.image = UIImage(named: "bus")
        }
        else if imageControl.selectedSegmentIndex == 2 {
            vehicleImage.image = UIImage(named: "bike")
        }
    }
    
    @IBAction func updateInfo(_ sender: UISegmentedControl) {
        updateImage()
    }
    
    func computeCommute() {
        //compute and update the total commute time
        if showMonthlyCommute.isOn {
            if imageControl.selectedSegmentIndex == 0 {
                var miles:Float //round trip commute miles
                var gas:Float //gas left in tank
                
                if numberGasMiles.text!.isEmpty {
                    gas = 0.0
                }
                else {
                    gas = Float(numberGasMiles.text!)!
                }
                if totalDistance.text!.isEmpty {
                    miles = 0.0
                }
                else {
                    miles = Float(totalDistance.text!)!
                }
                
                var commuteTime: Float = 0.0
                var gallons: Float = 0.0
                let time = (miles/20)*60
                let price = miles/gas

                if (miles > gas) {
                    commuteTime = time
                    gallons = price
                }
                else {
                    //create a UIAlertController object
                    let alert=UIAlertController(title: "Warning", message: "You do not have enough gas for this commute.", preferredStyle: UIAlertController.Style.alert)
                    //create a UIAlertAction object for the button
                    let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertAction.Style.cancel, handler: nil)
                    alert.addAction(cancelAction) //adds the alert action to the alert object
                    let okAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {action in
                        //self.peopleStepper.value = 1
                        self.totalDistance.text? = "Enter Distance"
                        //self.updateTipTotals()
                    })
                    alert.addAction(okAction)
                    present(alert, animated: true, completion: nil)
                } //end else

                let currencyFormatter = NumberFormatter()
                currencyFormatter.numberStyle=NumberFormatter.Style.currency //set the number style
                totalCommuteTime.text=currencyFormatter.string(from: NSNumber(value: commuteTime)) //returns a formatted string
                gas2Purchase.text=currencyFormatter.string(from: NSNumber(value: gallons))
            }
            
            if imageControl.selectedSegmentIndex == 1 {
                var miles:Float //round trip commute miles
                var gas:Float //gas left in tank
                
                if numberGasMiles.text!.isEmpty {
                    gas = 0.0
                }
                else {
                    gas = Float(numberGasMiles.text!)!
                }
                if totalDistance.text!.isEmpty {
                    miles = 0.0
                }
                else {
                    miles = Float(totalDistance.text!)!
                }
                
                var commuteTime: Float = 0.0
                var gallons: Float = 0.0
                
                let time = (miles/12)*60
                let price = miles/gas

                if (miles > gas) {
                    commuteTime = time
                    gallons = price
                }
                else {
                    //create a UIAlertController object
                    let alert=UIAlertController(title: "Warning", message: "You do not have enough gas for this commute.", preferredStyle: UIAlertController.Style.alert)
                    //create a UIAlertAction object for the button
                    let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertAction.Style.cancel, handler: nil)
                    alert.addAction(cancelAction) //adds the alert action to the alert object
                    let okAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {action in
                        //self.peopleStepper.value = 1
                        self.totalDistance.text? = "Enter Distance"
                        //self.updateTipTotals()
                    })
                    alert.addAction(okAction)
                    present(alert, animated: true, completion: nil)
                } //end else

                let currencyFormatter = NumberFormatter()
                currencyFormatter.numberStyle=NumberFormatter.Style.currency //set the number style
                totalCommuteTime.text=currencyFormatter.string(from: NSNumber(value: commuteTime)) //returns a formatted string
                gas2Purchase.text=currencyFormatter.string(from: NSNumber(value: gallons))
            }
            if imageControl.selectedSegmentIndex == 2 {
                var miles:Float //round trip commute miles
                var gas:Float //gas left in tank
                
                if numberGasMiles.text!.isEmpty {
                    gas = 0.0
                }
                else {
                    gas = Float(numberGasMiles.text!)!
                }
                if totalDistance.text!.isEmpty {
                    miles = 0.0
                }
                else {
                    miles = Float(totalDistance.text!)!
                }
                
                var commuteTime: Float = 0.0
                var gallons: Float = 0.0
                
                _ = commuteTime + 10
                _ = 0.0
                
                let time = (miles/10)*60
                let price = miles/gas

                if (miles > gas) {
                    commuteTime = time
                    gallons = price
                }
                else {
                    //create a UIAlertController object
                    let alert=UIAlertController(title: "Warning", message: "You do not have enough gas for this commute.", preferredStyle: UIAlertController.Style.alert)
                    //create a UIAlertAction object for the button
                    let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertAction.Style.cancel, handler: nil)
                    alert.addAction(cancelAction) //adds the alert action to the alert object
                    let okAction=UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {action in
                        //self.peopleStepper.value = 1
                        self.totalDistance.text? = "Enter Distance"
                        //self.updateTipTotals()
                    })
                    alert.addAction(okAction)
                    present(alert, animated: true, completion: nil)
                } //end else

                let currencyFormatter = NumberFormatter()
                currencyFormatter.numberStyle=NumberFormatter.Style.currency //set the number style
                totalCommuteTime.text=currencyFormatter.string(from: NSNumber(value: commuteTime)) //returns a formatted string
                gas2Purchase.text=currencyFormatter.string(from: NSNumber(value: gallons))
            }
        }
    }
}


    @IBAction func cummuteButton(_ sender: UIButton) {
        computeCommute()
    }
    
    override func viewDidLoad() {
        totalDistance.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

