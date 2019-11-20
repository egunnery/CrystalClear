//
//  Card.swift
//  CrystalClear
//
//  Created by Sarah on 14/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import Foundation
class Card {
    var isDay = true
    
    func whichMessage() -> String {
        if isDay == false {
            return nighttips.randomElement() ?? "No message"
        }else {
            return daytips.randomElement() ?? "No message"
        }
    }
    
    func whichTitle() -> String {
        if isDay == false {
            return nighttitle
        }else {
            return daytitle
        }
    }
}

var daytitle = "Daytime tip"
var daytips = ["Eat mindully: Avoid eating when distracted, try eating more slowly, and take your time to taste the food properly.", " Read food labels: You'll quickly realize just how often sugar is added to foods when you look for it on ingredients lists.", "Be salt smart: Lower your sodium intake.", "Watch what you eat: Cut down on saturated fat and sugar.", "Waterworld: Drink water throughout the day to avoid dehydration.", "Practice restraint: That chocolate can wait!"]
var nighttitle = "Night-time tip"
var nighttips = ["Reduce blue light exposure in the evening: Try not to use smartphones and computers emit in large amounts at night.", "Don't consume caffeine late in the day: Coffee stimulates your nervous system and may stop your body from naturally relaxing at night.", "Try to sleep and wake at consistent times: Being consistent with your sleep and waking times can aid long-term sleep quality.", "Clean room, clean mind: A neat and organised bedroom can promote a relaxing atmosphere.", "Don't force sleep: If you don't feel sleepy leave the room and do something else. Let sleep come naturally.", "Get comfy, get sleepy: Get a mattress and pillow that suit your sleep style."]
