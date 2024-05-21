//
//  firtsLabelConstaint.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

struct FirstLabelLayout {
    static func firstLabelLayoutCon(for firstLabel: UILabel , in view : UIView){
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor), // hata bunu centerYAnchor ile yapmamız lazımdı.
            firstLabel.widthAnchor.constraint(equalToConstant: 196),
            firstLabel.heightAnchor.constraint(equalToConstant: 46)
        ])
        firstLabel.alpha = 0 // Animasyon başlamadan önce görünmez olması için alpha = 0 yapıyoruz
    }
    
    static func animateLabel(_ label: UILabel) {
        UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseOut, animations: {
            label.alpha = 1.0 //burda da alpha sıfır değerini görünürlük adına 1 yapıyoruz.
        })
    }
}

