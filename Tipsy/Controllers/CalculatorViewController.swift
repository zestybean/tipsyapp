//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    override func viewDidLoad() {
        tenPctButton.isSelected = true
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        if(sender.currentTitle == "0%"){
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        } else if(sender.currentTitle == "10%"){
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
        } else {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIButton) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if(zeroPctButton.isSelected){
            print(0.0)
        } else if (tenPctButton.isSelected){
            print(0.1)
        } else {
            print(0.2)
        }
    }
    
    
}

