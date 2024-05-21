//
//  SplashScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

class SplashScreen: UIView {
    
    var firstImage: UIImageView
    var firstLabel: UILabel
    
    override init(frame: CGRect) {
        firstImage = UIImageView()
        firstLabel = UICompanentsHelper.creatCustomTextLabel(text: "Selam               CCARS'A hoşgeldiniz", size: 16, fontName: "Rock.ttf", textColor: .white)
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(firstImage)
        addSubview(firstLabel)
        
        // firstImage ve firstLabel için constraint'leri ayarlama
        ImageViewLayout.configureConstraints(for: firstImage, in: self)
        FirstLabelLayout.firstLabelLayoutCon(for: firstLabel, in: self)
    }
    
    func animateViews() {
        // firstImage için animasyon (yukarı doğru kaydırma)
        ImageViewLayout.animateImageView(firstImage) {
            // firstLabel için animasyon (yavaş yavaş görünür hale getirme)
            FirstLabelLayout.animateLabel(self.firstLabel)
        }
    }
}
