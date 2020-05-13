//
//  CurtinsView.swift
//  BookCore
//
//  Created by Albert Rayneer on 13/05/20.
//

import UIKit

public class CurtainsView: UIView {

    let curtainLeft: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "curtainLeft")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    let curtainRight: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "curtainRight")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        
        return imageView
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(curtainLeft)
        self.addSubview(curtainRight)
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setConstraints() {
        curtainRight.translatesAutoresizingMaskIntoConstraints = false
        curtainRight.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        curtainRight.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        curtainRight.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.6).isActive = true
        curtainRight.widthAnchor.constraint(equalTo: curtainRight.heightAnchor, multiplier: 0.42).isActive = true
        
        curtainLeft.translatesAutoresizingMaskIntoConstraints = false
        curtainLeft.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        curtainLeft.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        curtainLeft.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.6).isActive = true
        curtainLeft.widthAnchor.constraint(equalTo: curtainLeft.heightAnchor, multiplier: 0.42).isActive = true
    }
    
}
