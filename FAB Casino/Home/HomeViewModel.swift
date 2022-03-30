//
//  HomeViewModel.swift
//  FAB Casino
//
//  Created by Fahad Alswailem on 9/22/20.
//  Copyright © 2020 Fahad Alswailem. All rights reserved.
//

import AVFoundation
import Foundation
import UIKit

class HomeViewModel {
    var tables: [String] = ["table1", "table2", "table3"]
    var gameName: [String] = ["Roulette", "Black Jack", "Slot Machine"]
    var song: [String] = ["Music Sounds Better With You", "London Mix", "Ayo Mix", "Talk", "Go Loko", "The Box", "Groovy Mix", "Goosebumps"]
    var AVAudioplayer: AVAudioPlayer?
    
    func getTotalTableCount() -> Int {
        return tables.count
    }
    
    func getTotalGameCount() -> Int {
        return gameName.count
    }
    
    func getTableForIndex(_ index: Int) -> String {
        if index >= 0, index < tables.count {
            return tables[index]
        }
        return ""
    }
    
    func getGameForIndex(_ index: Int) -> String {
        if index >= 0, index < gameName.count {
            return gameName[index]
        }
        return ""
    }
    
    func add(amount: Int) {
        var total = getBalance()
        total += amount
        UserDefaults.standard.set(total, forKey: Constant.user_cash)
    }
    
    func getBalance() -> Int {
        return UserDefaults.standard.integer(forKey: Constant.user_cash)
    }
    
    func selectMusic(song_number: Int) -> String {
        var song: String = "1: Music Sounds Better With You\n2: London Mix\n3: Ayo Mix\n4: Talk\n5: Go Loko\n6: The Box\n7: Groovy Mix\n8: Goosebumpsn/9: Pink Sweats"
        switch song_number {
        case 1:
            song = Music.music_sounds_better_with_you
        case 2:
            song = Music.london_mix
        case 3:
            song = Music.ayo_mix
        case 4:
            song = Music.talk
        case 5:
            song = Music.go_loko
        case 6:
            song = Music.the_box
        case 7:
            song = Music.groovy_light
        case 8:
            song = Music.goosebumps_everytime
        case 9:
            song = Music.pink_sweats
        default:
            song = Music.goosebumps_everytime
        }
        return song;
    }
    
    func pauseMusic() {
        AVAudioplayer?.pause()
    }
    
    // play background music
    func playMusic(sound name: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "m4a") else {
            return
        }
        AVAudioplayer = try? AVAudioPlayer(contentsOf: url)
        AVAudioplayer?.play()
    }
}
