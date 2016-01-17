//
//  ViewController.swift
//  MyFirstSwift
//
//  Created by Phatthana Tongon on 1/17/2559 BE.
//  Copyright © 2559 Phatthana Tongon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var profileImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2.0
        profileImageView.image = UIImage(named: "default_profile")
        
        submitButton.setBackgroundImage(UIImage(named: "default_profile"), forState: UIControlState.Highlighted)
    }
    
    @IBAction func touchButton(sender: AnyObject) {
        let name = nameTextField.text!
        changePicture(name)
    }
    
    func changePicture(name: String){
        nameLabel.text = "My name is \(name)."
        
        let profilePictureName = name == "luffy" || name == "saitama" ? name : "default_profile"
        profileImageView.image = UIImage(named: profilePictureName)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        changePicture(textField.text!+string)
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == nameTextField {
            textField.resignFirstResponder()
            touchButton(textField)
        }
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

