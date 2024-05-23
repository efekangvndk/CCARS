//
//  OnboardingScreenViewController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 23.05.2024.
//

import UIKit

class OnboardingScreenViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var onboardingControllerView = OnboardingScreen()
    let carImages = ["ff", "walkers", "dom"] // Assets'teki görsel dosyalarının adları
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingControllerView = OnboardingScreen(frame: view.bounds)
        view.addSubview(onboardingControllerView)
        setupView()
        constrainTableCollection()
    }
    
    private func setupView(){
        view.backgroundColor = .gray
        onboardingControllerView.imageTableCollectionView.delegate = self
        onboardingControllerView.imageTableCollectionView.dataSource = self
    }
    
    private func constrainTableCollection(){
        YapıAyarları.ButtonLayout.buttonLoginSign(for: onboardingControllerView.buttonLoginSign, in: view)
        YapıAyarları.CarImageCollectionView.carImageCollectionConstraint(for: onboardingControllerView.imageTableCollectionView, in: view)
    }
    
    // MARK: - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .clear
        let imageView = UIImageView(frame: cell.contentView.bounds)
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: carImages[indexPath.item])
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        cell.contentView.addSubview(imageView)
        return cell
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
