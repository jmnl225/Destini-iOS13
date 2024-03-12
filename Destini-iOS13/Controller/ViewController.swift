//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
   
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choice1Button.tag = 1
        choice2Button.tag = 2
        
        storyLabel.text = storyBrain.stories[0].title
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        var storyStep = storyBrain.nextStory(userChoice: sender.tag)
        
        storyLabel.text = storyBrain.stories[storyStep].title
        choice1Button.setTitle(storyBrain.stories[storyStep].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyStep].choice2, for: .normal)
    }
    
}

