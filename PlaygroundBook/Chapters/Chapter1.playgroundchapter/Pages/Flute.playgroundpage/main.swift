//#-hidden-code
import BookCore
import PlaygroundSupport
import UIKit

let actualPage = FirstPageViewController()
PlaygroundPage.current.liveView = actualPage

public func editFluteStyle(headColor: HeadStyle, bodyColor: BodyStyle, footColor: FootStyle) {
    actualPage.fluteView.headView.image = UIImage(named: headColor.rawValue)
    actualPage.fluteView.bodyView.image = UIImage(named: bodyColor.rawValue)
    actualPage.fluteView.footView.image = UIImage(named: footColor.rawValue)
}
//#-end-hidden-code


/*:
# Welcome

 The flute is one of the oldest intruments in the world. It had a very important job in the art, religion and human expression, and gave life to a lot of another wind instruments. There are many types of flute, the indian, chinese and japanese for example. the most famous are the transverse flute, they have the most clean sound among all, and it's used a lot on concerts, on the other hand, it`s the most expensive one and the hardest to play. Because of if it's not the most famous beyond the begginers, so, in this example we're going to use a simpler model more like the japanese ones, in my country it's know by "Flauta doce".
 I still remember when I won my first flute. It was magical, I could create songs all day and make my mom ungry because of the noise.

 # Flute Parts

 parts image

 - Experiment:
 Make it more you! You can change the variables values to personalize your flute and create awesome combinations!
 \
 **Try:**
 \
 .normal, .blue, .pink, .green
*/

let headColor: HeadStyle = /*#-editable-code color*/.normal/*#-end-editable-code*/
let bodyColor: BodyStyle = /*#-editable-code color*/.normal/*#-end-editable-code*/
let footColor: FootStyle = /*#-editable-code color*/.normal/*#-end-editable-code*/

editFluteStyle(headColor: /*#-editable-code color*/headColor/*#-end-editable-code*/, bodyColor: /*#-editable-code color*/bodyColor/*#-end-editable-code*/, footColor: /*#-editable-code color*/footColor/*#-end-editable-code*/)

/*:
 ## Try it
 Touch the flute keys to make a beautiful song
 */
