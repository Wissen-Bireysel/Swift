//
//  LoginViewController.swift
//  Week4Day1Session1
//
//  Created by Hasan Soysal on 28/02/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    var currentUser : User? = nil
    @IBOutlet weak var textFieldUsername : UITextField?
    @IBOutlet weak var textFieldPassword : UITextField!
    @IBOutlet weak var labelStatus : UILabel?
    
    @IBOutlet weak var viewLogin : UIView?
    @IBOutlet weak var viewSignup : UIView?
    
    @IBOutlet weak var textFieldSignupName : UITextField!
    @IBOutlet weak var textFieldSignupMail : UITextField!
    @IBOutlet weak var textFieldSignupPassword : UITextField!
    @IBOutlet weak var segmentedControlGender : UISegmentedControl!
    @IBOutlet weak var switchContract : UISwitch!
    
    var defaultUserName : NSString = "hasansoysal"
    var defaultPassword : NSString = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewSignup?.hidden = false
        viewLogin?.hidden = true
        
    }

    @IBAction func buttonSendTapped(sender : UIButton?)
    {
        if checkFieldsForLogin()
        {
            var username : NSString? = currentUser?.email
            var password : NSString? = currentUser?.password
            if username == textFieldUsername?.text && textFieldPassword.text == password
            {
                labelStatus?.text = "Tebrikler başarıyla giriş yaptınız."
            }
            else
            {
                labelStatus?.text = "Kullanıcı adınız ve/veya parolanız yanlış"
            }
        }
    }
    
    @IBAction func buttonSignupTapped(sender : UIButton?)
    {
        if checkFieldsForSigup()
        {
            // Option 1
            currentUser = User()
            currentUser?.name = textFieldSignupName.text
            currentUser?.password = textFieldSignupPassword.text
            currentUser?.gender = Gender(rawValue: segmentedControlGender.selectedSegmentIndex)!
            currentUser?.email = textFieldSignupMail.text
            
            // Option 2 
//            currentUser = User(name: <#NSString#>, email: <#NSString#>, password: <#NSString#>, gender: <#Gender#>)
            
            
            viewLogin?.hidden = false
            viewSignup?.hidden = true
        }
    }
    
    
    
    func checkFieldsForLogin() -> Bool
    {
        // Check username first
        var username : NSString? = textFieldUsername?.text
        if username != nil
        {
            if username?.length < 3 || username?.length > 30
            {
                var alert = UIAlertView(title: "Hata", message: "Kullanıcı adınız en az 3, en fazla 30 karakter olmalıdır", delegate: nil, cancelButtonTitle: "Tamam")
                alert.show()
                return false
            }
        }
        else
        {
            UIAlertView(title: "Hata", message: "Kullanıcı adını giriniz", delegate: nil, cancelButtonTitle: "Tamam").show()
            return false
        }
        
        // Check password 
        var password : NSString = textFieldPassword.text
        if password.length < 2 || password.length > 20
        {
            UIAlertView(title: "Hata", message: "Parolanız en az 2 en fazla 20 karakter olmalıdır.", delegate: nil, cancelButtonTitle: "Tamam").show()
            return false
        }
        
        
        return true
    }
    
    func checkFieldsForSigup() -> Bool
    {
        if !textFieldSignupMail.text.isEmail()
        {
            UIAlertView(title: "Hata", message: "Email adresiniz geçerli değil.", delegate: nil, cancelButtonTitle: "Tamam").show()
            return false
        }
        return true
    }
    
    // Textfields Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        if textField == textFieldUsername
        {
            textFieldPassword.becomeFirstResponder()
        }
        else if textField == textFieldPassword
        {
            buttonSendTapped(nil)
        }
        return true
    }
    
    
    
    
    
    
}














