//
//  LoginScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 24.05.2024.
//

import UIKit

class ForgetPasswordScreen : UIView {
    
    var trueCode = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white , textColor: .white, placeholder: "kodu alalım", placeholderColor: .gray, fontName: "pp", size: 15, borderColor: UIColor.red.cgColor, cornerRadius: 24, borderWidth: 0.6)
    
    var trueCodeButton = UICompanentsHelper.creatCustomButton(buttonName: "Doğrula", tintColor: .white, cornerRadius: 24, borderWidth: 1, borderColor: UIColor.white.cgColor, backgroundC: UIColor.black.cgColor)
    weak var delegate: ForgetPasswordScreenDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        constraint() 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        addSubview(trueCode)
        addSubview(trueCodeButton)
    }
    
    private func constraint(){
        NSLayoutConstraint.activate([
            trueCode.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            trueCode.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            trueCodeButton.centerXAnchor.constraint(equalTo: centerXAnchor,constant: -20),
            trueCodeButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    protocol ForgetPasswordScreenDelegate: AnyObject {
        func didEnterVerificationCode(_ code: String?)
    }
}
