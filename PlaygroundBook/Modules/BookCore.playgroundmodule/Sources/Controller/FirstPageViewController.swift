//
//  FirstPageViewController.swift
//  BookCore
//
//  Created by Albert Rayneer on 13/05/20.
//

import UIKit
import PlaygroundSupport

public class FirstPageViewController: LiveViewController {
    
    public let fluteView = FluteView()
    public let curtainsView = CurtainsView()
    public let noteSignalView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "do")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    

    override public func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(curtainsView)
        view.addSubview(fluteView)
        view.addSubview(noteSignalView)
        
        setConstraints()
    }
    
    public func setConstraints() {
        fluteView.translatesAutoresizingMaskIntoConstraints = false
        fluteView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fluteView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        fluteView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        fluteView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        fluteView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        curtainsView.translatesAutoresizingMaskIntoConstraints = false
        curtainsView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        curtainsView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        curtainsView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        curtainsView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        noteSignalView.translatesAutoresizingMaskIntoConstraints = false
        noteSignalView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        noteSignalView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        noteSignalView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }

}
