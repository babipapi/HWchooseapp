//
//  ViewController.swift
//  HWchooseapp
//
//  Created by Daniel on 2019/4/19.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sytleSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var racecarSwitch: UISwitch!
    @IBOutlet weak var maxpriceLabel: UILabel!
    @IBOutlet weak var specialTextField: UITextField!
    @IBOutlet weak var priceSlider: UISlider!
    @IBOutlet weak var picImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
  
    @IBAction func priceSlider(_ sender: UISlider) {
        let currentprice = Int(sender .value)
        maxpriceLabel.text = "\(currentprice)"
    }
    
    @IBAction func suggestButton(_ sender: UIButton) {
        let style = sytleSegmentControl.selectedSegmentIndex
        let special = specialTextField.text
        let race = racecarSwitch.isOn
        let price = priceSlider.value
      //先從休旅車segment = 1開始，並從價格高得到低
        if style == 1,price > 230,race == false
        { picImageView.image = UIImage(named: "Q5")
        } else if style == 1,price > 170,race == false {
            picImageView.image = UIImage(named: "Q3")
        } else if style == 1,price > 140,race == false {
            picImageView.image = UIImage(named: "Q2")
        }
       //從轎車segment = 0,5 door,價格高的開始
        else if style == 0,price > 225,(special?.contains("5 door"))! {
            picImageView.image = UIImage(named: "A5")
        } else if style == 0,price > 192,(special?.contains("5 door"))! {
            picImageView.image = UIImage(named: "A4Avant")
        } else if style == 0,price > 143,(special?.contains("5 door"))! {
            picImageView.image = UIImage(named: "A3Sportback")
        } else if style == 0,price > 117,(special?.contains("5 door"))! {
            picImageView.image = UIImage(named: "A1")
        } else if style == 0,price > 205,(special?.contains("4 door"))! {
            picImageView.image = UIImage(named: "A4Sedan")
        } else if style == 0,price > 156,(special?.contains("4 door"))! {
            picImageView.image = UIImage(named: "A3Sedan")
        }
        //最後在來比switch
        else if race == true {
            picImageView.image = UIImage(named: "TT")
        }
    }
    

}

