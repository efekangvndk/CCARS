//
//  SignInScreenController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 27.05.2024.
//

import UIKit

class SignInScreenController : UIViewController{
    
    var signInScreenController = SignInScreen()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInScreenController = SignInScreen(frame: view.bounds)
        view.addSubview(signInScreenController)
        
        signControllerSetup()
        viewConstraintSetup()
        constraintCustomSetup()
    }
    
    private func signControllerSetup(){
        view.backgroundColor = .black
        signInScreenController.signInTopImage.image = UIImage(named: "logo")
    }
    
    private func viewConstraintSetup(){
        
        let originalText = signInScreenController.signInKayıtOlLabel.text ?? ""

        //Sola kaydırma kayıt logosu.
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.headIndent = 10 // 10 birim sola kaydırma
        let attributedString = NSAttributedString(string: originalText, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        signInScreenController.signInKayıtOlLabel.attributedText = attributedString
        
        //forgettenPaswordTintSize
        signInScreenController.forgettenPasswordButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        
        signInScreenController.signEmailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: signInScreenController.signEmailTextField.frame.height))
        signInScreenController.signEmailTextField.leftViewMode = .always
        signInScreenController.signPasswordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: signInScreenController.signPasswordTextField.frame.height))
        signInScreenController.signPasswordTextField.leftViewMode = .always
        
        //Ekranı bölen çizgi ayarları 1.
        signInScreenController.lineView.backgroundColor = UIColor.gray
        signInScreenController.lineView.translatesAutoresizingMaskIntoConstraints = false
        //Ekranı bölen çizgi ayarları 2.
        signInScreenController.lineView2.backgroundColor = UIColor.gray
        signInScreenController.lineView2.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func constraintCustomSetup(){
        NSLayoutConstraint.activate([
            signInScreenController.lineView.topAnchor.constraint(equalTo: view.topAnchor, constant: 515.5),
            signInScreenController.lineView.heightAnchor.constraint(equalToConstant: 1),
            signInScreenController.lineView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            signInScreenController.lineView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -237.25),
            signInScreenController.lineView.widthAnchor.constraint(equalToConstant: 152.25),
            
            signInScreenController.yadaLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 505),
            signInScreenController.yadaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 179.75),
            signInScreenController.yadaLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -172.25),
            
            signInScreenController.lineView2.topAnchor.constraint(equalTo: view.topAnchor, constant: 515.5),
            signInScreenController.lineView2.heightAnchor.constraint(equalToConstant: 1),
            signInScreenController.lineView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 237.25),
            signInScreenController.lineView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            signInScreenController.lineView2.widthAnchor.constraint(equalToConstant: 152.25)
        ])
    }
}
