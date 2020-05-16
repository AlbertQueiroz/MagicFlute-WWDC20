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
# Congratulations

I'm so proud of you, you're doing a great job! it seens you have learned a lot about flutes, I think that we can try to play a song already.
 
- Experiment:
Let's try something simple, like the "Happy Birthday" song. You just have to repeat the notes in this same order.
 \
Start slowly and get faster to improve your song, but don't forget to keep the rhythm.
\
![Happy Birthday](happyBirthday.png)
 
- Note:
 You can still personalize your flute and play your songs with style!
*/

let headColor: HeadStyle = /*#-editable-code color*/.normal/*#-end-editable-code*/
let bodyColor: BodyStyle = /*#-editable-code color*/.normal/*#-end-editable-code*/
let footColor: FootStyle = /*#-editable-code color*/.normal/*#-end-editable-code*/

editFluteStyle(headColor: /*#-editable-code color*/headColor/*#-end-editable-code*/, bodyColor: /*#-editable-code color*/bodyColor/*#-end-editable-code*/, footColor: /*#-editable-code color*/footColor/*#-end-editable-code*/)
/*:
 # Nice work!
Keep practicing, to become a real professional.
 */
