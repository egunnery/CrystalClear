//
//  TimerViewController.swift
//  CrystalClear
//
//  Created by Student on 18/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import UIKit
import AVFoundation

class TimerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let pickerData = ["5 Minutes", "10 Minutes", "20 Minutes"]
    var countdownTimer: Timer!
    var totalTime = 60
    var valueSelected = ""
    var timeString = ""
    var timerOn = false
    let audioPath = Bundle.main.path(forResource: "Bell", ofType: ".mp3")
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         // This method is triggered whenever the user makes a change to the picker selection.
         // The parameter named row and component represents what was selected.
        valueSelected = pickerData[row] as String
        
        if timerOn {
        countdownTimer.invalidate()
        }

     }

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var timerLabel: UILabel!
    

    @IBAction func startTimerPressed(_ sender: Any) {
        timeSelector()
        startTimer()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.picker.delegate = self
        self.picker.dataSource = self
        
    }
    
    func startTimer() {
        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        timerOn = true
        
    }
    
    func timeSelector() {
        if String(valueSelected) == "5 Minutes" {
            totalTime = 5 * 60
        } else {
            timeString = String(valueSelected.prefix(2))
            let timeSelected = Int(timeString) ?? 0
            totalTime = timeSelected * 60
        }
    }
    
    @objc func updateTime() {
        timerLabel.text = "\(timeFormatted(totalTime))"

        if totalTime != 0 {
            totalTime -= 1
        } else {
            endTimer()
            playThis()
        }
    }
    
    func endTimer() {
        countdownTimer.invalidate()
        timerOn = false
    }
    
    func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 60
        //     let hours: Int = totalSeconds / 3600
        return String(format: "%02d:%02d", minutes, seconds)
    }

    func playThis() {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            audioPlayer?.play()
            }
            catch {
                print ("ERROR");
            }
//            print(audioPath)
////        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
