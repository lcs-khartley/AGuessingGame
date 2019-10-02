//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Hartley, Keira on 2019-10-02.
//  Copyright © 2019 Hartley, Keira. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // MARK: Properties (where we store information)
    
    // MARK: Initializers
    
    // MARK: Methods (functions) -behaviours
    
    //Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make an object name 'synthesizer', which is an instance of the class 'AVSpeechSynthesizer'\
        let synthesizer = AVSpeechSynthesizer()
        
        // Make a string that contains what we want the computer to say
        let message = "I'm thingking of a number between 1 and 100. Guess what it is."
        
        // Make an object 'utterance' which is an instance of the class 'AVSpeechUtterance'
        let utterance = AVSpeechUtterance(string: message)
        
        //Speak the message
        synthesizer.speak(utterance)
        
    }


}

