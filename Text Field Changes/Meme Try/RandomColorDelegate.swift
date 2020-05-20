//
//  RandomColorDelegate.swift
//  Meme Try
//
//  Created by osama on 4/26/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import  UIKit

class RandomColorDelegate: NSObject, UITextFieldDelegate {
    let colors =
        [UIColor.red,
         UIColor.orange,
         UIColor.yellow,
         UIColor.green,
         UIColor.blue,
         UIColor.purple,
         UIColor.brown
    ]
    
    func textField(_ textField : UITextField, shouldChangeCharactersIn range :NSRange, replacementString : String) -> Bool{
        textField.textColor = self.randomColor()
        return true
    }
    
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
}
