//
//  LogoAnimationView.swift
//  CrystalClear
//
//  Created by Marion on 15/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import UIKit
import SwiftyGif

class LogoAnimationView: UIView{
    let logoGifImageView: UIImageView = {
           guard let gifImage = try? UIImage(gifName: "logo.gif") else {
               return UIImageView()
           }
           return UIImageView(gifImage: gifImage, loopCount: 1)
       }()

       override init(frame: CGRect) {
           super.init(frame: frame)
           commonInit()
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           commonInit()
       }
       
       private func commonInit() {
           backgroundColor = UIColor (red:0.42, green:0.78, blue:0.76, alpha:1.0)
           addSubview(logoGifImageView)
           logoGifImageView.translatesAutoresizingMaskIntoConstraints = false
           logoGifImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
           logoGifImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
           logoGifImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
           logoGifImageView.heightAnchor.constraint(equalToConstant: 450).isActive = true
       }
}
