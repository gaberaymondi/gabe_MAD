//
//  ViewController.swift
//  Denver Nuggets
//
//  Created by Gabe Raymondi on 9/11/19.
//  Copyright © 2019 Gabe Raymondi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerName: UILabel!
    
    @IBAction func playerJamal(_ sender: UIButton) {
        playerName.text = "Jamal Murray"
    }
    
    @IBAction func playerGary(_ sender: UIButton) {
        playerName.text = "Gary Harris"
    }

    @IBOutlet weak var playerImage: UIImageView!
    
    @IBAction func selectPlayer(_ sender: UIButton) {
        if sender.tag == 1{
            playerImage.image = UIImage(named: "Jamal")
        }
        else if sender.tag == 2{
            playerImage.image = UIImage(named: "Gary")
        }
    }
    
    @IBAction func selectMPJ(_ sender: UIButton) {
        if sender.tag == 3{
            playerImage.image = UIImage(named: "MPJ")
        }
        playerName.text = "Michael Porter Jr."
    }
    
    @IBAction func selectJokic(_ sender: UIButton) {
        if sender.tag == 5{
            playerImage.image = UIImage(named: "Nikola")
        }
        playerName.text = "Nikola Jokic"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

