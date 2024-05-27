//
//  signInScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 27.05.2024.
//

import UIKit

class SignInScreen : UIView {
    
    let lineView = UIView()
    let lineView2 = UIView()
    let signInTopImage = UIImageView()
    
    let yadaLabel = UICompanentsHelper.creatCustomTextLabel(text: "Ya Da", size: 14, fontName: "pp", textColor: .gray, backgraondColor: nil, borderColor: nil, cornerRadius: nil, borderWidth: nil)
    let signInKayıtOlLabel = UICompanentsHelper.creatCustomTextLabel(text: "         Kayıt Ol", size: 15, fontName: "pp", textColor: .white , backgraondColor: .black, borderColor: UIColor.red.cgColor , cornerRadius: 24, borderWidth: 0.6)
    let signInGirisLabel = UICompanentsHelper.creatCustomTextLabel(text: "Giriş Yap", size: 15, fontName: "Rooster", textColor: .white, backgraondColor: .red, borderColor:  UIColor.red.cgColor , cornerRadius: 24, borderWidth: 0.6)
    let signEmailTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Email :", placeholderColor: .gray, fontName: "Reestor", size: 14, borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    let signPasswordTextField = UICompanentsHelper.createCustomTextField(text: "", tintColor: .white, textColor: .white, placeholder: "Parola : ", placeholderColor: .gray, fontName: "pp", size: 14, borderColor: UIColor.white.cgColor, cornerRadius: 24, borderWidth: 0.6)
    let girisYapButton = UICompanentsHelper.creatCustomButton(buttonName: "Giriş Yap", tintColor: .black, cornerRadius: 24, borderWidth: 0.6, borderColor: UIColor.black.cgColor, backgroundC: UIColor.white.cgColor)
    let forgettenPasswordButton = UICompanentsHelper.creatCustomButton(buttonName: "Parolanı mı unuttun?", tintColor: .gray, cornerRadius: nil, borderWidth: nil, borderColor: nil, backgroundC: UIColor.black.cgColor)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViewSign()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViewSign(){
        addSubview(signInTopImage)
        
        
        addSubview(signInGirisLabel)
        addSubview(signInKayıtOlLabel)
        sendSubviewToBack(signInKayıtOlLabel)
        
        
        addSubview(forgettenPasswordButton)
        addSubview(girisYapButton)
        
        addSubview(signPasswordTextField)
        addSubview(signEmailTextField)
        
        addSubview(lineView)
        addSubview(yadaLabel)
        addSubview(lineView2)
    
        YapıAyarları.kayitOlLabel.kayitLabelConst(for: signInKayıtOlLabel, in: self)
        YapıAyarları.girisLabel.girişLabelConst(for: signInGirisLabel, in: self)
        YapıAyarları.signPassword.signPasswordConst(for: signPasswordTextField, in: self)
        YapıAyarları.signEmail.signEmailConst(for: signEmailTextField, in: self)
        YapıAyarları.girisButton.girisButtonConst(for: girisYapButton, in: self)
        YapıAyarları.forgettenPassword.forgettenPasswordConst(for: forgettenPasswordButton, in: self)
        YapıAyarları.loginScreenImage.loginScreenConst(for: signInTopImage, in: self)
    }
}
