//
//  ViewController.swift
//  MusicApp
//
//  Created by Gabe Raymondi on 10/21/19.
//  Copyright © 2019 Gabe Raymondi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albulmLabel: UILabel!
    
    var user=Playlist()
    
    @IBAction func unwindSegue (_ segue:UIStoryboardSegue){
        songLabel.text=user.selectSong
        artistLabel.text=user.selectArtist
        albulmLabel.text=user.selectAlbulm
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

