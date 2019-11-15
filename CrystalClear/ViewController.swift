//
//  ViewController.swift
//  CrystalClear
//
//  Created by Marion on 15/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import UIKit
import SwiftyGif

class ViewController : UIViewController {
    
    let logoAnimationView = LogoAnimationView()
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            view.addSubview(logoAnimationView)
            logoAnimationView.pinEdgesToSuperView()
            logoAnimationView.logoGifImageView.delegate = self
            
            view.backgroundColor = UIColor (red:0.42, green:0.78, blue:0.76, alpha:1.0)
        }
    
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            logoAnimationView.logoGifImageView.startAnimatingGif()
    
        }
    
    }
    
    extension ViewController: SwiftyGifDelegate {
        func gifDidStop(sender: UIImageView) {
            logoAnimationView.isHidden = true
            self.performSegue (withIdentifier: "TabController", sender: self)
    
    
        }
    
}
