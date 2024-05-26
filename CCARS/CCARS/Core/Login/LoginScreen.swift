//
//  LoginScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 24.05.2024.
//

import UIKit

class LoginScreen: UIView {
    
    var loginScrennImage = UIImageView()
    
    var yadaOrAble = UICompanentsHelper.creatCustomTextLabel(text: "Ya Da", size: 13, fontName: "Retro", textColor: .systemGray)
    
    var loginButton = UICompanentsHelper.creatCustomButton(buttonName: "Kayıt Ol", tintColor: .black, cornerRadius: 20, borderWidth: 0.6, borderColor: UIColor.red.cgColor, backgroundC: UIColor.white.cgColor)
    
    var nameSurname = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white , textColor: .white, placeholder: "Ad & Soyad", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none, borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)

    var passwordTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Parola", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none , borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)

    var emailTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Email", placeholderColor: .lightGray, fontName: "Retro", size: 15, borderStyle: .none , borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    
    let separatorView  = UIView() // AYIRICI
    let leftLine = UIView()        // SOL KISIM
    let rightLine = UIView()       // SAĞ KISIM
    
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
        addSubview(leftLine)
        addSubview(rightLine)
        addSubview(separatorView)
        addSubview(yadaOrAble)
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
    }
    
    private func legendConstSetting(){
        NSLayoutConstraint.activate([
                    // Separator view constraints
                    separatorView.centerXAnchor.constraint(equalTo: centerXAnchor),
                    separatorView.centerYAnchor.constraint(equalTo: centerYAnchor),
                    separatorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
                    separatorView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

                    // Left line constraints
                    leftLine.leadingAnchor.constraint(equalTo: separatorView.leadingAnchor),
                    leftLine.trailingAnchor.constraint(equalTo: yadaOrAble.leadingAnchor, constant: -8),
                    leftLine.centerYAnchor.constraint(equalTo: separatorView.centerYAnchor),
                    leftLine.heightAnchor.constraint(equalToConstant: 1),

                    // Right line constraints
                    rightLine.leadingAnchor.constraint(equalTo: yadaOrAble.trailingAnchor, constant: 8),
                    rightLine.trailingAnchor.constraint(equalTo: separatorView.trailingAnchor),
                    rightLine.centerYAnchor.constraint(equalTo: separatorView.centerYAnchor),
                    rightLine.heightAnchor.constraint(equalToConstant: 1),

                    // "ya da" label constraints
                    yadaOrAble.centerYAnchor.constraint(equalTo: separatorView.centerYAnchor)
                ])
            }
        }
