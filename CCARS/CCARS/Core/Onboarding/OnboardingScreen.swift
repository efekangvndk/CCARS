//
//  OnboardingScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 23.05.2024.
//

import UIKit

class OnboardingScreen: UIView {
    
    var buttonLoginSign = UICompanentsHelper.creatCustomButton(buttonName:"Login / Sign In", tintColor: .black, cornerRadius: 10, borderWidth: 1, borderColor: UIColor.black.cgColor)
    var imageTableCollectionView : UICollectionView
    
    override init(frame: CGRect) {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 1
        imageTableCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        imageTableCollectionView.translatesAutoresizingMaskIntoConstraints = false
        imageTableCollectionView.backgroundColor = .black
        imageTableCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        imageTableCollectionView.isPagingEnabled = true
        
        super.init(frame: frame)
        onbaordingSetupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func onbaordingSetupView(){
        
        addSubview(imageTableCollectionView)
        addSubview(buttonLoginSign)
        YapıAyarları.ButtonLayout.buttonLoginSign(for: buttonLoginSign, in: self)
        YapıAyarları.CarImageCollectionView.carImageCollectionConstraint(for: imageTableCollectionView, in: self)
    }
}
