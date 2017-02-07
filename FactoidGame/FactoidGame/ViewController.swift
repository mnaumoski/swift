//
//  ViewController.swift
//  FactoidGame
//
//  Created by Marija Naumoski on 2/5/17.
//  Copyright © 2017 Marija Naumoski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    @IBOutlet weak var labelQuestion: UILabel!
    
    @IBOutlet weak var labelScore: UILabel!
    
    @IBOutlet weak var labelFeedback: UILabel!
    
    
    @IBOutlet weak var buttonNext: UIButton!
    var score :Int! = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LoadScore()
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func LoadScore()
    {
        let defaults = UserDefaults.standard
        score = defaults.integer(forKey: "score")
        labelScore.text = "score: \(score)"
    }
    
    func SaveScore()
    
    {
    }
}

