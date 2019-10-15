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
    
//    func monthlyCommute() {
//        if showMonthlyCommute.isOn {
//            let distance = totalDistance.value
//            let gasLeft = numberGasMiles.value
//            if (distance > gasLeft) {
//                let alert=UIAlertController(title: "Warning", message: "You do not have enough gas for this commute.", preferredStyle: UIAlertController.Style.alert)
//            }
//            else {
//
//            }
//        }
//    }
    
    @IBAction func changeGasMiles(_ sender: UISlider) {
        let gallonMiles = sender.value
        numberGasMiles.text = String(format: "%.0f", gallonMiles) + String(format: " gallons")
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
    
//    func totalCommuteTime(){
//        //compute and update the total commute time
//    }
//
//    func gas2Purchase(){
//        //compute and update the number of gallons you need to purchase
//    }
//
//    @IBAction func cummuteButton(_ sender: UIButton) {
//        monthlyCommute()
//        totalCommuteTime()
//        gas2Purchase()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

