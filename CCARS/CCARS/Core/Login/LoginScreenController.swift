//
//  LoginScreenController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 24.05.2024.
//

import UIKit

class LoginScreenController: UIViewController {
    
    var loginScreenControllerView = LoginScreen()
    var isAnimationStarted = false // Animasyonun başladığını takip etmek için bir bayrak
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreenControllerView = LoginScreen(frame: view.bounds)
        view.addSubview(loginScreenControllerView)
        setupView()
        constraintSetting()
    }
    
    private func setupView() {
        view.backgroundColor = .black
        loginScreenControllerView.loginScrennImage.image = UIImage(named: "logo")
        
        //isHiddenSettings
        loginScreenControllerView.signEmailTextField.isHidden = true
        loginScreenControllerView.signPasswordTextField.isHidden = true
        
        //Buttonlar ve işlevleri
        loginScreenControllerView.loginUpButton.addTarget(self, action: #selector(didLoginButtonDown), for: .touchDown)
        loginScreenControllerView.loginUpButton.addTarget(self, action: #selector(didLoginButtonUp), for: [.touchUpInside, .touchUpOutside])
        
        
        loginScreenControllerView.signInUpButton.addTarget(self, action: #selector(didSingInButtonDown), for: .touchDown)
        loginScreenControllerView.signInUpButton.addTarget(self, action: #selector(didSingInButtonUp), for: [.touchUpInside , .touchUpOutside])
        loginScreenControllerView.signInUpButton.isEnabled = false
        
        // Giriş Yap title label oluşturulduktan sonra metni sağa kaydır
        let originalText = loginScreenControllerView.girisYapTitleLabel.text ?? ""
        let shiftedText = String(repeating: " ", count: 25) + originalText // Metni sağa kaydırmak için 10 boşluk ekleyelim
        loginScreenControllerView.girisYapTitleLabel.text = shiftedText
        
        // Yazı içi Renk ayarlarım Warning Label
        let fullText = "Uygulamaya üye olarak; Üyelik Sözleşmesi’ni ve Kişisel Veriler ile İlgili Aydınlatma Metni’ni okuduğunuzu ve kabul ettiğinizi onaylamaktasınız."
        let specialWords = ["Üyelik Sözleşmesi", "Kişisel Veriler", "Aydınlatma Metni"]
        let attributedString = NSMutableAttributedString(string: fullText)
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
    
    
    private func constraintSetting(){
        //Ekranı bölen çizgi ayarları 1.
        loginScreenControllerView.lineView.backgroundColor = UIColor.gray
        loginScreenControllerView.lineView.translatesAutoresizingMaskIntoConstraints = false
        //Ekranı bölen çizgi ayarları 2.
        loginScreenControllerView.lineView2.backgroundColor = UIColor.gray
        loginScreenControllerView.lineView2.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    @objc func didLoginButtonDown() {
        UIView.animate(withDuration: 0.2) {
            self.loginScreenControllerView.loginUpButton.transform = CGAffineTransform(scaleX: 0.90, y: 0.90)
        }
    }

    @objc func didLoginButtonUp() {
        // Animasyon başlatma işlemini UIView.animate bloğu içine taşıyarak görünürlük değişikliğinden hemen sonra başlat
        UIView.animate(withDuration: 0.5, animations: {
            self.loginScreenControllerView.loginUpButton.transform = CGAffineTransform.identity
            
            self.loginScreenControllerView.nameSurname.alpha = 0 // Opaklığını 0 yaparak gizle
            self.loginScreenControllerView.emailTextField.alpha = 0 // Opaklığını 0 yaparak gizle
            self.loginScreenControllerView.passwordTextField.alpha = 0 // Opaklığını 0 yaparak gizle
            // Diğer öğeleri görünür hale getir
            self.loginScreenControllerView.signEmailTextField.isHidden = false
            self.loginScreenControllerView.signPasswordTextField.isHidden = false
            
            // Animasyonu başlat
            if !self.isAnimationStarted && !self.loginScreenControllerView.signEmailTextField.isHidden{
                self.animateTextFieldEmail(self.loginScreenControllerView.signEmailTextField)
                self.animateTextFieldEmail(self.loginScreenControllerView.signPasswordTextField)
                self.labelAnimate(self.loginScreenControllerView.kayitOlTitleLabel)
                self.isAnimationStarted = true
            }
        }, completion: { _ in
            // Animasyon tamamlandıktan sonra nameSurname ve diğer alanları tamamen gizle
            self.loginScreenControllerView.nameSurname.isHidden = true
            self.loginScreenControllerView.emailTextField.isHidden = true
            self.loginScreenControllerView.passwordTextField.isHidden = true
            
            // loginUpButton'dan sonra signUpButton'ı etkinleştir
            self.loginScreenControllerView.signInUpButton.isEnabled = true
        })
    }
    
    @objc func didSingInButtonDown(){
        UIView.animate(withDuration: 0.2){
            self.loginScreenControllerView.signInUpButton.transform = CGAffineTransform(scaleX: 0.90, y: 0.90)
        }
    }

    @objc func didSingInButtonUp(){
        UIView.animate(withDuration: 0.5, animations: {
            self.loginScreenControllerView.signInUpButton.transform = CGAffineTransform.identity
            
            // Giriş Yap butonunun animasyonlarını eski haline getir
            self.loginScreenControllerView.signEmailTextField.alpha = 0 // Opaklığını 0 yaparak gizle
            self.loginScreenControllerView.signPasswordTextField.alpha = 0 // Opaklığını 0 yaparak gizle
            // Diğer öğeleri gizle
            self.loginScreenControllerView.emailTextField.isHidden = true
            self.loginScreenControllerView.passwordTextField.isHidden = true
            self.loginScreenControllerView.nameSurname.isHidden = true
            
            // Animasyonu başlat
            if self.isAnimationStarted {
                self.animateDownText(self.loginScreenControllerView.nameSurname)
                self.animateDownText(self.loginScreenControllerView.emailTextField)
                self.animateDownText(self.loginScreenControllerView.passwordTextField)
                self.labelComeBack(self.loginScreenControllerView.kayitOlTitleLabel)
                self.isAnimationStarted = false
            }
        }, completion: { _ in
            // Animasyon tamamlandıktan sonra giriş alanlarını tekrar eski haline getir
            self.loginScreenControllerView.signEmailTextField.isHidden = true
            self.loginScreenControllerView.signPasswordTextField.isHidden = true
            
            // Eğer loginUpButton'a basıldıysa ve signUpButton aktif hale gelmişse, signUpButton'ı tekrar devre dışı bırak
            if self.loginScreenControllerView.loginUpButton.isEnabled {
                self.loginScreenControllerView.signInUpButton.isEnabled = false
            }
        })
    }


    private func animateDownText(_ comeBackAnimate : UITextField){
        UIView.animate(withDuration: 1.0, animations: {
            comeBackAnimate.transform = CGAffineTransform(translationX: 0, y: 60)
        })
    }
    private func labelComeBack(_ comeBackLabel: UILabel) {
        UIView.animate(withDuration: 1.5) {
            comeBackLabel.transform = CGAffineTransform.identity
        }
    }
    
    private func animateTextFieldEmail(_ signEmailTextField: UITextField) {
        UIView.animate(withDuration: 1.0, animations: {
            signEmailTextField.transform = CGAffineTransform(translationX: 0, y: -60)
        })
    }
    private func labelAnimate(_ labelAnimate: UILabel) {
        UIView.animate(withDuration: 1.5) {
            labelAnimate.transform = CGAffineTransform(translationX: 120, y: 0)
        }
    }
}


