//
//  Card.swift
//  CrystalClear
//
//  Created by Student on 14/11/2019.
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
var daytips = ["Eat mindully: In our fast-paced world, there can be a tendency to eat while distracted and shovel in more food than we need and, at the same time, miss out on culinary pleasure. Many of us will benefit from eating mindfully. Some things to think about here are avoiding eating when distracted, eating more slowly, and taking time to taste food properly. One particular thing to focus on is chewing your food thoroughly – not only does this help us savour food, it also assists the digestive process.", " Read food labels: You'll quickly realize just how often sugar is added to foods when you look for it on ingredients lists. 'Even things that you don't think are sweet, like tomato sauce, crackers, condiments, and salad dressings can be packed with sugar,' says Diane Sanfilippo, certified nutrition consultant and author of The 21 Day Sugar Detox. Ingredients are listed in order of how much exists in the product, so if sugar's near the top, that's a red flag.", "Be salt smart: Certain groups of people, for example, the elderly, and those with a family history of high blood pressure — are more likely than others to have blood pressure that's particularly salt (or sodium) sensitive. But because there's no way to tell whether any one individual is sodium sensitive, everyone should lower sodium intake, says Eva Obarzanek, PhD, a research nutritionist at the National Heart, Lung, and Blood Institute. How far? To 1,500 mg daily if you want low blood pressure, she says. (Half a teaspoon of salt contains about 1,200 mg of sodium.) Cutting sodium means more than going easy on the saltshaker, which contributes just 15% of the sodium in the typical American diet. Watch for sodium in processed foods, Obarzanek warns. That’s where most of the sodium in your diet comes from, she says. Season foods with spices, herbs, lemon, and salt-free seasoning blends."]
var nighttitle = "Night-time tip"
var nighttips = ["Reduce blue light exposure in the evening: Exposure to light during the day is beneficial, but nighttime light exposure has the opposite effect. This is due to its impact on your circadian rhythm, tricking your brain into thinking it is still daytime. This reduces hormones like melatonin, which help you relax and get deep sleep. Blue light — which electronic devices like smartphones and computers emit in large amounts — is the worst in this regard.", "Don't consume caffeine late in the day: Caffeine has numerous benefits and is consumed by 90% of the US population. A single dose can enhance focus, energy and sports performance. However, when consumed late in the day, coffee stimulates your nervous system and may stop your body from naturally relaxing at night. In one study, consuming caffeine up to six hours before bed significantly worsened sleep quality. Caffeine can stay elevated in your blood for 6–8 hours. Therefore, drinking large amounts of coffee after 3–4 p.m. is not recommended — especially if you are sensitive to caffeine or have trouble sleeping.", "Try to sleep and wake at consistent times: our body's circadian rhythm functions on a set loop, aligning itself with sunrise and sunset. Being consistent with your sleep and waking times can aid long-term sleep quality. If you struggle with sleep, try to get in the habit of waking up and going to bed at similar times. After several weeks, you may not even need an alarm."]
