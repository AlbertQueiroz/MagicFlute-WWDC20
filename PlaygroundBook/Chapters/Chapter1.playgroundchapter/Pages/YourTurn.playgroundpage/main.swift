//#-hidden-code
import BookCore
import PlaygroundSupport
import UIKit

let actualPage = SecondPageViewController()

public func changeSignalSize(size: Size) {
    actualPage.signalSize = size.rawValue
    if size != .small {
        PlaygroundPage.current.assessmentStatus = .pass(message: "Well done! It looks bigger now. [Next Page](@next)")
    } else {
        PlaygroundPage.current.assessmentStatus = .pass(message: "Good job! The size still the same, but it's good. [Next Page](@next)")
    }
}

public func editFluteStyle(headColor: HeadStyle, bodyColor: BodyStyle, footColor: FootStyle) {
    actualPage.fluteView.headView.image = UIImage(named: headColor.rawValue)
    actualPage.fluteView.bodyView.image = UIImage(named: bodyColor.rawValue)
    actualPage.fluteView.footView.image = UIImage(named: footColor.rawValue)
}
//#-end-hidden-code
/*:
# Congratulations

I'm so proud of you, you're doing a great job! it seens you have learned a lot about flutes, I think that we can try to play a song already.
 
- Experiment:
Let's try something simple, like the "Happy Birthday" song. You just have to repeat the notes in this same order.
 \
Start slowly and get faster to improve your song, but don't forget to keep the rhythm.
\
![Happy Birthday](happyBirthday.png)
 
- Note:
 You can still personalize your flute and the signal size to play your songs with style!
*/

let headColor: HeadStyle = /*#-editable-code color*/.normal/*#-end-editable-code*/
let bodyColor: BodyStyle = /*#-editable-code color*/.normal/*#-end-editable-code*/
let footColor: FootStyle = /*#-editable-code color*/.normal/*#-end-editable-code*/

editFluteStyle(headColor: headColor, bodyColor: bodyColor, footColor: footColor)

let signalSize: Size = /*#-editable-code size*/.small/*#-end-editable-code*/

changeSignalSize(size: signalSize)


/*:
 # Nice work!
Keep practicing, to become a real professional.
 */

//#-hidden-code
PlaygroundPage.current.liveView = actualPage
//#-end-hidden-code
