//
//  CharacterStore.swift
//  HelloCollectionView
//
//  Created by student1 on 2/16/19.
//  Copyright © 2019 clara. All rights reserved.
//

//import Foundation

class CharacterStore {
    
    var chars: [Char]
    
    init() {
        
        let snow = Char(chineseCharacter: "雪", pinyin: "xuě", englishTranslation: "Snow")
        let wind = Char(chineseCharacter: "风", pinyin: "fēng", englishTranslation: "Wind")
        let rain = Char(chineseCharacter: "雨", pinyin: "yǔ", englishTranslation: "Rain")
        let warm = Char(chineseCharacter: "暖和", pinyin: "nuǎnhuo", englishTranslation: "Warm")
        let sunny = Char(chineseCharacter: "晴朗", pinyin: "qínglǎng", englishTranslation: "Sunny")
        let fog = Char(chineseCharacter: "雾", pinyin: "wù", englishTranslation: "Fog")
        
        chars = [snow, wind, rain, warm, sunny, fog]
        chars.shuffle()
        
    }
    
}



