//
//  extensions.swift
//  Instascaler
//
//  Created by Ghadeer Elmahdy on 5/23/19.
//  Copyright © 2019 Ghadeer Elmahdy. All rights reserved.
//
import UIKit

extension ViewController : UIPickerViewDelegate,UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(catogrytxt.isEditing)
        {
            return catogry.count
            
        }else if (countrytxt.isEditing){
            
            return country.count
        }else if (budgettxt.isEditing){
            
            return budget.count
        }else {
            
            return goal.count
            
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(catogrytxt.isEditing)
        {
            return catogry[row]
            
        }else if (countrytxt.isEditing){
            
            return country[row]
        }else if (budgettxt.isEditing){
            
            return budget[row]
        }else {
            
            return goal[row]
            
        }
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(catogrytxt.isEditing)
        {
            selected = catogry[row]
            catogrytxt.text = selected
            
        }else if (countrytxt.isEditing){
            
            selected = country[row]
            countrytxt.text = selected
        }else if (budgettxt.isEditing){
            
            selected = budget[row]
            budgettxt.text = selected
        }else {
            selected = goal[row]
            goaltxt.text = selected
        }
        
    }
    
}

//to get random catogry value
extension Int {
    var arc4Random: Int {
        switch self {
        case 1...Int.max:
            return Int(arc4random_uniform(UInt32(self)))
        case -Int.max..<0:
            return Int(arc4random_uniform(UInt32(self)))
        default:
            return 0
        }
        
    }
}
