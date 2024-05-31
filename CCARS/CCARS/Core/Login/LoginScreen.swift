//
//  LoginScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 24.05.2024.
//

import UIKit

class LoginScreen: UIView {
    
    let lineView = UIView()
    let lineView2 = UIView()
    var loginScrennImage = UIImageView()
    
    
    var warningLabel = UICompanentsHelper.creatCustomTextLabel(text: "Uygulamaya üye olarak; Üyelik Sözleşmesi’ni ve Kişisel Veriler ile İlgili Aydınlatma Metni’ni okuduğunuzu ve kabul ettiğinizi onaylamaktasınız.", size: 11, fontName: "Rooster", textColor: .white, backgraondColor: nil, borderColor: nil, cornerRadius: nil, borderWidth: nil)
    
    var kayitOlTitleLabel = UICompanentsHelper.creatCustomTextLabel(text: "", size: 15, fontName:"Rooster", textColor: .white, backgraondColor: .red, borderColor: nil, cornerRadius: 24, borderWidth: 0.6)
    var girisYapTitleLabel = UICompanentsHelper.creatCustomTextLabel(text: "", size: 15, fontName: "Retro", textColor: .white, backgraondColor: nil, borderColor: UIColor.red.cgColor, cornerRadius: 24, borderWidth: 1)
    
    let yadaLabel = UICompanentsHelper.creatCustomTextLabel(text: "Ya Da", size: 14, fontName: "pp", textColor: .gray, backgraondColor: nil, borderColor: nil, cornerRadius: nil, borderWidth: nil)
    
    var loginButton = UICompanentsHelper.creatCustomButton(buttonName: "Kayıt Ol", tintColor: .black, cornerRadius: 20, borderWidth: 0.6, borderColor: UIColor.red.cgColor, backgroundC: UIColor.white.cgColor)
    var loginUpButton = UICompanentsHelper.creatCustomButton(buttonName: "Kayıt Ol", tintColor: .white, cornerRadius: 24, borderWidth: nil, borderColor: nil, backgroundC: nil)
    var signInUpButton = UICompanentsHelper.creatCustomButton(buttonName: "Giriş Yap", tintColor: .white, cornerRadius: 24, borderWidth: nil, borderColor: nil, backgroundC: nil)
    
    
    var nameSurname = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white , textColor: .white, placeholder: "Ad & Soyad :", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none, borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    var passwordTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Parola :", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none , borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    var emailTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Email :", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none , borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    var signEmailTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Email :", placeholderColor: .gray, fontName: "Reestor", size: 14, borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    var signPasswordTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Parola : ", placeholderColor: .gray, fontName: "pp", size: 14, borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        legendConstSetting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(kayitOlTitleLabel)
        addSubview(girisYapTitleLabel)
        addSubview(loginUpButton)
        addSubview(signInUpButton)
        
        addSubview(nameSurname)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(loginScrennImage)
        addSubview(signEmailTextField)
        addSubview(signPasswordTextField)
        
        addSubview(warningLabel)
        
        addSubview(lineView)
        addSubview(yadaLabel)
        addSubview(lineView2)
        
        
        nameSurname.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: nameSurname.frame.height))
        nameSurname.leftViewMode = .always
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: nameSurname.frame.height))
        passwordTextField.leftViewMode = .always
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: nameSurname.frame.height))
        emailTextField.leftViewMode = .always
        signEmailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: signEmailTextField.frame.height))
        signEmailTextField.leftViewMode = .always
        signPasswordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: signPasswordTextField.frame.height))
        signPasswordTextField.leftViewMode = .always
        
        
        YapıAyarları.loginScreenImage.loginScreenConst(for: loginScrennImage, in: self)
        YapıAyarları.loginButton.loginButtonConst(for: loginButton, in: self)
        YapıAyarları.nameSurnameConst.nameSurnametext(for: nameSurname , in: self)
        YapıAyarları.emailTextField.emailTextFieldConst(for: passwordTextField, in: self)
        YapıAyarları.passwordTextField.passwordTextFieldConst(for: emailTextField, in: self)

        
        kayitOlTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        girisYapTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        loginUpButton.translatesAutoresizingMaskIntoConstraints = false
        signInUpButton.translatesAutoresizingMaskIntoConstraints = false
        signEmailTextField.translatesAutoresizingMaskIntoConstraints = false
        signPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
    }

    private func legendConstSetting() {
        NSLayoutConstraint.activate([
            // "Kayıt Ol" Label Constraints
            kayitOlTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            kayitOlTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 75),
            kayitOlTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -195),
            kayitOlTitleLabel.heightAnchor.constraint(equalToConstant: 50),
            kayitOlTitleLabel.widthAnchor.constraint(equalToConstant: 120),
            
            // Giriş Katmanının Constraints
            girisYapTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            girisYapTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -75),
            girisYapTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 75),
            girisYapTitleLabel.heightAnchor.constraint(equalToConstant: 50),
            girisYapTitleLabel.widthAnchor.constraint(equalToConstant: 240),
            
            //TextFields
            signEmailTextField.topAnchor.constraint(equalTo: emailTextField.topAnchor),
            signEmailTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            signEmailTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            signEmailTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            signEmailTextField.widthAnchor.constraint(equalTo: emailTextField.widthAnchor),
            
            signPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.topAnchor),
            signPasswordTextField.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            signPasswordTextField.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            signPasswordTextField.heightAnchor.constraint(equalTo: passwordTextField.heightAnchor),
            signPasswordTextField.widthAnchor.constraint(equalTo: passwordTextField.widthAnchor),
            
            // Üst Buttonlar
            loginUpButton.topAnchor.constraint(equalTo: topAnchor,constant: 150),
            loginUpButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 75),
            loginUpButton.heightAnchor.constraint(equalToConstant: 50),
            loginUpButton.widthAnchor.constraint(equalToConstant: 120), // Genişlik boyutunu 120 olarak değiştirdim

            signInUpButton.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            signInUpButton.leadingAnchor.constraint(equalTo: loginUpButton.trailingAnchor, constant: 20), // loginUpButton'ın hemen sağına yerleştirdim
            signInUpButton.heightAnchor.constraint(equalToConstant: 50),
            signInUpButton.widthAnchor.constraint(equalToConstant: 120), // Genişlik boyutunu 120 olarak değiştirdim
        
            // Separator view constraints
        
                lineView.topAnchor.constraint(equalTo: topAnchor, constant: 515.5),
                lineView.heightAnchor.constraint(equalToConstant: 1),
                lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
                lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -237.25),
                lineView.widthAnchor.constraint(equalToConstant: 152.25),
                
                yadaLabel.topAnchor.constraint(equalTo: topAnchor, constant: 505),
                yadaLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 179.75),
                yadaLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -172.25),
                
                lineView2.topAnchor.constraint(equalTo: topAnchor, constant: 515.5),
                lineView2.heightAnchor.constraint(equalToConstant: 1),
                lineView2.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 237.25),
                lineView2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
                lineView2.widthAnchor.constraint(equalToConstant: 152.25)
            
        ])
    }
}
