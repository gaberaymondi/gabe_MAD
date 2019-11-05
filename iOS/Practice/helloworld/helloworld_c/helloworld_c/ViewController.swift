//
//  ViewController.swift
//  helloworld_c
//
//  Created by Gabe Raymondi on 8/29/19.
//  Copyright © 2019 Gabe Raymondi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageText: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        messageText.text = "Hello world!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

