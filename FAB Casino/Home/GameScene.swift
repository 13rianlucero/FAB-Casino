//
//  GameScene.swift
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
import AVFoundation
import Foundation
import UIKit

class GameScene: SKScene {
    var thePlayer = SKSpriteNode()
    var BlackJackTable1 = SKSpriteNode()
    var BlackJackTable2 = SKSpriteNode()
    var BlackJackTable3 = SKSpriteNode()
    let background = SKSpriteNode(imageNamed: "Carpet.jpg")
    let vm = HomeViewModel()
    override func didMove(to view: SKView) {
        // sets theMobBoy sprite as theplayer
        if let somePlayer: SKSpriteNode = childNode(withName: "theMobBoy") as? SKSpriteNode {
            thePlayer = somePlayer
            thePlayer.physicsBody?.isDynamic = true
            // thePlayer.*whatever*
        }
    }

    func touchMoved(toPoint pos: CGPoint) {
        let moveAction = SKAction.move(to: pos, duration: 0.25)
        thePlayer.run(moveAction)
    }
    
    func touchUp(atPoint pos: CGPoint) {
        let moveAction = SKAction.move(to: pos, duration: 1)
        thePlayer.run(moveAction)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first?.location(in: self)
        let node = atPoint(location!)
        tableClick(node: node)
    }
    
    func tableClick(node: SKNode) {
        for tableNo in 0 ..< vm.getTotalTableCount() {
            if node.name == vm.getTableForIndex(tableNo) {
                showOpenGame(tableNo: tableNo)
            }
        }
    }
    
    func showOpenGame(tableNo: Int) {
        let alert = UIAlertController(title: nil, message: "Do you want to open \(vm.getGameForIndex(tableNo))?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
            self.openGame(tableNo: tableNo)
        }))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    func openGame(tableNo: Int) {
        switch tableNo {
        case 0:
            // open game1
            let storyboard = UIStoryboard(name: "Roulette", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "RouletteViewController")
            vc.modalPresentationStyle = .fullScreen
            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController?.present(vc, animated: true, completion: nil)
        case 1:
            // open game2
            let vc = BlackJackViewController()
            vc.modalPresentationStyle = .fullScreen
            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController?.present(vc, animated: true, completion: nil)
        case 2:
            // open game3
            let storyboard3 = UIStoryboard(name: "SlotMachine", bundle: nil)
            let vc3 = storyboard3.instantiateViewController(withIdentifier: "ViewController")
            vc3.modalPresentationStyle = .fullScreen
            (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController?.present(vc3, animated: true, completion: nil)
        default:
            break
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            touchMoved(toPoint: t.location(in: self))
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            touchUp(atPoint: t.location(in: self))
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            touchUp(atPoint: t.location(in: self))
        }
    }
    
    override func update(_ currentTime: TimeInterval) {}
}

// defines some constant variables that will not have values that change.
enum Music {
    static let galaga: String = "galaga"
    static let pink_sweats: String = "PINK SWEAT$ ( JIDDY REMIX ) #jerseyclub"
    static let music_sounds_better_with_you: String = "Music Sounds Better With You"
    static let london_mix: String = "_ London 100 bands tokyo rain drops 4-6-20, 6.17.10 AM"
    static let ayo_mix: String = "AYO 10-16-19, 4.21.44 PM"
    static let talk: String = "DJ Taj - Talk (Jersey Club Mix) @DjLilTaj"
    static let go_loko: String = "DJ Taj & DJ Smallz 732 - Go Loko (Jersey Club Mix)"
    static let the_box: String = "DJ Taj x The Box Jersey Mix ft. DJ Uzi #NJCLUB"
    static let groovy_light: String = "GROOVY LIGHT  8-12-17, 6.52.27 PM"
    static let goosebumps_everytime: String = "goosebumps everytime 4-12-19, 7.10.31 PM"
    
    static let pink_sweats_url: String = "PINK SWEAT$ ( JIDDY REMIX ) #jerseyclub.m4a"
    static let music_sounds_better_with_you_url: String = "Music Sounds Better With You.m4a"
    static let london_mix_url: String = "_ London 100 bands tokyo rain drops 4-6-20, 6.17.10 AM.m4a"
    static let ayo_mix_url: String = "AYO 10-16-19, 4.21.44 PM.m4a"
    static let talk_url: String = "DJ Taj - Talk (Jersey Club Mix) @DjLilTaj.m4a"
    static let go_loko_url: String = "DJ Taj & DJ Smallz 732 - Go Loko (Jersey Club Mix).m4a"
    static let the_box_url: String = "DJ Taj x The Box Jersey Mix ft. DJ Uzi #NJCLUB.m4a"
    static let groovy_light_url: String = "GROOVY LIGHT  8-12-17, 6.52.27 PM.m4a"
    static let goosebumps_everytime_url: String = "goosebumps everytime 4-12-19, 7.10.31 PM.m4a"
}
