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
        view.addSubview(loginScreenControllerView)
        setupView2()
        
    }
    
    private func setupView2(){
        view.backgroundColor = .black
        loginScreenControllerView.loginScrennImage.image = UIImage(named: "logo")
        
        // Diğer bileşenlerin oluşturulması
        
        // Giriş Yap title label oluşturulduktan sonra metni sağa kaydır
        let originalText = loginScreenControllerView.girisYapTitleLabel.text ?? ""
        let shiftedText = String(repeating: " ", count: 25) + originalText // Metni sağa kaydırmak için 10 boşluk ekleyelim
        loginScreenControllerView.girisYapTitleLabel.text = shiftedText
        // Diğer bileşenlerin yerleştirilmesi
        
        let fullText = "Uygulamaya üye olarak; Üyelik Sözleşmesi’ni ve Kişisel Veriler ile İlgili Aydınlatma Metni’ni okuduğunuzu ve kabul ettiğinizi onaylamaktasınız."
        let specialWords = ["Üyelik Sözleşmesi", "Kişisel Veriler","Aydınlatma Metni"]
        let attributedString = NSMutableAttributedString(string: fullText)
        
        // Her kelime için rengini ayarla
        for word in specialWords {
            if let range = fullText.range(of: word) {
                let nsRange = NSRange(range, in: fullText)
                attributedString.addAttribute(.foregroundColor, value: UIColor.red, range: nsRange)
            }
        }
        
        // Label'a attributed string'i ata
        loginScreenControllerView.warningLabel.attributedText = attributedString
        YapıAyarları.warningLabel.warningLabelConst(for: loginScreenControllerView.warningLabel, in: view.self)
        
    }
    
}



