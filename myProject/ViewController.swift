//
//  ViewController.swift
//  myProject
//
//  Created by Nikunj Prajapati on 26/06/20.
//  Copyright © 2020 Nikunj Prajapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //outlets
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var systemScore: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func dealButtonTapped(_ sender: UIButton)
    {
        let leftNum = Int.random(in: 2...14)
        let rightNum = Int.random(in: 2...14)
        
        leftImage.image = UIImage(named: "card\(leftNum)")
        rightImage.image = UIImage(named: "card\(rightNum)")
        
        if leftNum > rightNum
        {
            leftScore += 1
            playerScore.text = String(leftScore)
        }
        else if leftNum < rightNum
        {
            rightScore += 1
            systemScore.text = String(rightScore)
        }
        else
        {
            
        }
    }
    
}

