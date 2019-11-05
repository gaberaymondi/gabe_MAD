//
//  ViewController.swift
//  Murray
//
//  Created by Gabe Raymondi on 9/3/19.
//  Copyright © 2019 Gabe Raymondi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var artImage: UIImageView!
    
    @IBAction func chooseArt(_ sender: UIButton) {
        if sender.tag == 1{
            artImage.image = UIImage(named: "jamal")
        }
        else if sender.tag == 2{
            artImage.image = UIImage(named: "murray")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

