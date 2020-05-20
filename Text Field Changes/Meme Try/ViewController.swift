//
//  ViewController.swift
//  Meme Try
//
//  Created by osama on 4/25/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    let zipCodeDelegate = ZipCodeDelegate()
    let cashDelegat = cashDelegate()
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var editingSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textField1.delegate = self.zipCodeDelegate
        self.textField2.delegate = self.cashDelegat
        self.textField3.delegate = self
        
        self.editingSwitch.setOn(false, animated: true)
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.editingSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    @IBAction func toggleTheTextEditor(_ sender: Any) {
        if !(sender as! UISwitch).isOn {
            self.textField3.resignFirstResponder()
        }
    }
}

