//
//  GuidedMeditationViewController.swift
//  CrystalClear
//
//  Created by Eoin on 20/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import UIKit
import AVFoundation

class GuidedMeditationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  
    @IBOutlet weak var myTableView: UITableView!
    
     override func viewDidLoad() {
         super.viewDidLoad()
         songs = []
         gettingSongName()
     }
    
    
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
            let audioPath = Bundle.main.path(forResource: "Meditation1", ofType: ".m4a")
           try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            thisSong = indexPath.row
            audioSelected = true
            
            //code for segue to work
            performSegue(withIdentifier: "meditationPlayer", sender: self)

        }
        catch {
            print ("ERROR");
        }

    }
    
    
    func gettingSongName(){
        let folderURL = URL(fileURLWithPath: Bundle.main.resourcePath!)
        do {
            let songPath = try FileManager.default.contentsOfDirectory(at: folderURL, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)
            for song in songPath {
                var mySong = song.absoluteString
                
                if mySong.contains(".m4a") {
                    let findString = mySong.components(separatedBy: "/")
                    mySong = (findString[findString.count-1])
                    mySong = mySong.replacingOccurrences(of: "%20", with: " ")
                    mySong = mySong.replacingOccurrences(of: ".m4a", with: "")
                    mySong = mySong.replacingOccurrences(of: "1", with: "")
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
