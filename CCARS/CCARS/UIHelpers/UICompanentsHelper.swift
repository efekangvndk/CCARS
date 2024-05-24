//
//  UICompanentsHelper.swift
//  CCARS
//
//  Created by Efekan Güvendik on 21.05.2024.
//

import UIKit

struct UICompanentsHelper{
    static func creatCustomTextLabel(text : String , size : Int , fontName : String , textColor: UIColor) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont(name: fontName, size: CGFloat(size))
        label.textColor = textColor
        label.numberOfLines = 0
        label.clipsToBounds = true
        label.textAlignment = .center
        return label
    }
    
    static func creatCustomButton(buttonName: String, tintColor: UIColor,cornerRadius : CGFloat?, borderWidth : CGFloat?, borderColor : CGColor?, backgroundC : CGColor)-> UIButton{
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
}
