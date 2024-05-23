//
//  OnboardingScreenViewController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 23.05.2024.
//

import UIKit

class OnboardingScreenViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource{
   
   let carImage = ["ecilips","r34","supra"] //Assetlerdeki 3 görselimizin adı.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        OnboardingSetupContoller()
    }
    private func OnboardingSetupContoller(){
        view.backgroundColor = .red
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        let imageView = UIImageView(frame: cell.contentView.bounds)
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: carImage[indexPath.item])
        cell.contentView.addSubview(imageView)
        return cell
    }
    
}
