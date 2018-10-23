//
//  ViewController.swift
//  UnitTestWorkouts
//
//  Created by CSS on 23/10/18.
//  Copyright © 2018 CSS. All rights reserved.
//

//Reference URL
//https://medium.com/@enricopiovesan/unit-testing-in-swift-tutorial-92daab95246b

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles) // => 140
        
    }


}

