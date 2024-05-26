//
//  SplashScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

class SplashScreen: UIView {
    
    var firstImage =  UIImageView()
    var firstLabel = UICompanentsHelper.creatCustomTextLabel(text: "Selam \n CCARS'A hoşgeldiniz", size: 16, fontName: "Rock.ttf", textColor: .white, backgraondColor: nil, borderColor: nil, cornerRadius: nil, borderWidth: nil)

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        splashSetupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func splashSetupView() {
        addSubview(firstImage)
        addSubview(firstLabel)
        
        // firstImage ve firstLabel için constraint'leri ayarlama
        YapıAyarları.ImageViewLayout.configureConstraints(for: firstImage, in: self)
        YapıAyarları.FirstLabelLayout.firstLabelLayoutCon(for: firstLabel, in: self)
    }
    
    func animateViews(completion: @escaping () -> Void) {
            // firstImage için animasyon (yukarı doğru kaydırma)
        YapıAyarları.ImageViewLayout.animateImageView(firstImage) {
            // firstLabel için animasyon (yavaş yavaş görünür hale getirme)
        YapıAyarları.FirstLabelLayout.animateLabel(self.firstLabel)
            completion()// Animasyon tamamlandığında completion bloğunu çağır
        }
    }
}
