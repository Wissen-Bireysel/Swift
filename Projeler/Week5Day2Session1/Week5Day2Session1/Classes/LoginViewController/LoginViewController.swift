//
//  LoginViewController.swift
//  Week5Day2Session1
//
//  Created by Hasan Soysal on 08/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var textFieldPassword : UITextField!
    @IBOutlet weak var textFieldMail : UITextField!
    @IBOutlet weak var textFieldProfileImage : UITextField!
    @IBOutlet weak var imageViewProfileImage : UIImageView!
    
    var pickerViewProfileImage : UIPickerView!
    var images : Array<String> = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = ["1","2", "3", "4"]
        pickerViewProfileImage = UIPickerView()
        pickerViewProfileImage.delegate = self
        pickerViewProfileImage.dataSource = self
        textFieldProfileImage.inputView = pickerViewProfileImage        
    }

    @IBAction func buttonLoginTapped()
    {
        let selectedIndex = pickerViewProfileImage.selectedRowInComponent(0)
        let name = images [selectedIndex]
        User.loginUser("Me",
            email: textFieldMail.text,
            image: UIImage(named: name))
        
        var viewController = self.storyboard?.instantiateViewControllerWithIdentifier("ContactsViewController") as UIViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    //MARK: - Textfields
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        if textField == textFieldMail
        {
            textFieldPassword.becomeFirstResponder()
        }
        else if textField == textFieldPassword
        {
            textFieldProfileImage.becomeFirstResponder()
        }
            
        else if textField == textFieldProfileImage
        {
            self.buttonLoginTapped()
        }

        return true
    }

    //MARK: - PickerView
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
     return images.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return images[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        imageViewProfileImage.image = UIImage(named: images[row])
    }

}







