//
//  ViewController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

class SplashScreenViewController: UIViewController {

    var splashViewController : SplashScreen!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splashViewController = SplashScreen(frame: view.bounds)
        view.addSubview(splashViewController)
        splashSetup()
        constrainSetting()
    }

    private func splashSetup(){
        
        view.backgroundColor = .red
    }
    
    private func constrainSetting(){
        
    }
}

