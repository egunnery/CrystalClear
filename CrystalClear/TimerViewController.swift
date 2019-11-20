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
    
    let timerSong = Int(thisSong)
    let pickerData = ["5 Minutes", "10 Minutes", "20 Minutes"]
    var countdownTimer: Timer!
    var totalTime = 60
    var valueSelected = ""
    var timeString = ""
    var timerOn = false
    var timerChecker = false
    var secondsToDelay = 4.0
    let audioPath = Bundle.main.path(forResource: "Bell", ofType: ".mp3")
    let audioPath1 = Bundle.main.path(forResource: "test", ofType: ".mp3")
    let audioPath3 = Bundle.main.path(forResource: "ES_Thunderstorm Rain 2 - SFX Producer", ofType: ".mp3")
    let audioPath2 = Bundle.main.path(forResource: "bensound-summer", ofType: ".mp3")

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
        timerChecker = true
    }
    
    func timeSelector() {
        if String(valueSelected) == "5 Minutes" {
            totalTime = 3
        }
        else if valueSelected == "" {
            totalTime = 3
            }
        else {
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
            playThis()
            endTimer()
        }
    }
    
    func endTimer() {
        countdownTimer.invalidate()
        timerOn = false
        timerChecker = false
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
            if timerChecker == true {
                audioPlayer?.play()
                }
            timerChecker = false
            }
            catch {
                print ("ERROR");
            }

    }
    
        override func viewDidDisappear(_ animated: Bool) {
            if isPlaying {
                timerChecker = false
            }
                if Int(thisSong) == 0 {
                    do{
                        audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath1!))
                    }
                    catch {
                        print ("ERROR");
                    }
                }
                else if Int(thisSong) == 1 {
                    do{
                        audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath2!))
                    }
                    catch {
                        print ("ERROR");
                    }
                }
                else if Int(thisSong) == 2 {
                    do{
                        audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath3!))
                    }
                    catch {
                        print ("ERROR");
                    }
                }
            }
        }
    
    /*
    // MARK: - Navigation
​
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

