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
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    @IBAction func dayFlip(_ sender: Any) {
        if card.isDay == false {
            card.isDay = true
            let image = UIImage(named: "bazaar")
            let image2 = UIImage(named: "pexels-photo-255501")
            let image3 = UIImage(named: "appetizing-bread-breakfast-close-up-357573")
            let image4 = UIImage(named: "pexels-photo-842571")
            let image5 = UIImage(named: "agriculture-basket-beets-bokeh-533360")
            let image6 = UIImage(named: "clear-glass-bottle-filled-with-broccoli-shake-1346347")
            button.setImage(image, for: .normal)
            button2.setImage(image2, for: .normal)
            button3.setImage(image3, for: .normal)
            button4.setImage(image4, for: .normal)
            button5.setImage(image5, for: .normal)
            button6.setImage(image6, for: .normal)
            UIView.transition(with: button, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: button2, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: button3, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: button4, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: button5, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
            UIView.transition(with: button6, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
    }
    @IBAction func nightFlip(_ sender: Any) {
        if card.isDay == true {
            card.isDay = false
            let image = UIImage(named: "night1")
            let image2 = UIImage(named: "night2")
            let image3 = UIImage(named: "night3")
            let image4 = UIImage(named: "night4")
            let image5 = UIImage(named: "night5")
            let image6 = UIImage(named: "night6")
            button.setImage(image, for: .normal)
            button2.setImage(image2, for: .normal)
            button3.setImage(image3, for: .normal)
            button4.setImage(image4, for: .normal)
            button5.setImage(image5, for: .normal)
            button6.setImage(image6, for: .normal)
            UIView.transition(with: button, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
            UIView.transition(with: button2, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
            UIView.transition(with: button3, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
            UIView.transition(with: button4, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
            UIView.transition(with: button5, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
            UIView.transition(with: button6, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
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
        
        button.layer.cornerRadius = 10.0
        button.layer.masksToBounds = true
        
        button2.layer.cornerRadius = 10.0
        button2.layer.masksToBounds = true
        
        button3.layer.cornerRadius = 10.0
        button3.layer.masksToBounds = true
        
        button4.layer.cornerRadius = 10.0
        button4.layer.masksToBounds = true
        
        button5.layer.cornerRadius = 10.0
        button5.layer.masksToBounds = true
        
        button6.layer.cornerRadius = 10.0
        button6.layer.masksToBounds = true
        

    }
    
    

}
