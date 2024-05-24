//
//  LoginScreenController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 24.05.2024.
//

import UIKit

class LoginScreenController : UIViewController {
    
    var loginScreenControllerView = LoginScreen()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginScreenControllerView = LoginScreen(frame: view.bounds)
        setupView2()
    }
    
    private func setupView2(){
        view.backgroundColor = .blue
    }
}
