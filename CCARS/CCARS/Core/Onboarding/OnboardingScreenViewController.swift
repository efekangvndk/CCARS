//
//  OnboardingScreenViewController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 23.05.2024.
//

import UIKit

class OnboardingScreenViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var imageTableCollectionView: UICollectionView!
    let carImages = ["ff", "walkers", "dom"] // Assets'teki görsel dosyalarının adları
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        constrainTableCollection()
    }
    
    private func setupView(){
        view.backgroundColor = .gray
        
        //MARK: CollectionViewsettings
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 1
        imageTableCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        imageTableCollectionView.translatesAutoresizingMaskIntoConstraints = false
        imageTableCollectionView.backgroundColor = .black
        imageTableCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        imageTableCollectionView.delegate = self
        imageTableCollectionView.dataSource = self
        imageTableCollectionView.isPagingEnabled = true // pagingEnabled özelliği
        view.addSubview(imageTableCollectionView)
    }
    
    private func constrainTableCollection(){
        YapıAyarları.CarImageCollectionView.carImageCollectionConstraint(for: imageTableCollectionView, in: view)
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
        imageView.layer.cornerRadius = 10 // Burada cornerRadius ekleniyor
        imageView.layer.masksToBounds = true // MaskToBounds kullanılmalıdır
        cell.contentView.addSubview(imageView)
        return cell
    }
    
    
    // MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
