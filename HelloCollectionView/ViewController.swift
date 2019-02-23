//
//  ViewController.swift
//  HelloCollectionView
//
//  Created by student1 on 2/16/19.
//  Copyright © 2019 clara. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var characters = CharacterStore().chars
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharacterCell", for: indexPath) as! CharacterCell
        
        cell.characterLabel.text = characters[indexPath.row].chineseCharacter
        
        return cell
    }

    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "translation" {
            
            let destination = segue.destination as! TranslationViewController
            let itemRow = collectionView.indexPathsForSelectedItems?.first!.row
            destination.char = characters[itemRow!]
        }
    }

}

