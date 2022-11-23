//
//  ViewController.swift
//  BreakingBad
//
//  Created by erdicem on 23.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Client.getCharacters { character, error in
            guard let firstCharacter = character?[0] else {return}
            print(firstCharacter)
        }
        
    }

}

