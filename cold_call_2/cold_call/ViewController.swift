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
    @IBOutlet weak var numberLabel: UILabel!
    
    let names: [String] = ["Uyanga", "Cody", "Courtney", "Bryant", "Jay", "Jimmy", "Royta"]
    var arrIndex: Int = 0
    
    @IBAction func callButton(_ sender: UIButton) {
        numberLabel.isHidden = false
        arrIndex = Int(arc4random_uniform(UInt32(names.count)))
        updateUI()
    }
    
    func updateUI() {
        nameLabel.text = names[arrIndex]
        numberLabel.text = String(arrIndex + 1)
        switch arrIndex{
            case 0, 1:
                numberLabel.textColor = UIColor.red
                break
            case 2, 3:
                numberLabel.textColor = UIColor.orange
                break
            default:
                numberLabel.textColor = UIColor.green
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numberLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

