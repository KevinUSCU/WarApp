//
//  ViewController.swift
//  WarApp
//
//  Created by Kevin Springer on 1/11/18.
//  Copyright © 2018 Kevin Springer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        if (leftRandomNumber > rightRandomNumber) {
            playerScore += 1
            leftScoreLabel.text = "\(playerScore)"
        } else if (leftRandomNumber < rightRandomNumber) {
            cpuScore += 1
            rightScoreLabel.text = "\(cpuScore)"
        }
        
        
    }
    
}

