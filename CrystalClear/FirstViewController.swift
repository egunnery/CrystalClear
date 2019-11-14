//
//  FirstViewController.swift
//  CrystalClear
//
//  Created by Eoin on 11/11/2019.
//  Copyright © 2019 Makers September 2019 Cohort. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBAction func showAlertButtonTapped(_ sender: UIButton) {

    // create the alert
    let alert = UIAlertController(title: "Eat Mindfully", message: "Eat mindfully. In our fast-paced world, there can be a tendency to eat while distraced and shovel in more food than we need. Try eating more slowly and taking time to taste food properly. Eat mindfully. In our fast-paced world, there can be a tendency to eat while distraced and shovel in more food than we need. Try eating more slowly and taking time to taste food properly.Eat mindfully. In our fast-paced world, there can be a tendency to eat while distraced and shovel in more food than we need. Try eating more slowly and taking time to taste food properly. Eat mindfully. In our fast-paced world, there can be a tendency to eat while distraced and shovel in more food than we need. Try eating more slowly and taking time to taste food properly", preferredStyle: UIAlertController.Style.alert)

    // add an action (button)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

    // show the alert
    self.present(alert, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    

}

