//
//  ViewController.swift
//  Beatles
//
//  Created by Gabe Raymondi on 9/12/19.
//  Copyright © 2019 Gabe Raymondi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var beatlesImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageControl:UISegmentedControl!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBOutlet weak var fontSizeNumber: UILabel!
    @IBOutlet weak var captialSwitch: UISwitch!
    
    func updateImage() {
        if imageControl.selectedSegmentIndex == 0 {
            titleLabel.text = "Young Beatles"
            beatlesImage.image = UIImage(named: "Vevo")
        }
        else if imageControl.selectedSegmentIndex == 1 {
            titleLabel.text = "Not So Young Beatles"
            beatlesImage.image = UIImage(named: "Oldie")
        }
    }
    
    func updateCaps() {
        if captialSwitch.isOn {
            titleLabel.text = titleLabel.text?.uppercased()
        } else {
            titleLabel.text = titleLabel.text?.lowercased()
        }
    }
    
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    
    @IBAction func updateFont(_ sender: UISwitch) {
        updateCaps()
    }
    
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize = sender.value
        fontSizeNumber.text = String(format: "%.0f", fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
        titleLabel.font=UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

