//
//  ViewController.swift
//  AdventCalendar
//
//  Created by Caroline Davis on 17/11/2017.
//  Copyright © 2017 Caroline Davis. All rights reserved.
//

import UIKit
import AVFoundation


class MainVC: UIViewController {
    
    @IBOutlet weak var musicButton: UIButton!
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        playMusic()

    }
    
 
    @IBAction func segwayToWindowVC(sender: UIButton) {
        audioPlayer?.stop()
        windowNumber = sender.tag

        performSegue(withIdentifier: "ToWindowVC", sender: self)
    }
    
 
    func playMusic() {
        let path = Bundle.main.path(forResource: "winterwonderland", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            self.audioPlayer = sound
            sound.numberOfLoops = 1
            sound.prepareToPlay()
            sound.play()
        } catch {
            print("\(error.localizedDescription)")
        }
        
    }
    
    @IBAction func musicOnOrOff() {
        if audioPlayer?.isPlaying == true {
            audioPlayer?.pause()
            musicButton.setImage(UIImage(named: "playButton.png"), for: .normal)
        } else {
            audioPlayer?.play()
            musicButton.setImage(UIImage(named: "stopButton.png"), for: .normal)
        }
        
    }


}

