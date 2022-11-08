//
//  ViewController.swift
//  MemoCalculator
//
//  Created by Salih Yusuf Göktaş on 2.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var saveResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedNumber = UserDefaults.standard.object(forKey: "saved")
        if let newNumber = savedNumber as? String {
            saveResultLabel.text = newNumber
        }
    }
    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(saveResultLabel.text!, forKey: "saved")
        saveResultLabel.text = resultLabel.text
    }
    @IBAction func plus(_ sender: Any) {
        
        if let myTextField1 = Int(num1.text!) {
            if let myTextField2 = Int(num2.text!) {
                
                let result = myTextField1+myTextField2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "Hatalı Değer Girdiniz"
            }
        }
    }
    @IBAction func minus(_ sender: Any) {
        if let myTextField1 = Int(num1.text!) {
            if let myTextField2 = Int(num2.text!) {
                
                let result = myTextField1-myTextField2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "Hatalı Değer Girdiniz"
            }
        }
    }
    @IBAction func division(_ sender: Any) {
        if let myTextField1 = Int(num1.text!) {
            if let myTextField2 = Int(num2.text!) {
                
                let result = myTextField1/myTextField2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "Hatalı Değer Girdiniz"
            }
        }
        
    }
    @IBAction func multiplication(_ sender: Any) {
        if let myTextField1 = Int(num1.text!) {
            if let myTextField2 = Int(num2.text!) {
                
                let result = myTextField1*myTextField2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "Hatalı Değer Girdiniz"
            }
        }
    }
}

