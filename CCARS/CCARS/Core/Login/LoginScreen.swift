//
//  LoginScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 24.05.2024.
//

import UIKit

class LoginScreen: UIView {
    
    var loginScrennImage = UIImageView()
    var yadaLabel = UICompanentsHelper.creatCustomTextLabel(text: "—————————   Ya Da   —————————", size: 13, fontName: "Retro", textColor: .white)
    
    var loginButton = UICompanentsHelper.creatCustomButton(buttonName: "Kayıt Ol", tintColor: .black, cornerRadius: 20, borderWidth: 0.6, borderColor: UIColor.red.cgColor, backgroundC: UIColor.white.cgColor)
    
    var nameSurname = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white , textColor: .white, placeholder: "Ad & Soyad", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none, borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)

    var passwordTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Parola", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none , borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)

    var emailTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Email", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none , borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        legendConstSetting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(nameSurname)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(loginScrennImage)
        addSubview(yadaLabel)
        nameSurname.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: nameSurname.frame.height))
        nameSurname.leftViewMode = .always
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: nameSurname.frame.height))
        passwordTextField.leftViewMode = .always
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: nameSurname.frame.height))
        emailTextField.leftViewMode = .always
        YapıAyarları.yadaLabel.yadaLabelConst(for: yadaLabel, in: self)
        YapıAyarları.loginScreenImage.loginScreenConst(for: loginScrennImage, in: self)
        YapıAyarları.loginButton.loginButtonConst(for: loginButton, in: self)
        YapıAyarları.nameSurnameConst.nameSurnametext(for: nameSurname , in: self)
        YapıAyarları.emailTextField.emailTextFieldConst(for: emailTextField, in: self)
        YapıAyarları.passwordTextField.passwordTextFieldConst(for: passwordTextField, in: self)
    }
    
    private func legendConstSetting(){
        NSLayoutConstraint.activate([
            
        ])
    }
}
