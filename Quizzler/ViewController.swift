//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let questions = QuestionBank()
    var questionNumber : Int = 0
    var pickedAnswer : Bool = false
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        questionNumber += 1
        if questionNumber < 13 {
            questionLabel.text = questions.list[questionNumber].questionText
        }
        else {
            startOver()
        }
    }
    
    
    func checkAnswer() {
        if pickedAnswer == questions.list[questionNumber].answer {
            print("You got it!")
        }
        else {
            print("Wrong")
        }
    }
    
    
    func startOver() {
        print("Start over")
        questionNumber = 0
    }
    

    
}
