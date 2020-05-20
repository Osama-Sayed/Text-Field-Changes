//
//  ZipCodeDelegate.swift
//  Meme Try
//
//  Created by osama on 4/26/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import UIKit
class ZipCodeDelegate: NSObject,UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range:NSRange, replacementString string: String) -> Bool {
       var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        return newText.length <= 5
    }
    
    func textFieldShouldReturn(_ textField : UITextField)-> Bool{
        textField.resignFirstResponder()
        
        return true;
    }
}
