//
//  SplashScreenView.swift
//  CCARS
//
//  Created by Efekan Güvendik on 20.05.2024.
//

import UIKit

class SplashScreenView : UIView {
    
    //MARK: VARS
    let splashScreenImage = UIImageView(image: UIImage(named: "logo"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        constrainSetting()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        splashScreenImage.translatesAutoresizingMaskIntoConstraints = false
        addSubview(splashScreenImage)
        backgroundColor = UIColor.black
    }
    
    private func constrainSetting(){
        NSLayoutConstraint.activate([
            splashScreenImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            splashScreenImage.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}

