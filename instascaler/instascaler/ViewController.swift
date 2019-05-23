//
//  ViewController.swift
//  Instascaler
//
//  Created by Ghadeer Elmahdy on 5/23/19.
//  Copyright © 2019 Ghadeer Elmahdy. All rights reserved.
//

import UIKit


class ViewController: UIViewController{
    
    @IBOutlet weak var nametxt: UITextField!
    
    @IBOutlet weak var countrytxt: UITextField!
    
    @IBOutlet weak var budgettxt: UITextField!
    
    @IBOutlet weak var goaltxt: UITextField!
    
    @IBOutlet weak var catogrytxt: UITextField!
    
   
    
    
  
    
  let catogry = ["Movies", "Family and Relationships","Books and Literature","Home & Garden","Business and Finance","Automotive","Style & Fashion"]
  let budget = ["149", "399","999"]
  let goal = ["Awareness", "Conversion"]
  let country = ["KSA","EGY","UAE","USA"]
    
  var selected: String?
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        createPicker()
        createToolbar()

        
    }
    func createPicker() {
        
        let Picker = UIPickerView()
        Picker.delegate = self
        
        catogrytxt.inputView = Picker
        budgettxt.inputView = Picker
        goaltxt.inputView = Picker
        countrytxt.inputView=Picker
        
        
        //Customizations
        Picker.backgroundColor = .blue
 
       }
    func createToolbar() {
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        //Customizations
        toolBar.barTintColor = .black
        toolBar.tintColor = .white
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ViewController.dismissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        catogrytxt.inputAccessoryView = toolBar
        countrytxt.inputAccessoryView = toolBar
        goaltxt.inputAccessoryView = toolBar
        budgettxt.inputAccessoryView = toolBar
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }


}


