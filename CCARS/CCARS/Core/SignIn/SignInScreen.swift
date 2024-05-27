//
//  signInScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 27.05.2024.
//

import UIKit

class SignInScreen : UIView {
    
    let signInTopImage = UIImageView()
    
    let signInKayıtOlLabel = UICompanentsHelper.creatCustomTextLabel(text: "         Kayıt Ol", size: 15, fontName: "pp", textColor: .white , backgraondColor: .black, borderColor: UIColor.red.cgColor , cornerRadius: 24, borderWidth: 0.6)
    let signInGirisLabel = UICompanentsHelper.creatCustomTextLabel(text: "Giriş Yap", size: 15, fontName: "Rooster", textColor: .white, backgraondColor: .red, borderColor:  UIColor.red.cgColor , cornerRadius: 24, borderWidth: 0.6)
    
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
       
        signInGirisLabel.translatesAutoresizingMaskIntoConstraints = false
        signInKayıtOlLabel.translatesAutoresizingMaskIntoConstraints = false
        signInTopImage.translatesAutoresizingMaskIntoConstraints = false
    }
}