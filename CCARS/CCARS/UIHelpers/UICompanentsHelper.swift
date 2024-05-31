//
//  UICompanentsHelper.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

struct UICompanentsHelper{
    static func creatCustomTextLabel(text : String , size : CGFloat , fontName : String , textColor: UIColor , backgraondColor: UIColor? ,borderColor : CGColor? ,cornerRadius : CGFloat? , borderWidth : CGFloat?) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        
        if let customFont = UIFont(name: fontName, size: size) {
            label.font = customFont
        } else {
            print("Font '\(fontName)' not found. Using system font instead.")
            label.font = UIFont.systemFont(ofSize: size)
        }
        
        label.textColor = textColor
        label.numberOfLines = 0
        label.clipsToBounds = true
        label.textAlignment = .center
        label.backgroundColor = backgraondColor
        label.layer.borderColor = borderColor
        if let cornerRadius = cornerRadius {
            label.layer.cornerRadius = cornerRadius
        }
        if let borderWidth = borderWidth {
            label.layer.borderWidth = borderWidth
        }
        return label
    }
    
    static func creatCustomButton(buttonName: String, tintColor: UIColor,cornerRadius : CGFloat?, borderWidth : CGFloat?, borderColor : CGColor?, backgroundC : CGColor?)-> UIButton{
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(buttonName, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(tintColor, for: .normal)
        button.layer.borderColor = borderColor
        button.layer.backgroundColor = backgroundC
        
        if let cornerRadius = cornerRadius{
            button.layer.cornerRadius = cornerRadius
        }
        if let borderWidth = borderWidth {
            button.layer.borderWidth =  borderWidth
        }
        return button
    }
    
    static func createCustomTextField(text: String, tintColor: UIColor, textColor: UIColor, placeholder: String, placeholderColor: UIColor, fontName: String, size: CGFloat, borderStyle: UITextField.BorderStyle = .none, borderColor: CGColor?, cornerRadius: CGFloat?, borderWidth: CGFloat?) -> UITextField {
        let textField = UITextField()
        textField.text = text
        textField.tintColor = tintColor
        textField.textColor = textColor
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])
        textField.font = UIFont(name: fontName, size: size)
        textField.borderStyle = borderStyle
        if let borderColor = borderColor {
            textField.layer.borderColor = borderColor
        }
        if let cornerRadius = cornerRadius {
            textField.layer.cornerRadius = cornerRadius
        }
        if let borderWidth = borderWidth {
            textField.layer.borderWidth = borderWidth
        }
        return textField
    }
}
