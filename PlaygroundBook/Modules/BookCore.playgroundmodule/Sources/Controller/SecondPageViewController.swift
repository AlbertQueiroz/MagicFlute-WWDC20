//
//  SecondPageViewController.swift
//  BookCore
//
//  Created by Albert Rayneer on 13/05/20.
//

import UIKit

public class SecondPageViewController: FirstPageViewController {

    public let noteSignalView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(noteSignalView)
        
        setNoteSignalConstraints()
    }
    
    public override func noteButtonAction(sender: UIButton!) {
        super.noteButtonAction(sender: sender)
        showNoteView()
        switch sender.tag {
        case 0: //DO
            noteSignalView.image = UIImage(named: "do")
        case 1: //LA
            noteSignalView.image = UIImage(named: "re")
        case 2: //SOL
            noteSignalView.image = UIImage(named: "mi")
        case 3: //FA
            noteSignalView.image = UIImage(named: "fa")
        case 4: //MI
            noteSignalView.image = UIImage(named: "sol")
        case 5: //RE
            noteSignalView.image = UIImage(named: "la")
        case 6: //DO
            noteSignalView.image = UIImage(named: "ti")
        default:
            return
        }
    }
    
    public func showNoteView() {
        UIViewPropertyAnimator(duration: 08, curve: .easeIn, animations: {
            self.noteSignalView.alpha = 1
        }).startAnimation()
    }
    
    
    public func setNoteSignalConstraints() {
        super.setConstraints()
        
        noteSignalView.translatesAutoresizingMaskIntoConstraints = false
        noteSignalView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        noteSignalView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        noteSignalView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        noteSignalView.widthAnchor.constraint(equalTo: noteSignalView.heightAnchor).isActive = true
    }

}
