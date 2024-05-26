//
//  ViewController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit
import AVFoundation

class SplashScreenViewController: UIViewController {
    
    var splashViewController: SplashScreen!
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splashViewController = SplashScreen(frame: view.bounds)
        view.addSubview(splashViewController)
        splashSetup()
        playSound()
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
    
    private func playSound() {
        // Ses dosyasının yolunu al
        if let soundURL = Bundle.main.url(forResource: "carSound", withExtension: "mp3") {
            do {
                // AVAudioPlayer ile ses dosyasını yükle ve çal
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.play()
            } catch {
                print("Ses dosyası yüklenirken bir hata oluştu: \(error.localizedDescription)")
            }
        } else {
            print("Ses dosyası bulunamadı")
        }
    }
    
    //MARK: Diğer ekrana otomatik geçiş işlemi.
    private func transitionToOnboardingScreen(){
        let onboardingVC = OnboardingScreenViewController()
        onboardingVC.modalTransitionStyle = .crossDissolve
        onboardingVC.modalPresentationStyle = .fullScreen
        present(onboardingVC, animated: true,completion: nil)
    }
}




