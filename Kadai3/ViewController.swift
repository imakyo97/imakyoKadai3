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
    
    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!
    
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.delegate = self
        textField2.delegate = self
        
    }
    
    @IBAction private func resultBtn(_ sender: Any) {
        
        let num1 = Int(textField1.text!) ?? 0
        let num2 = Int(textField2.text!) ?? 0
        
        let signedNum1: Int
        if switch1.isOn {
            signedNum1 = -num1
        }else{
            signedNum1 = num1
        }
        
        let signedNum2: Int
        if switch2.isOn {
            signedNum2 = -num2
        }else{
            signedNum2 = num2
        }
        label1.text = String(signedNum1)
        label2.text = String(signedNum2)
        resultLabel.text = String(signedNum1 + signedNum2)
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

