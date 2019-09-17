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
    @IBOutlet weak var imageControl: UISegmentedControl!
    
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        if imageControl.selectedSegmentIndex == 0 {
            titleLabel.text = "Young Beatles"
            beatlesImage.image = UIImage(named: "Vevo")
        }
        else if imageControl.selectedSegmentIndex == 1 {
            titleLabel.text = "Not So Young Beatles"
            beatlesImage.image = UIImage(named: "Oldie")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

