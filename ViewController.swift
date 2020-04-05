//
//  ViewController.swift
//  Demo
//
//  Created by Kaitlin Parente on 2/24/20.
//  Copyright © 2020 Kaitlin Parente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func NewProblemButton(_ sender: Any) {
    }//ANTONIO send the UI back to a new problem
    
    @IBOutlet var Equation: UILabel! //this lable shows the equation to be solved
    
    @IBOutlet var Solution: UILabel! //this lable contains step by step
    
    @IBOutlet var Answer: UILabel! //this lable contains final answer
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Equation.text = "(5 + 6) * 7" //ANTONIO add equation string for presentation
        let expression = Expression("(5 + 6) * 7") //ANTONIO add the string here for evaluation
        let result = try? expression.evaluate() //this evaluates the equation
        
        var stringEdit = "" //creating initial solution string
        stringEdit = try! expression.StringSolution() //extracting solution string
        Solution.numberOfLines = 0 //allowing for multi-line solutions
        Solution.text = stringEdit //showing the solution
        Answer.text = result?.description //showing final answer
    }
    
}

