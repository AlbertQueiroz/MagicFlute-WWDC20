//#-hidden-code
import BookCore
import PlaygroundSupport
import UIKit


let actualPage = SecondPageViewController()
PlaygroundPage.current.liveView = actualPage

public func editFluteStyle(headColor: HeadStyle, bodyColor: BodyStyle, footColor: FootStyle) {
    actualPage.fluteView.headView.image = UIImage(named: headColor.rawValue)
    actualPage.fluteView.bodyView.image = UIImage(named: bodyColor.rawValue)
    actualPage.fluteView.footView.image = UIImage(named: footColor.rawValue)
}

//#-end-hidden-code

/*:
 # The problem
Few people has the great oportunity to have an instrument in the childhood, but when we have, even less of us think about that children who don't even dream in play it, as the case of deaf children.
 
 # Motivation
 When I was younger, my mother gave me a toy flute, and it provided me hours of fun and learning wich made me interest for music and this awesome instrument
 \
 But, would a deaf child have this same experience? I would like that yes. And this is why i'm creating this playground, to prove that **everyone** can, at least, play a simple song.


# How it works?
That are different ways to interact with a hearing impaired, like vision and touch, for example. Seen that, when played, the instrument generates a different vibration according with the note. This allows the player to be capable of identify the sound that it's making.
 \
 Besides that, it's possible to identify the notes by the ASL (American Signal Language), that can be seen on the screen everytime that the instrument is played.

 - Experiment:
 Try to change the hand signal size to make it more visible.
 */

let signalSize: Int = /*#-editable-code size*/1/*#-end-editable-code*/

/*:
# Where it came from?
Recently, when I was already in college, I've joined a Brazilian signal language (LIBRAS) class, what made me sympathize with the deaf public and understand better their needs and reality.
 \
 It was then that I've met the project "Sounds of silence", "Sons do silêncio" in portuguese. It was born here, in Brazil. It was created by a deaf man, that learned how to play sax using it vibrations. He felt in love with it, so, he devoted all his efforts to teach other paople how to do create music.
