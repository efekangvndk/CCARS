//
//  firstImageConstraint.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

struct ImageViewLayout {
    static func configureConstraints(for firstImage: UIImageView, in view: UIView) {
        firstImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            firstImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            firstImage.widthAnchor.constraint(equalToConstant: 240),
            firstImage.heightAnchor.constraint(equalToConstant: 60.03)
        ])
    }
    
    static func animateImageView(_ imageView: UIImageView, completion: @escaping () -> Void) {
        UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseOut, animations: {
            imageView.transform = CGAffineTransform(translationX: 0, y: -100)
        }, completion: { _ in
            completion()
        })
    }
}

