//
//  ViewController.swift
//  Machine Test
//
//  Created by Rabin on 29/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    var icon = false
    var datamodel = UserModel()
    
//    MARKS: - Outlets

    @IBOutlet weak var viewPssUndr: UIView!
    @IBOutlet var viewusr: UIView!
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnSignIn.layer.cornerRadius = 10
        
        viewusr.layer.borderWidth  = 0.5
        viewusr.layer.borderColor = UIColor.black.cgColor
        viewusr.layer.cornerRadius = 10
        
        viewusr.layer.shadowRadius = 4.0
        viewusr.layer.shadowColor = UIColor.black.cgColor
        viewusr.layer.shadowOffset = CGSizeMake(1.0, 1.0)
        viewusr.layer.shadowOpacity = 0.4
        
        viewPssUndr.layer.borderWidth  = 0.5
        viewPssUndr.layer.borderColor = UIColor.black.cgColor
        viewPssUndr.layer.cornerRadius = 10
        
        viewPssUndr.layer.shadowRadius = 4.0
        viewPssUndr.layer.shadowColor = UIColor.black.cgColor
        viewPssUndr.layer.shadowOffset = CGSizeMake(1.0, 1.0)
        viewPssUndr.layer.shadowOpacity = 0.4
        
       
    }
    override func viewWillAppear(_ animated: Bool) {
        txtPass.text = ""
        txtPass.isSecureTextEntry = true
    }
//    MARK: - ButtonActions

    @IBAction func btnSignIn(_ sender: UIButton) {
        UserModel.model.fetch()
        let user = UserModel.model.fetchedData.contains(where: {
            $0.username == txtUser.text && $0.password == txtPass.text
        })
        if user {
            let pass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Home") as! Home
            self.navigationController?.pushViewController(pass, animated: true)
        }else{
            let alert = UIAlertController(title: "Alert", message: "Check Username and Password", preferredStyle:.alert)
            let ok = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }
       
    }
    
    @IBAction func btnNavSignUp(_ sender: UIButton) {
        let pass = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUp") as! SignUp
        
        self.navigationController?.pushViewController(pass, animated: true)
    }
    
    
    @IBAction func btnPassHide(_ sender: UIButton) {
        
        if icon {
            txtPass.isSecureTextEntry = true
           } else {
               txtPass.isSecureTextEntry = false
           }
           icon = !icon
    }
    
}

