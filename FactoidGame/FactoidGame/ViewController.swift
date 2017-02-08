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
    
    var score = 0
    var allEntries = NSArray.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        LoadAllQuestionsAndAnswers()
        
        LoadQuestion(index: 0)
        
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
        labelScore.text = "Score: \(score)"
    }
    
    func SaveScore()
    
    {
        let defaults = UserDefaults.standard
        defaults.set(score, forKey: "score")
        
    }
    
    
    
    func LoadAllQuestionsAndAnswers()
    {
        let path = Bundle.main.path(forResource: "content", ofType: "json")
        let jsonData : NSData = NSData(contentsOfFile: path!)!
        allEntries = try! JSONSerialization.jsonObject(with: jsonData as Data, options: []) as! NSArray
//        print(allEntries)
    }
    
    func LoadQuestion(index : Int)
    {
        var entry : NSDictionary = allEntries.objectAtIndex(index) as NSDictionary
        var question : NSString = entry.object(forKey: "question") as! NSString
        var arr : NSMutableArray = entry.object(forKey: "answers") as! NSMutableArray
        print(arr)
    }
}

