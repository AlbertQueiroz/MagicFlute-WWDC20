//
//  FluteView.swift
//  BookCore
//
//  Created by Albert Rayneer on 13/05/20.
//

import UIKit

public class FluteView: UIView {
    
    public let headView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "defaultHead")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    public let footView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "defaultFoot")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    public let bodyView: UIImageView = {
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
        bodyView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        bodyView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        bodyView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.36).isActive = true
        
        headView.translatesAutoresizingMaskIntoConstraints = false
        headView.topAnchor.constraint(equalTo: bodyView.bottomAnchor, constant: -4).isActive = true
        headView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        headView.heightAnchor.constraint(equalTo: bodyView.heightAnchor, multiplier: 0.8).isActive = true
        
        footView.translatesAutoresizingMaskIntoConstraints = false
        footView.bottomAnchor.constraint(equalTo: bodyView.topAnchor).isActive = true
        footView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        footView.heightAnchor.constraint(equalTo: bodyView.heightAnchor, multiplier: 0.45).isActive = true
    }
}
