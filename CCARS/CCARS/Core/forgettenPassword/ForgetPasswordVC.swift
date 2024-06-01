//
//  LoginScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 24.05.2024.
//


import UIKit
import Firebase

class ForgetPasswordVC : UIViewController {
    
    var forgettenVC = ForgetPasswordScreen()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        forgettenVC = ForgetPasswordScreen(frame: view.bounds)
        view.addSubview(forgettenVC)
        setupView()
        setupController()
    }
    
    private func setupView(){
        view.backgroundColor = .black
        
    }
    
    private func setupController(){
        forgettenVC.trueCodeButton.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
    }
    
    @objc func didTabButton(){
        forgettenVC.delegate?.didEnterVerificationCode(forgettenVC.trueCode.text)
        let newPasswordGoVC = newPasswordScreenVC()
        self.navigationController?.pushViewController(newPasswordGoVC, animated: true)
        guard let girilenEmail = loginScreenControllerView.signEmailTextField.text , !girilenEmail.isEmpty else {
            makeAlert(titleInput: "Error", massageInput: "Bir Email Girin")
            return
        }
        Auth.auth().sendPasswordReset(withEmail: girilenEmail) { error in
            if let error = error {
                self.makeAlert(titleInput: "Error", massageInput: error.localizedDescription)
            } else {
                self.makeAlert(titleInput: "Succes", massageInput: "Emailinize bir kod gönderdik.")
            }
        }
    }
}
