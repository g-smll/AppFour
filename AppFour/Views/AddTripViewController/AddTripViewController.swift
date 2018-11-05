//
//  AddTripViewController.swift
//  AppFour
//
//  Created by 陈纲 on 2018/11/4.
//  Copyright © 2018 陈纲. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var tripTextField: UITextField!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var saveButton: UIButton!
    
    var doSave: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.font = UIFont(name: Theme.mainFontName, size: 24)
    }
    

    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        
        TripFunction.createTrip(tripModel: TripModel(title: tripTextField.text!))
        
        guard tripTextField.text != "", let _ = tripTextField.text else {
            //Alternatives
            tripTextField.layer.borderColor = UIColor.red.cgColor
            tripTextField.layer.borderWidth = 1
            tripTextField.layer.cornerRadius = 5
            tripTextField.placeholder = "旅行地名必填"
            tripTextField.rightViewMode = .always
            return
        }
        
        if let doSave = doSave{
            doSave()
        }
        dismiss(animated: true)
    }
    
    

}
