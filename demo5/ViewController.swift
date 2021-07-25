//
//  ViewController.swift
//  demo5
//
//  Created by masonjheng on 2021/7/21.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var loveTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func speak(_ sender: Any) {
        
        //print(loveTextField.text)

        let speechUtterance = AVSpeechUtterance(string: loveTextField.text!)
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speechUtterance)
        
    }
    
}

