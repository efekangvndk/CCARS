//
//  CreatCustommer.swift
//  CCARS
//
//  Created by Efekan Güvendik on 31.05.2024.
//

import UIKit
import Firebase

class CreatCustommer: UIViewController {
    
    var creatCustommerVC = LoginScreen()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creatCustommerVC = LoginScreen(frame: view.bounds)
        view.addSubview(creatCustommerVC)
        
        authServicesFunc()
    }
    
    private func authServicesFunc(){
        
        creatCustommerVC.loginButton.addTarget(self, action: #selector(baseButton), for: .touchUpInside)
        creatCustommerVC.loginUpButton.addTarget(self, action: #selector(loginButton), for: .touchUpInside)
        creatCustommerVC.signInUpButton.addTarget(self, action: #selector(signInButton), for: .touchUpInside)
    }
    
    @objc func baseButton(){
        if creatCustommerVC.emailTextField.text != "" && creatCustommerVC.passwordTextField.text != ""{
            Auth.auth().createUser(withEmail: creatCustommerVC.emailTextField.text!, password: creatCustommerVC.passwordTextField.text!) { authData, error in
                if error != nil {
                    self.makeAlert(titleInput: "Error", massageInput: error?.localizedDescription ?? "Error")
                    
                } else {
                  let goVC = SignInScreenController()
                    self.navigationController?.pushViewController(goVC, animated: true)
                }
            }
            
        } else {
            makeAlert(titleInput: "Error", massageInput: "Email/Password")
        }
    }
    
    @objc func loginButton(){
        
       
    }
    @objc func signInButton(){
        
        
    }
    
    func makeAlert(titleInput: String, massageInput:String ){
        let alert = UIAlertController(title: titleInput, message: massageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}
