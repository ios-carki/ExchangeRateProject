//
//  ViewController.swift
//  ExchangeRateProject
//
//  Created by Carki on 2022/07/27.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var exRate1: UILabel!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var exRate2: UILabel!
    @IBOutlet weak var result2Label: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exRateLabelDesign(labelName1: exRate1, labelName2: exRate2)
    }
    
    func exRateLabelDesign(labelName1: UILabel, labelName2: UILabel) {
        labelName1.text = "환율 1100원일때"
        labelName1.textAlignment = .center
        labelName1.font = .boldSystemFont(ofSize: 20)
        
        labelName2.text = "환율 1350원일때"
        labelName2.textAlignment = .center
        labelName2.font = .boldSystemFont(ofSize: 20)
        
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        resultLabel.text = userTextField.text
    }
    

}

