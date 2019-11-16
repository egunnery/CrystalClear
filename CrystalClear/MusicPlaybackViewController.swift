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
    
 //   @IBOutlet weak var myImageView: UIImageView!
    @IBAction func play(_ sender: UIButton!) {
        if audioSelected == true && audioPlayer.isPlaying == false {
            audioPlayer.play()
        }
    }
   
    
    @IBAction func prev(_ sender: UIButton!) {
        if thisSong != 0 && audioSelected == true {
            playThis(thisOne: songs[thisSong-1])
            thisSong -= 1
   //         label.text = songs[thisSong]
        }
    }
    @IBAction func next(_ sender: UIButton!) {
        if thisSong < songs.count-1 && audioSelected == true {
            playThis(thisOne: songs[thisSong+1])
            thisSong += 1
 //           label.text = songs[thisSong]
        } else {
            audioPlayer.stop()
        }
        
    }
    @IBAction func slider(_ sender: UISlider) {
        if audioSelected == true {
        audioPlayer.volume = sender.value
        }
    }
    
    @IBOutlet weak var label: UILabel!
    
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
  //      label.text = "test" //songs[thisSong]
        // Do any additional setup after loading the view.
    }
    
  

}
