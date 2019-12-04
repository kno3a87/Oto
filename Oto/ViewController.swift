//
//  ViewController.swift
//  Oto
//
//  Created by 久野文菜 on 2019/12/04.
//  Copyright © 2019 kno3. All rights reserved.
//

import UIKit
import AudioKit

var oscillator = AKOscillator()


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AudioKit.output = AKMixer(oscillator)
        try! AudioKit.start()
    }
    
    @IBAction func toggleSound(_ sender: Any) {
        if oscillator.isPlaying {
            oscillator.stop()
        } else {
            oscillator.amplitude = random(0.5, 1)
            oscillator.frequency = random(220, 880)
            oscillator.start()
        }
    }

}

