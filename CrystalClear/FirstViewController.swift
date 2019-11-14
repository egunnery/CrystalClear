//
//  FirstViewController.swift
//  CrystalClear
//
//  Created by Eoin on 11/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    private let card = Card()
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func dayFlip(_ sender: Any) {
        if card.isDay == false {
            card.isDay = true
            let image = UIImage(named: "bazaar")
                  button.setImage(image, for: .normal)
                  UIView.transition(with: button, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
    @IBAction func nightFlip(_ sender: Any) {
        if card.isDay == true {
            card.isDay = false
            let image = UIImage(named: "cat3")
            button.setImage(image, for: .normal)
             UIView.transition(with: button, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    
    @IBAction func showAlertButtonTapped(_ sender: UIButton) {

    // create the alert
        let alert = UIAlertController(title: card.whichTitle(), message: card.whichMessage(), preferredStyle: UIAlertController.Style.alert)

    // add an action (button)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

    // show the alert
    self.present(alert, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    


}

