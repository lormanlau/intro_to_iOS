//
//  ViewController.swift
//  cold_call
//
//  Created by Lorman Lau on 9/6/17.
//  Copyright © 2017 Lorman Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    let names: [String] = ["Uyanga", "Cody", "Courtney", "Bryant", "Jay", "Jimmy", "Royta"]
    var arrIndex = 0
    
    @IBAction func callButton(_ sender: UIButton) {
        updateUI()
        if arrIndex != names.count - 1 {
            arrIndex += 1
        } else {
            arrIndex = 0
        }
    }
    
    func updateUI() {
        nameLabel.text = names[arrIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

