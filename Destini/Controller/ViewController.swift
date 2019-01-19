//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allChapters = StoryBank()
    var chapterNumber : Int = 0
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeStory()
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if (sender.tag == 1 && chapterNumber == 0) || (sender.tag == 1 && chapterNumber == 1) {
            chapterNumber = 2
            changeStory()
        } else if sender.tag == 2 && chapterNumber == 0 {
            chapterNumber = 1
            changeStory()
        } else if sender.tag == 2 && chapterNumber == 1 {
            chapterNumber = 3
            hideButtons()
            changeStory()
        } else if sender.tag == 1 && chapterNumber == 2 {
            chapterNumber = 5
            hideButtons()
            changeStory()
        } else if sender.tag == 2 && chapterNumber == 2 {
            chapterNumber = 4
            hideButtons()
            changeStory()
        }
    
    }
    
    // Change story
    func changeStory() {
        storyTextView.text = allChapters.chapters[chapterNumber].storyText
        topButton.setTitle(allChapters.chapters[chapterNumber].answerA , for: .normal)
        bottomButton.setTitle(allChapters.chapters[chapterNumber].answerB, for: .normal)
    }
    
    // Hide buttons
    func hideButtons() {
        self.topButton.isHidden = true
        self.bottomButton.isHidden = true
    }
    



}

