//
//  ViewController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

class SplashScreenViewController: UIViewController {

    let splashViewController = SplashScreen()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splashSetup()
    }

    private func splashSetup(){
        
        view.backgroundColor = .red
    }
}

