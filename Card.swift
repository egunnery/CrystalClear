//
//  Card.swift
//  CrystalClear
//
//  Created by Eoin on 15/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import Foundation
class Card {
   var isDay = false
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
var daytitle = "Eat Mindfully"
var daytips = ["day", "day2", "day3"]
var nighttitle = "Rest Sleepily"
var nighttips = ["night", "night2", "night3"]
