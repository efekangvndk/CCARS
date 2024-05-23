//
//  OnboardingScreen.swift
//  CCARS
//
//  Created by Efekan Güvendik on 23.05.2024.
//

import UIKit

class OnboardingScreen: UIView{
    
    var imageTableCollectionView = UICollectionView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        onbaordingSetupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func onbaordingSetupView(){
        addSubview(imageTableCollectionView)
    }
}
