//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Chris Snyder on 3/1/16.
//  Copyright © 2016 LAKES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moneyTextField: UITextField!

    @IBOutlet weak var usaButton: UIButton!
    @IBOutlet weak var mexicoButton: UIButton!
    @IBOutlet weak var germanyButton: UIButton!
    @IBOutlet weak var convertedlabel: UILabel!

    var currencyRate = 0.00

    override func viewDidLoad() {
        super.viewDidLoad()
        convertedlabel.text = "You converted amount will show here"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func usaPressed(sender: AnyObject)
    {
        currencyRate = 113.820
        let numberToConvert = Double(moneyTextField.text!)
        let convertedCurreny = numberToConvert! * currencyRate
        let dollarFormat = NSString(format: "$%.2f", convertedCurreny)

        convertedlabel.text = "\(dollarFormat)"
    }

    @IBAction func mexicoPressed(sender: AnyObject)
    {
        currencyRate = 1.33797
        let numberToConvert = Double(moneyTextField.text!)
        let convertedCurreny = numberToConvert! * currencyRate
        let dollarFormat = NSString(format: "$%.2f", convertedCurreny)

        convertedlabel.text = "\(dollarFormat)"
    }

    @IBAction func germanyPressed(sender: AnyObject)
    {
        currencyRate = 0.91263
        let numberToConvert = Double(moneyTextField.text!)
        let convertedCurreny = numberToConvert! * currencyRate
        let dollarFormat = NSString(format: "$%.2f", convertedCurreny)

        convertedlabel.text = "\(dollarFormat)"
    }

    /*
    @IBAction func convertCashPressed(sender: AnyObject)
    {
        let numberToConvert = Double(moneyTextField.text!)
        let convertedCurreny = numberToConvert! * currencyRate
        let dollarFormat = NSString(format: "$%.2f", convertedCurreny)

        convertedlabel.text = "\(dollarFormat)"
    }
    */
}

