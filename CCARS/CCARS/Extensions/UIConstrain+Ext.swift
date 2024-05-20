import UIKit

extension SplashScreenView {
    
    func addConstraintsToCenterImage() {
        splashScreenImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            splashScreenImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            splashScreenImage.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
