//
//  ViewController.swift
//  Assignment_03
//
//  Created by Pratiksha on 2024-09-20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numberInserted: UITextField!
    
    
    @IBOutlet weak var result: UILabel!
    
    
    
    @IBOutlet weak var score: UILabel!
    
    var random = Int.random(in : 1...100)
    var bestScore = 0;
    
   
    
    @IBAction func BTNSubmit(_ sender: UIButton) {
        self.view.endEditing(true)
        guard let numberInserted = numberInserted.text,
              let guessedInput = Int(numberInserted) else{
            return}
        
        if(guessedInput == random)
        {
            result.alpha = 1;
            result.text = "Congrats! you won a score";
            bestScore+=1;
            resetGame();
            score.alpha = 1;
        }
        else if(guessedInput>0 && guessedInput < random)
        {
            result.alpha = 1;
            result.text = "Try Again !! The entered number is more than the correct answer";
        }
        else if(guessedInput > random && guessedInput<101)
        {
            result.alpha = 1;
            result.text = "Try Again !! The entered number is less than the correct answer";
            
        }
        
        else{
            result.text = "Please enter a number between 1 and 100";
        }
        
        
        score.text = "Your Best Score :\(bestScore)";
        
            
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        result.alpha = 0;
        score.alpha = 0;
        
    }
    func resetGame(){
        random = Int.random(in: 1...100)
        result.text = " ";
        result.alpha = 0;
        score.alpha = 0;
    }


}

