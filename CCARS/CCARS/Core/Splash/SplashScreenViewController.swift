//
//  ViewController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

class SplashScreenViewController: UIViewController {
    
    var splashViewController: SplashScreen!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splashViewController = SplashScreen(frame: view.bounds)
        view.addSubview(splashViewController)
        splashSetup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        splashViewController.animateViews{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                self.transitionToOnboardingScreen()

            }
        }
    }
    
    private func splashSetup() {
        // Arka plan rengini ayarlama
        view.backgroundColor = .black
        
        // Görseli ayarlama
        splashViewController.firstImage.image = UIImage(named: "logo")
    }
    private func transitionToOnboardingScreen(){
        let onboardingVC = OnboardingScreenViewController()
        onboardingVC.modalTransitionStyle = .crossDissolve
        onboardingVC.modalPresentationStyle = .fullScreen
        present(onboardingVC, animated: true,completion: nil)
    }
}



