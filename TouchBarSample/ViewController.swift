//
//  ViewController.swift
//  TouchBarSample
//
//  Created by Kohei Niimi on 2016/11/29.
//  Copyright © 2016年 Kohei Niimi. All rights reserved.
//

import Cocoa
import AVFoundation

enum Sounds {
    case c
    case d
    case e
    case f
    case g
    case a
    case b
    case ca
    
    func toString() -> String {
        switch self {
        case .c:
            return "c"
        case .d:
            return "d"
        case .e:
            return "e"
        case .f:
            return "f"
        case .g:
            return "g"
        case .a:
            return "a"
        case .b:
            return "b"
        case .ca:
            return "ca"

        }
    }
}

class WindowController: NSWindowController {
    
    private var sounds: [Sounds : AVAudioPlayer] = [:]
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        addPioanoSounds(sound: Sounds.c)
        addPioanoSounds(sound: Sounds.d)
        addPioanoSounds(sound: Sounds.e)
        addPioanoSounds(sound: Sounds.f)
        addPioanoSounds(sound: Sounds.g)
        addPioanoSounds(sound: Sounds.a)
        addPioanoSounds(sound: Sounds.b)
        addPioanoSounds(sound: Sounds.ca)
        
    }
    
    private func addPioanoSounds(sound: Sounds) {
        do {
            let filePath = Bundle.main.path(forResource: sound.toString(), ofType: "mp3")
            let audioPath = URL(fileURLWithPath: filePath!)
            
            let audioPlayer = try AVAudioPlayer(contentsOf: audioPath)
            audioPlayer.prepareToPlay()
            
            sounds[sound] = audioPlayer
        } catch {
            print("Error")
        }
    }
    
    private func playSound(player: AVAudioPlayer) {
        if player.isPlaying {
            player.pause()
            player.currentTime = 0
        }
        player.play()
    }
    
    @IBAction func cSoundAction(_ sender: NSButton) {
        if let sound = sounds[Sounds.c] {
           playSound(player: sound)
        }
    }
    
    @IBAction func dSoundAction(_ sender: NSButton) {
        if let sound = sounds[Sounds.d] {
            playSound(player: sound)
        }
    }
    
    @IBAction func eSoundAction(_ sender: NSButton) {
        if let sound = sounds[Sounds.e] {
            playSound(player: sound)
        }
    }
    
    @IBAction func fSoundAction(_ sender: NSButton) {
        if let sound = sounds[Sounds.f] {
            playSound(player: sound)
        }
    }
    
    @IBAction func gSoundAction(_ sender: NSButton) {
        if let sound = sounds[Sounds.g] {
            playSound(player: sound)
        }
    }
    
    @IBAction func aSoundAction(_ sender: NSButton) {
        if let sound = sounds[Sounds.a] {
            playSound(player: sound)
        }
    }
    
    @IBAction func bSoundAction(_ sender: NSButton) {
        if let sound = sounds[Sounds.b] {
            playSound(player: sound)
        }
    }
    
    @IBAction func cAnotherAction(_ sender: NSButton) {
        if let sound = sounds[Sounds.ca] {
            playSound(player: sound)
        }
    }
    
}

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: Any? {
        didSet {
        }
    }

}
