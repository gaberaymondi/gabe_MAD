//
//  ViewController.swift
//  WhereWeEatin
//
//  Created by Gabe Raymondi on 10/1/19.
//  Copyright © 2019 Gabe Raymondi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var eatButton: UIButton!
    @IBOutlet weak var numberMiles: UILabel!
    @IBOutlet weak var restaurantType: UISegmentedControl!
    @IBOutlet weak var priceStepper: UIStepper!
    @IBOutlet weak var priceLabel: UILabel!
    
    func foodType(){
        if restaurantType.selectedSegmentIndex == 0 {
            //Fast food list go here
        }
        else if restaurantType.selectedSegmentIndex == 1 {
            //Restaurant list goes here
        }
    }
    
    @IBAction func letsEat(_ sender: AnyObject) {
        if let url = NSURL(string: "https://order.noodles.com/"){
            UIApplication.shared.openURL(url as URL)
        }
    }
    
    @IBAction func selectRestaurant(_ sender: Any) {
        foodType()
    }
    
    @IBAction func updateDistance(_ sender: UISlider) {
        let miles = sender.value
        numberMiles.text = String(format: "%.0f", miles)
    }
    
    @IBAction func updatePrice(_ sender: UIStepper) {
        if priceStepper.value == 0 {
            priceLabel.text = "Free"
        } else {
            priceLabel.text = "Price Max $" + String(format: "%.0f", priceStepper.value)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
