//
//  firstImageConstraint.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

class YapıAyarları{
    
    //MARK: ImageConstrain
    struct ImageViewLayout {
        static func configureConstraints(for firstImage: UIImageView, in view: UIView) {
            firstImage.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                firstImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                firstImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                firstImage.widthAnchor.constraint(equalToConstant: 240),
                firstImage.heightAnchor.constraint(equalToConstant: 60.03)
            ])
        }
        
        static func animateImageView(_ imageView: UIImageView, completion: @escaping () -> Void) {
            UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseOut, animations: {
                imageView.transform = CGAffineTransform(translationX: 0, y: -100)
            }, completion: { _ in
                completion()
            })
        }
    }
    
    //MARK: LabelConstrain
    struct FirstLabelLayout {
        static func firstLabelLayoutCon(for firstLabel: UILabel , in view : UIView){
            firstLabel.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                firstLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                firstLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor), // hata bunu centerYAnchor ile yapmamız lazımdı.
                firstLabel.widthAnchor.constraint(equalToConstant: 196),
                firstLabel.heightAnchor.constraint(equalToConstant: 46)
            ])
            firstLabel.alpha = 0 // Animasyon başlamadan önce görünmez olması için alpha = 0 yapıyoruz
        }
        
        static func animateLabel(_ label: UILabel) {
            UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseOut, animations: {
                label.transform = CGAffineTransform(translationX: 0, y: -50)
                label.alpha = 1.0 //burda da alpha sıfır değerini görünürlük adına 1 yapıyoruz.
            })
        }
    }
    
    //MARK: CollectionViewConstraint
    struct CarImageCollectionView{
        static func carImageCollectionConstraint(for imageTableCollectionView : UICollectionView, in view : UIView){
            
            NSLayoutConstraint.activate([
                imageTableCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
                imageTableCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -380),
                imageTableCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                imageTableCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
            ])
            imageTableCollectionView.layer.cornerRadius = 10
        }
    }
    
    struct ButtonLayout{
        static func buttonLoginSign(for buttonLoginSign : UIButton , in view: UIView ){
            
            NSLayoutConstraint.activate([
                buttonLoginSign.topAnchor.constraint(equalTo: view.topAnchor, constant: 800),
                buttonLoginSign.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -20),
                buttonLoginSign.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -100),
                buttonLoginSign.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100)
            ])
        }
    }
    
    struct loginButton{
        static func loginButtonConst(for loginButton : UIButton, in view: UIView){
            
            NSLayoutConstraint.activate([
                loginButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 543),
                loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 43),
                loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -43),
                loginButton.widthAnchor.constraint(equalToConstant: 304),
                loginButton.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    struct nameSurnameConst {
        static func nameSurnametext(for nameSurname: UITextField, in view: UIView, previousTextField: UIView? = nil) {
            nameSurname.translatesAutoresizingMaskIntoConstraints = false
            nameSurname.layer.masksToBounds = true
            let topConstraint: NSLayoutConstraint
            if let previousTextField = previousTextField {
                topConstraint = nameSurname.topAnchor.constraint(equalTo: previousTextField.bottomAnchor, constant: 16)
            } else {
                topConstraint = nameSurname.topAnchor.constraint(equalTo: view.topAnchor, constant: 226)
            }
            NSLayoutConstraint.activate([
                topConstraint,
                nameSurname.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
                nameSurname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
                nameSurname.widthAnchor.constraint(equalToConstant: 342),
                nameSurname.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
    }
    
    struct passwordTextField {
        static func passwordTextFieldConst(for passwordTextField: UITextField, in view: UIView, previousTextField: UIView? = nil) {
            passwordTextField.translatesAutoresizingMaskIntoConstraints = false
            passwordTextField.layer.masksToBounds = true
            let topConstraint: NSLayoutConstraint
            if let previousTextField = previousTextField {
                topConstraint = passwordTextField.topAnchor.constraint(equalTo: previousTextField.bottomAnchor, constant: 16)
            } else {
                topConstraint = passwordTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 286)
            }
            NSLayoutConstraint.activate([
                topConstraint,
                passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
                passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
                passwordTextField.widthAnchor.constraint(equalToConstant: 342),
                passwordTextField.heightAnchor.constraint(equalToConstant: 50)
            ])
        }
    }
    
    struct emailTextField {
        static func emailTextFieldConst(for emailTextField: UITextField, in view: UIView, previousTextField: UIView? = nil) {
            emailTextField.translatesAutoresizingMaskIntoConstraints = false
            emailTextField.layer.masksToBounds = true
            let topConstraint: NSLayoutConstraint
            if let previousTextField = previousTextField {
                topConstraint = emailTextField.topAnchor.constraint(equalTo: previousTextField.bottomAnchor, constant: 16)
            } else {
                topConstraint = emailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 346)
            }
            NSLayoutConstraint.activate([
                topConstraint,
                emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
                emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
                emailTextField.widthAnchor.constraint(equalToConstant: 342),
                emailTextField.heightAnchor.constraint(equalToConstant: 50)
            ])
        }
    }
    struct loginScreenImage {
        static func loginScreenConst(for loginScreenImage : UIImageView, in view: UIView) {
            loginScreenImage.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                loginScreenImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 61.30),
                loginScreenImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -741.40),
                loginScreenImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
                loginScreenImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
                loginScreenImage.widthAnchor.constraint(equalToConstant: 160),
                loginScreenImage.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    struct warningLabel{
        static func warningLabelConst(for warningLabel: UILabel, in view: UIView){
            warningLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                warningLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 414),
                warningLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -397),
                warningLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
                warningLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -18)
            ])
        }
    }
    
    struct signEmail {
        static func signEmailConst(for signEmailTextField: UITextField, in view: UIView, previousTextField: UIView? = nil) {
            signEmailTextField.translatesAutoresizingMaskIntoConstraints = false
            signEmailTextField.layer.masksToBounds = true
            let topConstraint: NSLayoutConstraint
            if let previousTextField = previousTextField {
                topConstraint = signEmailTextField.topAnchor.constraint(equalTo: previousTextField.bottomAnchor, constant: 16)
            } else {
                topConstraint = signEmailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 226)
            }
            NSLayoutConstraint.activate([
                topConstraint,
                signEmailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
                signEmailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
                signEmailTextField.widthAnchor.constraint(equalToConstant: 342),
                signEmailTextField.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
    }
    
    struct signPassword {
        static func signPasswordConst(for signPassword: UITextField, in view: UIView, previousTextField: UIView? = nil) {
            signPassword.translatesAutoresizingMaskIntoConstraints = false
            signPassword.layer.masksToBounds = true
            let topConstraint: NSLayoutConstraint
            if let previousTextField = previousTextField {
                topConstraint = signPassword.topAnchor.constraint(equalTo: previousTextField.bottomAnchor, constant: 16)
            } else {
                topConstraint = signPassword.topAnchor.constraint(equalTo: view.topAnchor, constant: 286)
            }
            NSLayoutConstraint.activate([
                topConstraint,
                signPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
                signPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
                signPassword.widthAnchor.constraint(equalToConstant: 342),
                signPassword.heightAnchor.constraint(equalToConstant: 44)
            ])
        }
    }
    
    struct girisButton{
        static func girisButtonConst(for girisButton : UIButton, in view: UIView){
            girisButton.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                girisButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 395),
                girisButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -408),
                girisButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 43),
                girisButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -43),
                girisButton.widthAnchor.constraint(equalToConstant: 304),
                girisButton.heightAnchor.constraint(equalToConstant: 40)
            ])
            
        }
    }
    
    struct forgettenPassword {
        static func forgettenPasswordConst(for forgettenPasswordButton: UIButton, in view: UIView){
            forgettenPasswordButton.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                forgettenPasswordButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 362),
                forgettenPasswordButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -464),
                forgettenPasswordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 125),
                forgettenPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -125),
                forgettenPasswordButton.widthAnchor.constraint(equalToConstant: 120),
                forgettenPasswordButton.heightAnchor.constraint(equalToConstant: 17)
            ])
        }
    }
    
    struct girisLabel {
        static func girişLabelConst(for girisLabel : UILabel, in view: UIView){
            NSLayoutConstraint.activate([
                girisLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
                girisLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 195),
                girisLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75),
                girisLabel.heightAnchor.constraint(equalToConstant: 44),
                girisLabel.widthAnchor.constraint(equalToConstant: 120)
            ])
        }
    }
    
    struct kayitOlLabel{
        static func kayitLabelConst(for kahyitOlLabel : UILabel, in view: UIView){
            NSLayoutConstraint.activate([
                kahyitOlLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
                kahyitOlLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75),
                kahyitOlLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75),
                kahyitOlLabel.heightAnchor.constraint(equalToConstant: 44),
                kahyitOlLabel.widthAnchor.constraint(equalToConstant: 240)
            ])
        }
    }
}
