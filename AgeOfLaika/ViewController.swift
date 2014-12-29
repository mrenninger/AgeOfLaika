//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Michael Renninger on 11/19/14.
//  Copyright (c) 2014 Michael Renninger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var convertedLbl: UILabel!
    @IBOutlet weak var humanYearsTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onConvertBtnClicked(sender: UIButton) {
        let conversionFactor = 7.0
        convertedLbl.hidden = false;
//        convertedLbl.text = "\(Double((humanYearsTF.text as NSString).doubleValue) / conversionFactor) years in human years"
        
        convertedLbl.text = "\(Double((humanYearsTF.text as NSString).doubleValue) * conversionFactor) years in human years"
        humanYearsTF.resignFirstResponder()
    }

    @IBAction func onConvertRealBtnClicked(sender: UIButton) {
        convertedLbl.hidden = false;
        
        var ageDbl = Double((humanYearsTF.text as NSString).doubleValue)
        var convertedAge = 0.0
        
        if Double((humanYearsTF.text as NSString).doubleValue) <= 2 {
            convertedAge = ageDbl * 10.5
        } else {
            convertedAge = ((ageDbl - 2) * 4) + 21
        }
        
        convertedLbl.text = "\(convertedAge) years in human years"
        humanYearsTF.resignFirstResponder()
    }
}

