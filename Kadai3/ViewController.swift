//
//  ViewController.swift
//  Kadai3
//
//  Created by 今村京平 on 2021/04/28.
//

import UIKit
import Foundation

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.delegate = self
        textField2.delegate = self
        
    }
    
    @IBAction func resultBtn(_ sender: Any) {
        
        if switch1.isOn == true{
            let num1 = (Double(textField1.text!) ?? 0) * -1
            label1.text = String(num1)
        }else {
            let num1 = (Double(textField1.text!) ?? 0)
            label1.text = String(num1)
        }
        
        if switch2.isOn == true{
            let num2 = (Double(textField2.text!) ?? 0) * -1
            label2.text = String(num2)
            
        }else {
            let num2 = (Double(textField2.text!) ?? 0)
            label2.text = String(num2)
        }
        
        var total = Double(label1.text!) ?? 0
        total += Double(label2.text!) ?? 0
        resultLabel.text = String(total)
    }
    
    //textFieldのxボタンが押された時の処理
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        if textField == textField1 {
            label1.text = "0"
        }else {
            label2.text = "0"
        }
        return true
    }
    
    //returnキーが押された時の処理
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
}

