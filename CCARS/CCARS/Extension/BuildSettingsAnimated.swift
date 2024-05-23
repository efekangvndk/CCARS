//
//  firstImageConstraint.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

class YapıAyarları{
    
    //MARK: ImageConstrain
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
    
    //MARK: LabelConstrain
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
                label.transform = CGAffineTransform(translationX: 0, y: -50)
                label.alpha = 1.0 //burda da alpha sıfır değerini görünürlük adına 1 yapıyoruz.
            })
        }
    }
    //MARK: CollectionViewConstraint
    struct CarImageCollectionView{
        static func carImageCollectionConstraint(for imageTableCollectionView : UICollectionView, in view : UIView){
            imageTableCollectionView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                imageTableCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                imageTableCollectionView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        }
    }
}


