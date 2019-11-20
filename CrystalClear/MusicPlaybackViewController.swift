//
//  MusicPlaybackViewController.swift
//  CrystalClear
//
//  Created by Eoin on 13/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import UIKit
import AVFoundation


class MusicPlaybackViewController: UIViewController {
    
    var isPlaying = false
    var timer:Timer!
    
    @IBAction func playOrPauseMusic(_ sender: Any) {
        if isPlaying {
            audioPlayer.pause()
            isPlaying = false
         } else {
             audioPlayer.play()
             isPlaying = true
         }
    }

    @IBAction func stopMusic(_ sender: Any) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        isPlaying = false
    }
    
    @IBAction func prev(_ sender: UIButton!) {
        if thisSong != 0 && audioSelected == true {
            playThis(thisOne: songs[thisSong-1])
            thisSong -= 1
        }
    }
    @IBAction func next(_ sender: UIButton!) {
        if thisSong < songs.count-1 && audioSelected == true {
            playThis(thisOne: songs[thisSong+1])
            thisSong += 1
        } else {
            audioPlayer.stop()
        }
        
    }
    @IBAction func slider(_ sender: UISlider) {
        if audioSelected == true {
        audioPlayer.volume = sender.value
        }
    }

    
    func playThis(thisOne:String) {
        do {
            let audioPath = Bundle.main.path(forResource: thisOne, ofType: ".mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            audioPlayer.play()
            }
            catch {
                print ("ERROR");
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated);
        if self.isMovingFromParent
        {
            audioPlayer.stop()
        }
    }

}

