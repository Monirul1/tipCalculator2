//
//  ViewController.swift
//  Tip Calcualtor 2
//
//  Created by Md Monirul Islam on 7/29/17.
//  Copyright © 2017 MD Monirul Islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var peopleSlider: UISlider!
    @IBOutlet weak var peoplLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var eachPersonAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blueColor()
    }
    
    func calculateEverything() {
        let amount = (amountTextField.text! as NSString).doubleValue
        let tipPercent =  tipSlider.value
        let tipAmount = amount * Double(tipPercent) / 100
        tipAmountLabel.text = "Tip Amount: \(tipAmount)"
        
        let totalAmount = amount + tipAmount
        totalAmountLabel.text = "Total Amount : \(totalAmount)"
        
        let numberOfPeople = Int(peopleSlider.value)
        peoplLabel.text = "Total People: \(numberOfPeople)"
        
        eachPersonAmountLabel.text = "Each Amount: \(totalAmount/Double(numberOfPeople))"
    }
    @IBAction func peopleChanged(sender: AnyObject) {
        calculateEverything()
        
    }
    
    @IBAction func tipChanged(sender: AnyObject) {
        calculateEverything()
        
    }
    
    @IBAction func amountChanged(sender: AnyObject) {
        calculateEverything()
        
    }


}

