//
//  SignUp.swift
//  Machine Test
//
//  Created by Rabin on 29/03/23.
//

import UIKit

class SignUp: UIViewController {
    
    var hideicon = false
    
    //    MARK: - Outlets
    
    @IBOutlet weak var viewSignupPss: UIView!
    @IBOutlet weak var viewSignupUsr: UIView!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    
    @IBOutlet weak var btnSignUp: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewSignupUsr.layer.borderWidth  = 0.5
        viewSignupUsr.layer.borderColor = UIColor.black.cgColor
        viewSignupUsr.layer.cornerRadius = 10
        
        viewSignupUsr.layer.shadowRadius = 4.0
        viewSignupUsr.layer.shadowColor = UIColor.black.cgColor
        viewSignupUsr.layer.shadowOffset = CGSizeMake(1.0, 1.0)
        viewSignupUsr.layer.shadowOpacity = 0.4
        
        viewSignupPss.layer.borderWidth  = 0.5
        viewSignupPss.layer.borderColor = UIColor.black.cgColor
        viewSignupPss.layer.cornerRadius = 10
        
        viewSignupPss.layer.shadowRadius = 4.0
        viewSignupPss.layer.shadowColor = UIColor.black.cgColor
        viewSignupPss.layer.shadowOffset = CGSizeMake(1.0, 1.0)
        viewSignupPss.layer.shadowOpacity = 0.4
        
        btnSignUp.layer.cornerRadius = 10
        
    }
    
    //    MARK: - ButtonActions
    
    @IBAction func btnPassHide(_ sender: UIButton) {
        if hideicon {
            txtPass.isSecureTextEntry = true
        } else {
            txtPass.isSecureTextEntry = false
        }
        hideicon = !hideicon
    }
    
    
    @IBAction func btnSignUp(_ sender: UIButton) {
        if txtUsername.text != "" && txtPass.text != "" {
            UserModel.model.save(name: txtUsername.text ?? "", pass: txtPass.text ?? "")
        }
        
    }
    
    
    @IBAction func btnNavSignIn(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    
}
