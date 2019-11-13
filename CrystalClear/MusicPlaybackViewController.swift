//
//  MusicPlaybackViewController.swift
//  CrystalClear
//
//  Created by Eoin on 13/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import UIKit

class MusicPlaybackViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBAction func play(_ sender: Any) {
        if audioPlayer.isPlaying == false {
            audioPlayer.play()
        }
    }
    @IBAction func pause(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.pause()
        }
    }
    @IBAction func prev(_ sender: Any) {
    }
    @IBAction func next(_ sender: Any) {
    }
    @IBAction func slider(_ sender: UISlider) {
        audioPlayer.volume = sender.value
    }
    
    
    @IBOutlet weak var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  

}
