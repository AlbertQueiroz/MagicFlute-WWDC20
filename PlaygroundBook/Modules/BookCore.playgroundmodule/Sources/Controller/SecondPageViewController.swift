//
//  SecondPageViewController.swift
//  BookCore
//
//  Created by Albert Rayneer on 13/05/20.
//

import UIKit
import CoreHaptics

public class SecondPageViewController: FirstPageViewController {

    var engine: CHHapticEngine?
    public let noteSignalView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    public var signalSize: CGFloat = 200
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(noteSignalView)
        
        startHapticEngine()
        setNoteSignalConstraints()
    }
    
    public override func noteButtonAction(sender: UIButton!) {
        super.noteButtonAction(sender: sender)
        playHaptic(tag: sender.tag)
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
    
    public func startHapticEngine() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }

        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("There was an error creating the engine: \(error.localizedDescription)")
        }
    }
    
    func playHaptic(tag: Int) {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }

        let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float(tag + 1)/10)
        let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: Float(tag + 1)/10)
        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: 0)
        do {
            let pattern = try CHHapticPattern(events: [event], parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("Failed to play pattern: \(error.localizedDescription).")
        }
    }
    
    public func showNoteView() {
        UIViewPropertyAnimator(duration: 0.2, curve: .easeIn, animations: {
            self.noteSignalView.alpha = 1
        }).startAnimation()
    }
    
    
    public func setNoteSignalConstraints() {
        super.setConstraints()
        
        noteSignalView.translatesAutoresizingMaskIntoConstraints = false
        noteSignalView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        noteSignalView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        noteSignalView.heightAnchor.constraint(equalToConstant: signalSize).isActive = true
        noteSignalView.widthAnchor.constraint(equalTo: noteSignalView.heightAnchor).isActive = true
    }

}
