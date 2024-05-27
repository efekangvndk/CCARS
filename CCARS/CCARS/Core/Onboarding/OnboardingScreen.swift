//
//  OnboardingScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 23.05.2024.
//

import UIKit

class OnboardingScreen: UIView {
    
    let layout = UICollectionViewFlowLayout()
    var buttonLoginSign = UICompanentsHelper.creatCustomButton(buttonName:"Login / Sign In", tintColor: .black, cornerRadius: 10, borderWidth: 1, borderColor: UIColor.black.cgColor, backgroundC: UIColor.white.cgColor)
    var imageTableCollectionView: UICollectionView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        onbaordingSetupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func onbaordingSetupView(){
        
        imageTableCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout) // Layout'u belirtilmiş olarak oluşturun
        addSubview(imageTableCollectionView)
        addSubview(buttonLoginSign)
        YapıAyarları.ButtonLayout.buttonLoginSign(for: buttonLoginSign, in: self)
        YapıAyarları.CarImageCollectionView.carImageCollectionConstraint(for: imageTableCollectionView, in: self)
        
        imageTableCollectionView.translatesAutoresizingMaskIntoConstraints = false
        imageTableCollectionView.backgroundColor = .black
        imageTableCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        imageTableCollectionView.isPagingEnabled = true
        
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 1
        
        // imageTableCollectionView'ın kısıtlamalarını belirtin
        NSLayoutConstraint.activate([
            imageTableCollectionView.topAnchor.constraint(equalTo: self.topAnchor),
            imageTableCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageTableCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageTableCollectionView.bottomAnchor.constraint(equalTo: buttonLoginSign.topAnchor, constant: -10) // İstenilen boşluk ile
        ])
    }
}
