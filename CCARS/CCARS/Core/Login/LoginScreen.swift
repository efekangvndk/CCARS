//
//  LoginScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 24.05.2024.
//

import UIKit

class LoginScreen: UIView {
    
    var loginScrennImage = UIImageView()
    
    var kayitOlTitleLabel = UICompanentsHelper.creatCustomTextLabel(text: "Kayıt Ol", size: 15, fontName: "Retro", textColor: .white, backgraondColor: .red, borderColor: nil, cornerRadius: 24, borderWidth: 0.6)
    var girisYapTitleLabel = UICompanentsHelper.creatCustomTextLabel(text: "Giriş Yap", size: 15, fontName: "Retro", textColor: .white, backgraondColor: nil, borderColor: UIColor.red.cgColor, cornerRadius: 24, borderWidth: 1)
    var yadaOrAble = UICompanentsHelper.creatCustomTextLabel(text: " Ya Da ", size: 14 , fontName: "Retro", textColor: .gray, backgraondColor: nil, borderColor: nil, cornerRadius: nil, borderWidth: nil)
    
    var loginButton = UICompanentsHelper.creatCustomButton(buttonName: "Kayıt Ol", tintColor: .black, cornerRadius: 20, borderWidth: 0.6, borderColor: UIColor.red.cgColor, backgroundC: UIColor.white.cgColor)
    
    var nameSurname = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white , textColor: .white, placeholder: "Ad & Soyad", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none, borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    
    var passwordTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Parola", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none , borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    
    var emailTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Email", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none , borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    
    let separatorView  = UIView()  // AYIRICI
    let leftLine = UIView()        // SOL KISIM
    let rightLine = UIView()       // SAĞ KISIM
    let containerView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        legendConstSetting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {

        addSubview(containerView)
        containerView.addSubview(kayitOlTitleLabel)
        containerView.addSubview(girisYapTitleLabel)
        
        addSubview(kayitOlTitleLabel)
        addSubview(girisYapTitleLabel)
        addSubview(nameSurname)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(loginScrennImage)
        addSubview(separatorView)
        
        addSubview(leftLine)
        addSubview(rightLine)
        addSubview(yadaOrAble)
        
        leftLine.backgroundColor = .gray
        rightLine.backgroundColor = .gray
        
        nameSurname.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: nameSurname.frame.height))
        nameSurname.leftViewMode = .always
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: nameSurname.frame.height))
        passwordTextField.leftViewMode = .always
        emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: nameSurname.frame.height))
        emailTextField.leftViewMode = .always
        YapıAyarları.loginScreenImage.loginScreenConst(for: loginScrennImage, in: self)
        YapıAyarları.loginButton.loginButtonConst(for: loginButton, in: self)
        YapıAyarları.nameSurnameConst.nameSurnametext(for: nameSurname , in: self)
        YapıAyarları.emailTextField.emailTextFieldConst(for: emailTextField, in: self)
        YapıAyarları.passwordTextField.passwordTextFieldConst(for: passwordTextField, in: self)
        yadaOrAble.translatesAutoresizingMaskIntoConstraints = false
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        leftLine.translatesAutoresizingMaskIntoConstraints = false
        rightLine.translatesAutoresizingMaskIntoConstraints = false
        kayitOlTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        girisYapTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            containerView.heightAnchor.constraint(equalToConstant: 44),
            containerView.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor, constant: 20),
            containerView.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor, constant: -20),
            
            kayitOlTitleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            kayitOlTitleLabel.topAnchor.constraint(equalTo: containerView.topAnchor),
            kayitOlTitleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            kayitOlTitleLabel.widthAnchor.constraint(equalTo: girisYapTitleLabel.widthAnchor),
            
            girisYapTitleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            girisYapTitleLabel.topAnchor.constraint(equalTo: containerView.topAnchor),
            girisYapTitleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            girisYapTitleLabel.leadingAnchor.constraint(equalTo: kayitOlTitleLabel.trailingAnchor, constant: 16)
        ])
        
    }
    
    private func legendConstSetting() {
       
        NSLayoutConstraint.activate([
            // "Kayıt Ol" Label Constraints
            kayitOlTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            kayitOlTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            kayitOlTitleLabel.trailingAnchor.constraint(equalTo: girisYapTitleLabel.leadingAnchor),
            kayitOlTitleLabel.widthAnchor.constraint(equalTo: girisYapTitleLabel.widthAnchor),
            kayitOlTitleLabel.heightAnchor.constraint(equalToConstant: 44),
            
            // "Giriş Yap" Label Constraints
            girisYapTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            girisYapTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            girisYapTitleLabel.leadingAnchor.constraint(equalTo: kayitOlTitleLabel.trailingAnchor),
            girisYapTitleLabel.widthAnchor.constraint(equalTo: kayitOlTitleLabel.widthAnchor),
            girisYapTitleLabel.heightAnchor.constraint(equalToConstant: 44),
            
            // Separator view constraints
            separatorView.centerXAnchor.constraint(equalTo: centerXAnchor),
            separatorView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            separatorView.heightAnchor.constraint(equalToConstant: 20),
            
            // Left line constraints
            leftLine.leadingAnchor.constraint(equalTo: separatorView.leadingAnchor),
            leftLine.trailingAnchor.constraint(equalTo: yadaOrAble.leadingAnchor, constant: -8),
            leftLine.centerYAnchor.constraint(equalTo: separatorView.centerYAnchor),
            leftLine.heightAnchor.constraint(equalToConstant: 1),
            leftLine.widthAnchor.constraint(equalTo: rightLine.widthAnchor),
            
            // Right line constraints
            rightLine.leadingAnchor.constraint(equalTo: yadaOrAble.trailingAnchor, constant: 8),
            rightLine.trailingAnchor.constraint(equalTo: separatorView.trailingAnchor),
            rightLine.centerYAnchor.constraint(equalTo: separatorView.centerYAnchor),
            rightLine.heightAnchor.constraint(equalToConstant: 1),
            
            // "ya da" label constraints
            yadaOrAble.centerXAnchor.constraint(equalTo: separatorView.centerXAnchor),
            yadaOrAble.centerYAnchor.constraint(equalTo: separatorView.centerYAnchor)
        ])
    }
}
