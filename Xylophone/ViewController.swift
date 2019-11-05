//
//  ViewController.swift
//  Xylophone
//
//  Created by Darko Kulakov on 2019-11-05.
//  Copyright © 2019 Elena Kulakova. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        UIButton.animate(withDuration: 0.2) {
            sender.alpha = 0.5
            sender.alpha = 1
        }
    }
    
    func playSound(soundName: String) {
        
       let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer?.play()
    }
}
