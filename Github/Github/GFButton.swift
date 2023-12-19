//
//  GFButton.swift
//  Github
//
//  Created by furkan vural on 19.12.2023.
//

import UIKit

class GFButton: UIButton {

    // Ne kadar büyük olacak
    override init(frame: CGRect) {
        super.init(frame: frame)
        // custom code here
        configure()
    }
    
    required init?(coder: NSCoder) {
        // Storyboard'da gf button olusturuldugunda cagırılıyor
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius    = 10
        titleLabel?.textColor = .white
        titleLabel?.font      = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }

}
