//
//  FirstPageViewController.swift
//  BookCore
//
//  Created by Albert Rayneer on 13/05/20.
//

import UIKit
import AVFoundation

public class FirstPageViewController: LiveViewController {
    
    public var audioPlayer: AVAudioPlayer!
    
    public let fluteView = FluteView()
    public let curtainsView = CurtainsView()
    public let buttonStackView: UIStackView = UIStackView()
    public let background: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(background)
        view.addSubview(curtainsView)
        view.addSubview(fluteView)
        view.addSubview(buttonStackView)
        
        createNoteButtons()
        setConstraints()
    }
    
    public func createNoteButtons() {
        for i in 0..<7 {
            let button = UIButton()
            button.tag = i
            button.addTarget(self, action: #selector(noteButtonAction), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            buttonStackView.addArrangedSubview(button)
        }


        buttonStackView.alignment = .fill
        buttonStackView.axis = .vertical
        buttonStackView.distribution = .fillEqually
        buttonStackView.spacing = 8.0
    }

    @objc public func noteButtonAction(sender: UIButton!) {
        switch sender.tag {
        case 0: //DO
            playNote(note: "do")
        case 1: //LA
            playNote(note: "re")
        case 2: //SOL
            playNote(note: "mi")
        case 3: //FA
            playNote(note: "fa")
        case 4: //MI
            playNote(note: "sol")
        case 5: //RE
            playNote(note: "la")
        case 6: //DO
            playNote(note: "ti")
        default:
            return
        }
    }
    
    public func playNote(note: String) {
        if let soundURL = Bundle.main.url(forResource: note, withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            }
            catch {
                print(error)
            }
            audioPlayer.play()
        }else{
            print("Unable to locate audio file")
        }
    }
    
    public func setConstraints() {
        fluteView.translatesAutoresizingMaskIntoConstraints = false
        curtainsView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        background.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: view.topAnchor),
            background.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            background.leftAnchor.constraint(equalTo: view.leftAnchor),
            background.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            buttonStackView.heightAnchor.constraint(equalTo: fluteView.heightAnchor, multiplier: 0.44),
            buttonStackView.centerXAnchor.constraint(equalTo: fluteView.centerXAnchor),
            buttonStackView.bottomAnchor.constraint(equalTo: fluteView.bodyView.bottomAnchor, constant: -30),
            buttonStackView.widthAnchor.constraint(equalTo: fluteView.widthAnchor, constant: -30),
            
            fluteView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fluteView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            fluteView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            fluteView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            fluteView.widthAnchor.constraint(equalToConstant: 150),
            
            curtainsView.topAnchor.constraint(equalTo: view.topAnchor),
            curtainsView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            curtainsView.leftAnchor.constraint(equalTo: view.leftAnchor),
            curtainsView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
        

    }

}
