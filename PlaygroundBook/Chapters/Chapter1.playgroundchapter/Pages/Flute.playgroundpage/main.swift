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

A flauta é um dos instrumentos mais antigos do mundo, e teve um papel importantíssimo na arte, religião e na expressão humana, além de ter dado origem à uma serie de outros instrumentos de sopro. Ela é capaz de criar lindas melodias, de som suave, apenas através da variação de pressão do ar.

 # Motivation
Quando era mais novo, ganhei de presente uma flauta de brinquedo que me proporcionou horas de diversão e aprendizado, que me fizeram criar interesse por esse instrumento incrível e me motivaram a comprar uma nova flauta e me desenvolver ainda mais.
 
 # Flute Parts
 

 - Experiment:
 You can change the variables values to personalize your flute and create awesome combinations!
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
