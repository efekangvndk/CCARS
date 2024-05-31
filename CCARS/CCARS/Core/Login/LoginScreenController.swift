//
//  LoginScreenController.swift
//  CCARS
//
//  Created by Efekan Güvendik on 24.05.2024.
//

import UIKit
import Firebase

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
        loginScreenControllerView.loginUpButton.addTarget(self, action: #selector(loginDownButtonClicked), for: .touchDown)
        loginScreenControllerView.loginUpButton.addTarget(self, action: #selector(loginUpButtonClicked), for: [.touchUpInside, .touchUpOutside])
        loginScreenControllerView.loginButton.addTarget(self, action: #selector(baseButton), for: .touchUpInside)
        
        
        loginScreenControllerView.signInUpButton.addTarget(self, action: #selector(signInDownButtonClicked), for: .touchDown)
        loginScreenControllerView.signInUpButton.addTarget(self, action: #selector(signInUpButtonClicked), for: [.touchUpInside , .touchUpOutside])
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
    
    
    @objc func loginDownButtonClicked() {
        UIView.animate(withDuration: 0.2) {
            self.loginScreenControllerView.loginUpButton.transform = CGAffineTransform(scaleX: 0.90, y: 0.90)
        }
    }
    
    @objc func loginUpButtonClicked() {
        UIView.animate(withDuration: 0.5, animations: {
            self.loginScreenControllerView.signInUpButton.transform = CGAffineTransform.identity
            
            // Giriş Yap butonunun animasyonlarını eski haline getir
            self.loginScreenControllerView.signEmailTextField.alpha = 0 // Opaklığını 0 yaparak gizle
            self.loginScreenControllerView.signPasswordTextField.alpha = 0 // Opaklığını 0 yaparak gizle
            // Diğer öğeleri görünür hale getir
            self.loginScreenControllerView.emailTextField.isHidden = false
            self.loginScreenControllerView.passwordTextField.isHidden = false
            self.loginScreenControllerView.nameSurname.isHidden = false
            self.loginScreenControllerView.nameSurname.alpha = 1 // Opaklığını 1 yaparak görünür hale getir
            self.loginScreenControllerView.emailTextField.alpha = 1 // Opaklığını 1 yaparak görünür hale getir
            self.loginScreenControllerView.passwordTextField.alpha = 1 // Opaklığını 1 yaparak görünür hale getir
            
            // Animasyonu başlat
            self.animateDownText(self.loginScreenControllerView.nameSurname)
            self.animateDownText(self.loginScreenControllerView.emailTextField)
            self.animateDownText(self.loginScreenControllerView.passwordTextField)
            self.labelComeBack(self.loginScreenControllerView.kayitOlTitleLabel)
        }, completion: { _ in
            // Animasyon tamamlandıktan sonra giriş alanlarını tekrar eski haline getir
            self.loginScreenControllerView.signEmailTextField.isHidden = true
            self.loginScreenControllerView.signPasswordTextField.isHidden = true
            
            // Eğer loginUpButton'a basıldıysa ve signUpButton aktif hale gelmişse, signUpButton'ı tekrar devre dışı bırak
            self.loginScreenControllerView.signInUpButton.isEnabled = true
            self.isAnimationStarted = false
        })
        
    }
    
    @objc func signInDownButtonClicked() {
        UIView.animate(withDuration: 0.2) {
            self.loginScreenControllerView.signInUpButton.transform = CGAffineTransform(scaleX: 0.90, y: 0.90)
        }
    }
    
    @objc func signInUpButtonClicked() {
        UIView.animate(withDuration: 0.5, animations: {
            self.loginScreenControllerView.loginUpButton.transform = CGAffineTransform.identity
            
            self.loginScreenControllerView.nameSurname.alpha = 0 // Opaklığını 0 yaparak gizle
            self.loginScreenControllerView.emailTextField.alpha = 0 // Opaklığını 0 yaparak gizle
            self.loginScreenControllerView.passwordTextField.alpha = 0 // Opaklığını 0 yaparak gizle
            // Diğer öğeleri görünür hale getir
            self.loginScreenControllerView.signEmailTextField.isHidden = false
            self.loginScreenControllerView.signPasswordTextField.isHidden = false
            self.loginScreenControllerView.signEmailTextField.alpha = 1 // Opaklığını 1 yaparak görünür hale getir
            self.loginScreenControllerView.signPasswordTextField.alpha = 1 // Opaklığını 1 yaparak görünür hale getir
            
            // Animasyonu başlat
            self.animateTextFieldEmail(self.loginScreenControllerView.signEmailTextField)
            self.animateTextFieldEmail(self.loginScreenControllerView.signPasswordTextField)
            self.labelAnimate(self.loginScreenControllerView.kayitOlTitleLabel)
        }, completion: { _ in
            // Animasyon tamamlandıktan sonra nameSurname ve diğer alanları tamamen gizle
            self.loginScreenControllerView.nameSurname.isHidden = true
            self.loginScreenControllerView.emailTextField.isHidden = true
            self.loginScreenControllerView.passwordTextField.isHidden = true
            
            // loginUpButton'dan sonra signUpButton'ı etkinleştir
            self.loginScreenControllerView.signInUpButton.isEnabled = true
            self.isAnimationStarted = false
        })
    }
    
    private func animateDownText(_ comeBackAnimate: UITextField) {
        UIView.animate(withDuration: 1.0, animations: {
            comeBackAnimate.transform = CGAffineTransform(translationX: 0, y: 0)
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
    
    @objc func baseButton(){
        if loginScreenControllerView.emailTextField.text != "" && loginScreenControllerView.passwordTextField.text != ""{
            Auth.auth().createUser(withEmail: loginScreenControllerView.emailTextField.text!, password: loginScreenControllerView.passwordTextField.text!) { authData, error in
                if error != nil {
                    self.makeAlert(titleInput: "Error", massageInput: error?.localizedDescription ?? "Error")
                    
                } else {
                  let goVC = mainScreenVC()
                    self.navigationController?.pushViewController(goVC, animated: true)
                }
            }
            
        } else {
            makeAlert(titleInput: "Error", massageInput: "Email/Password")
        }
    }
    func makeAlert(titleInput: String, massageInput:String ){
        let alert = UIAlertController(title: titleInput, message: massageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}

