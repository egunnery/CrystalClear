//
//  SoundOptionsViewController.swift
//  CrystalClear
//
//  Created by Eoin on 15/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import UIKit
import AVFoundation

var songs:[String] = []
var audioPlayer: AVAudioPlayer!
var thisSong = 0
var audioSelected = false
var isPlaying = false

class SoundOptionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let ncObserver = NotificationCenter.default

    @IBOutlet weak var myTableView: UITableView!
 
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = songs[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        do {
            let audioPath = Bundle.main.path(forResource: songs[indexPath.row], ofType: ".mp3")
           try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            audioPlayer.play()
            isPlaying = true
            thisSong = indexPath.row
            audioSelected = true
            
            //code for segue to work
            performSegue(withIdentifier: "musicPlayer", sender: self)

        }
        catch {
            print ("ERROR");
        }

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        gettingSongName()
    }
    
    
    func gettingSongName(){
        let folderURL = URL(fileURLWithPath: Bundle.main.resourcePath!)
        do {
            let songPath = try FileManager.default.contentsOfDirectory(at: folderURL, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)
            for song in songPath {
                var mySong = song.absoluteString
                
                if mySong.contains(".mp3") {
                    let findString = mySong.components(separatedBy: "/")
                    mySong = (findString[findString.count-1])
                    mySong = mySong.replacingOccurrences(of: "%20", with: " ")
                    mySong = mySong.replacingOccurrences(of: ".mp3", with: "")
                    songs.append(mySong)
                    songs = songs.filter(){$0 != "Bell"}

                }
            }
            
            myTableView.reloadData()
        }
        catch {
            
        }
    }
}
