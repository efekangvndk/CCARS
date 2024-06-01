//
//  newPasswordScreenVC.swift
//  CCARS
//
//  Created by Efekan Güvendik on 1.06.2024.
//

import UIKit

class newPasswordScreenVC : UIViewController{
    
    var newPassowrdVCSetup = newPasswordScreen()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newPassowrdVCSetup = newPasswordScreen(frame: view.bounds)
        view.addSubview(newPassowrdVCSetup)
        
        setupView()
    }
    
    private func setupView(){
        view.backgroundColor = .black
    }
}
