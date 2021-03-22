//
//  ViewController.swift
//  App1_HW1
//
//  Created by admin2 on 21.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIButton!
    @IBOutlet weak var yellowLight: UIButton!
    @IBOutlet weak var greenLight: UIButton!
    @IBOutlet weak var mainButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        yellowLight.layer.cornerRadius = 50
        redLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50

    }
    @IBAction func buttonPressed() {
        if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
              yellowLight.alpha = 0.3
              greenLight.alpha = 1
          } else if greenLight.alpha == 1 {
                greenLight.alpha = 0.3
                redLight.alpha = 1
          } else {
            mainButton.setTitle("NEXT", for: .normal)
            redLight.alpha = 1
          }
    }


}

