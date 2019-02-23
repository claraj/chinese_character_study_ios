//
//  TranslationViewController.swift
//  HelloCollectionView
//
//  Created by student1 on 2/16/19.
//  Copyright © 2019 clara. All rights reserved.
//

import UIKit
import AVFoundation

class TranslationViewController: UIViewController {
    
    var char: Char?
    
    @IBOutlet var chineseCharacter: UILabel!
    @IBOutlet var pinyin: UILabel!
    @IBOutlet var englishTranslation: UILabel!
    
    let sythesizer = AVSpeechSynthesizer()
    let voice = AVSpeechSynthesisVoice(language: "zh-CN")  // System's Chinese voice
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let char = char else { return }
        
        chineseCharacter.text = char.chineseCharacter
        pinyin.text = char.pinyin
        englishTranslation.text = char.englishTranslation
        
        
    }
    
    
    @IBAction func readAloudTapped(_ sender: Any) {
        
        guard let char = char else { return }
        
        let audio = AVSpeechUtterance(string: char.chineseCharacter)
        audio.voice = voice
        sythesizer.speak(audio)
    }
}
