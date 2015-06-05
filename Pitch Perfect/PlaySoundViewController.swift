//
//  PlaySoundViewController.swift
//  Pitch Perfect
//
//  Created by Bryan Berry on 6/3/15.
//  Copyright (c) 2015 Bryan Berry. All rights reserved.
//
import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {
    @IBOutlet weak var playPause: UIButton!
    
    var audioPlayer:AVAudioPlayer!
    var receivedAudio:RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer!.enableRate = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func playAudio(sender: UIButton) {
        // here you can check if the player was successfully created
        if let audioPlayer = audioPlayer {
            // here you can check if your player is playing
            if audioPlayer.playing {
                //if playing lets pause it
                playPause.setTitle("Play", forState: UIControlState.Normal)
                audioPlayer.pause()
            } else {
                //if plaused lets play it
                playPause.setTitle("Pause", forState: UIControlState.Normal)
                audioPlayer.stop()
                audioPlayer.rate = 0.5
                audioPlayer.play()
            }
        } else {
            println("audioPlayer not created")
        }
    }
    
    @IBAction func fastplay(sender: UIButton) {
        if let audioPlayer = audioPlayer {
            // here you can check if your player is playing
            if audioPlayer.playing {
                //if playing lets pause it
                playPause.setTitle("Play", forState: UIControlState.Normal)
                audioPlayer.pause()
            } else {
                //if plaused lets play it
                playPause.setTitle("Pause", forState: UIControlState.Normal)
                audioPlayer.stop()
                audioPlayer.rate = 2.0
                audioPlayer.play()
            }
        } else {
            println("audioPlayer not created")
        }
    }
    
    @IBAction func Stop(sender: UIButton) {
        if let audioPlayer = audioPlayer {
            // here you can check if your player is playing
            if audioPlayer.playing {
                //if playing lets stop it
                audioPlayer.stop()
            } else {
                //if plaused then stop it anyway
                audioPlayer.stop()
            }
        } else {
            println("audioPlayer not created")
        }
    }
}










