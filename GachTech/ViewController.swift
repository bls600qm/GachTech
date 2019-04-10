//
//  ViewController.swift
//  GachTech
//
//  Created by Rika Sumitomo on 2019/04/10.
//  Copyright © 2019 Rika Sumitomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func gacha(){
        self.performSegue(withIdentifier: "result", sender: nil)
    }

}

