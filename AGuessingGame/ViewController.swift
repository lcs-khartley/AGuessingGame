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
    let targetNumber = Int.random(in: 1...100)
    
    @IBOutlet weak var submittedGuess: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    // MARK: Initializers
    
    
    // MARK: Methods (functions) -behaviours
    func speak(this feedback: String) {
        // Make an object name 'synthesizer', which is an instance of the class 'AVSpeechSynthesizer'\
        let synthesizer = AVSpeechSynthesizer()
        
        
        // Make an object 'utterance' which is an instance of the class 'AVSpeechUtterance'
        let utterance = AVSpeechUtterance(string: feedback)
        
        //Speak the message
        synthesizer.speak(utterance)
    }
    
    //Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        submitButton.isEnabled = true
        playAgainButton.isEnabled = false
        playAgainButton.backgroundColor = .white
        
        speak(this: "I'm thinking of a number between 1 and 100, guess what it is.")
        
        //Report the target number to the console for testing purposes
        print ("For testing purposes, the target number is \(targetNumber)")
        
    }
    
    //Will be used to check guess
    @IBAction func checkGuess(_ sender: Any) {
        
        //Obtain the guess value from the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        //For testing purposes, what was the guess?
        print ("For testing purposes, the guess made was \(guessNumber)")
        
        //Give the appropriate feedback to the user
        if guessNumber > targetNumber {
            print ("Guess lower next time.")
            speak(this: "Guess lower next time")
            
        }else if guessNumber < targetNumber {
            print ("Guess higher next time")
            speak(this: "Guess higher next time.")
            
        }else {
            print ("You are correct!")
            speak(this: "You got it right. Took you long enough")
            submitButton.isEnabled = false
            submitButton.backgroundColor = .white
            playAgainButton.isEnabled = true
            playAgainButton.backgroundColor = .green
        }
    }
    
    
    @IBAction func playAgain(_ sender: Any) {
            
    
    }
    
}
