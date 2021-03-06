//
//  GameViewController.swift
//  FAB Casino
//
//  Created by Fahad Alswailem on 9/22/20.
//  Copyright © 2020 Fahad Alswailem. All rights reserved.
//

// also worked on by Brian & Angel
// team effort to build the main lobby part of the program
// in order to get a common ground first in terms of working from the office
// and we can all build upon that.

import GameplayKit
import SpriteKit
import UIKit
import AVFoundation
import Foundation

let button = UIButton(frame: CGRect(x: 20, y: 50, width: 200, height: 60))
let button_select_music = UIButton(frame: CGRect(x: 20, y: 130, width: 200, height: 50))
class GameViewController: UIViewController {
    let vm = HomeViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as? SKView {
            // load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
        button.addTarget(self, action: #selector(self.addAmount(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
        
        // ======== new ==========
        button_select_music.addTarget(self, action: #selector(self.select(sender:)), for: .touchUpInside)
        self.view.addSubview(button_select_music)
        vm.playMusic(sound: Music.goosebumps_everytime)
        // ======================
    }

    override func viewWillAppear(_ animated: Bool) {
        button.setTitle("Balance: \(self.vm.getBalance())", for: .normal)
        button.backgroundColor = UIColor.darkGray
        button_select_music.setTitle("Music", for: .normal)
        button_select_music.backgroundColor = UIColor.darkGray
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    @objc func addAmount(sender: UIButton) {
        // 1. Create the alert controller.
        let alert = UIAlertController(title: "Add ", message: "Enter amount to add", preferredStyle: .alert)
        
        // 2. Add the text field. You can configure it however you need.
        alert.addTextField { textField in
            textField.placeholder = "Balance"
            textField.keyboardType = .numberPad
        }
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] _ in
            if let textFieldVal = alert?.textFields![0].text, let amount = Int(textFieldVal) {
                self.vm.add(amount: amount)
                sender.setTitle("Amount: \(self.vm.getBalance())", for: .normal)
            } // Force unwrapping because we know it exists.
            
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        return
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // ========== new button function =========
    @objc func select(sender: UIButton) {
        // 1. Create the alert controller.
        let alert = UIAlertController(title: "Lobby Music", message: "Select the song below: ", preferredStyle: .alert)
        
        // 2. Add the text field. You can configure it however you need.
        alert.addTextField { textField in
            textField.placeholder = "Song Number"
            textField.keyboardType = .numberPad
        }
        
        let song: String = "1: Music Sounds Better With You\n2: London Mix\n3: Ayo Mix\n4: Talk\n5: Go Loko\n6: The Box\n7: Groovy Mix\n8: Goosebumpsn/9: Pink Sweats"
        alert.message = song;
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] _ in
            if let textFieldVal = alert?.textFields![0].text, let input_num = Int(textFieldVal) {
                if (input_num == 0) {
                    self.vm.pauseMusic()
                    sender.setTitle("~ PAUSED ~", for: .normal)

                } else {
                    self.vm.playMusic(sound: self.vm.selectMusic(song_number: input_num))
                    sender.setTitle("Song: #\(input_num)", for: .normal)
                }
            } // Force unwrapping because we know it exists.
            
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        return
    }
    // =====================
}
