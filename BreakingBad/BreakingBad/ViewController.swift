//
//  ViewController.swift
//  BreakingBad
//
//  Created by erdicem on 23.11.2022.
//

import UIKit

class ViewController: UIViewController {

    var dataModel: [CharacterModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Client.getCharacters { character, error in
            guard let firstCharacter = character else {return}
            //print(firstCharacter)
            self.dataModel = firstCharacter
            print(self.dataModel)
        }
        
        
    }

}

