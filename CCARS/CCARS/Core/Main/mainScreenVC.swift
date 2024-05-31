//
//  mainScreenVC.swift
//  CCARS
//
//  Created by Efekan Güvendik on 31.05.2024.
//

import UIKit

class mainScreenVC : UIViewController {
    
    var mainVC = mainScreen()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainVC = mainScreen(frame: view.bounds)
        view.addSubview(mainVC)
        
        setupView()
    }
    
    private func setupView(){
        view.backgroundColor = .gray
    }
}
