//
//  FluteView.swift
//  BookCore
//
//  Created by Albert Rayneer on 13/05/20.
//

import UIKit

public class FluteView: UIView {
    
    public var headView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "defaultHead")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    public var footView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "defaultFoot")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    public var bodyView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "defaultBody")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    
    
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(bodyView)
        self.addSubview(headView)
        self.addSubview(footView)

        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    public func setConstraints() {
        bodyView.translatesAutoresizingMaskIntoConstraints = false
        headView.translatesAutoresizingMaskIntoConstraints = false
        footView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            bodyView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            bodyView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -100),
            bodyView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.4),
            
            
            headView.topAnchor.constraint(equalTo: bodyView.bottomAnchor, constant: -4),
            headView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            headView.heightAnchor.constraint(equalTo: bodyView.heightAnchor, multiplier: 0.8),
            
            
            footView.bottomAnchor.constraint(equalTo: bodyView.topAnchor),
            footView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            footView.heightAnchor.constraint(equalTo: bodyView.heightAnchor, multiplier: 0.45)
            
        ])
        
        
    }
}
