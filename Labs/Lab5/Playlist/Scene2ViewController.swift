//
//  ViewController.swift
//  MusicApp
//
//  Created by Gabe Raymondi on 10/21/19.
//  Copyright © 2019 Gabe Raymondi. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userSong: UITextField!
    @IBOutlet weak var userArtist: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finPlaylist"{
            let scene1ViewController = segue.destination as! ViewController
            if userSong.text!.isEmpty == false{
                scene1ViewController.user.selectSong=userSong.text
            }
            if userArtist.text!.isEmpty == false{
                scene1ViewController.user.selectArtist=userArtist.text
            }
        }
    }
    
    override func viewDidLoad() {
        userSong.delegate=self
        userArtist.delegate=self
        super.viewDidLoad()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
