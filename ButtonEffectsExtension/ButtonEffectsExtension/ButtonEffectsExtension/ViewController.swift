//
//  ViewController.swift
//  ButtonEffectsExtension
//
//  Created by Alejo Muñoz on 16/07/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // UI
        
        button1.round()
        button2.round()
        button3.round()
        
    }


    @IBAction func button1Action(_ sender: Any) {
        button1.bounce()
    }
    
    @IBAction func button2Action(_ sender: Any) {
        button2.shime()
    }
    
    @IBAction func button3Action(_ sender: Any) {
        button3.jump()
    }
    
    
    
    @IBAction func ButtonsAction(_ sender: UIButton) {
        
    }
}

