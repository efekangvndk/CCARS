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

        // Sol boşluk ekleyerek metni sağa kaydırma
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.headIndent = 10 // 10 birim sola kaydırma

        let attributedString = NSAttributedString(string: originalText, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        signInScreenController.signInKayıtOlLabel.attributedText = attributedString



        YapıAyarları.loginScreenImage.loginScreenConst(for: signInScreenController.signInTopImage, in: view.self)
        
        signInScreenController.signEmailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: signInScreenController.signEmailTextField.frame.height))
        signInScreenController.signEmailTextField.leftViewMode = .always
        signInScreenController.signPasswordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: signInScreenController.signPasswordTextField.frame.height))
        signInScreenController.signPasswordTextField.leftViewMode = .always
    }
    
    private func constraintCustomSetup(){
        NSLayoutConstraint.activate([
            signInScreenController.signInGirisLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            signInScreenController.signInGirisLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 195),
            signInScreenController.signInGirisLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75),
            signInScreenController.signInGirisLabel.heightAnchor.constraint(equalToConstant: 44),
            signInScreenController.signInGirisLabel.widthAnchor.constraint(equalToConstant: 120),
            // Giriş Katmanının Constraints
            signInScreenController.signInKayıtOlLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            signInScreenController.signInKayıtOlLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75),
            signInScreenController.signInKayıtOlLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75),
            signInScreenController.signInKayıtOlLabel.heightAnchor.constraint(equalToConstant: 44),
            signInScreenController.signInKayıtOlLabel.widthAnchor.constraint(equalToConstant: 240),
        ])
    }
}
