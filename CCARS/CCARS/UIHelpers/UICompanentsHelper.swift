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
        return label
    }
}
