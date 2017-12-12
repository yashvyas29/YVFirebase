//
//  LoginViewController.swift
//  YVFirebase
//
//  Created by Yash Vyas on 11/12/17.
//  Copyright © 2017 Yash Vyas. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var vwTxtEmail: YVTextFieldView!
    @IBOutlet weak var vwTxtPassword: YVTextFieldView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loginAction() {
        guard
            let email = vwTxtEmail.textField.text,
            let password = vwTxtPassword.textField.text,
            !email.isEmpty,
            !password.isEmpty
            
            else {
                return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if let errorText = error?.localizedDescription {
                print(errorText)
            } else {
                self.performSegue(withIdentifier: "LoginSuccessful", sender: nil)
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LoginViewController: YVButtonViewDelegate {
    func buttonAction(_ sender: UIButton) {
        loginAction()
    }
}
