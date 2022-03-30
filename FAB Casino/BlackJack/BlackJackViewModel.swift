//
//  BlackJackViewModel.swift
//  FAB Casino
//
//  Created by Fahad Alswailem on 9/22/20.
//  Copyright © 2020 Fahad Alswailem. All rights reserved.
//

import AVFoundation
import Foundation
import UIKit

// Basic functionality of blackjack.
class BlackJackViewModel {
    let moneyPot = Pot()
    let player = Player(hand: Hand(), cash: Cash())
    var dealerCardY = 800 // Y position of dealer cards
    var playerCardY = 200 // Y position of player cards
    var AVAudioplayer: AVAudioPlayer?
    
    func updateDealerCardY(pos: Int) {
        dealerCardY = pos
    }
    
    func updatePlayerCardY(pos: Int) {
        playerCardY = pos
    }
    
    func getDealerCardY() -> Int {
        return dealerCardY
    }
    
    func getPlayerCardY() -> Int {
        return playerCardY
    }
    
    func getPlayerBalance() -> Int {
        return player.cash.getBalance()
    }
    
    func updatePlayerBalance(amount: Int) {
//        if amount > 0 {
        player.cash.addAmount(amount: amount)
//        }
//        else{
//            player.cash.removeBalance(amount: amount)
//        }
    }
    
    func getPlayerHand() -> Hand {
        return player.hand
    }
    
    func updateMoneyPot(amount: Int) {
        moneyPot.addMoney(amount: amount)
    }
    
    func getMoneyFromPot() -> Int {
        return moneyPot.getMoney()
    }
    
    func resetMoneyPot() {
        moneyPot.reset()
    }
    
//    // play background music
//    func play_BJ_music(sound name: String) {
//        guard let url = Bundle.main.url(forResource: name, withExtension: "m4a") else {
//            return
//        }
//        AVAudioplayer = try? AVAudioPlayer(contentsOf: url)
//        AVAudioplayer?.play()
//    }
}
