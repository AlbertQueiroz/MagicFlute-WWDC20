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
Mas será que uma criança surda, passaria por essa mesma experiência? Eu gostaria que sim.


# How it works?

Há diferentes formas interagir com o deficiente auditivo através de seus outros sentidos, como visão e tato, por exemplo. Por isso, quando tocado, o instrumento gera uma vibração diferente de acordo com a nota que é tocada. Isso permite que o deficiente auditivo seja capaz de identificar o som que está emitindo. Além disso é possível identificar a nota a partir da ASL, que é mostrada sempre que o instrumento é tocado.


# Where it came from?

Recentemente, já na faculdade, ingressei em uma disciplina de linguagens brasileira de sinais, o que me fez simpatizar com o público surdo e entender um pouco mais sobre sua realidade. E foi então que conheci o projeto sons do silencio, localizado na cidade de Recife, criado por um surdo que se apaixonou por saxofone e resolveu se dedicar a ensinar outros jovens a tocar.

Então pensei, porquê não levar essa experiência para outras pessoas através de seus iPads?

 - Note:
 You still can personalize your flute and create awesome combinations!
*/

let headColor: HeadColor = /*#-editable-code color*/.normal/*#-end-editable-code*/
let bodyColor: BodyColor = /*#-editable-code color*/.normal/*#-end-editable-code*/
let footColor: FootColor = /*#-editable-code color*/.normal/*#-end-editable-code*/

editFluteStyle(headColor: /*#-editable-code color*/headColor/*#-end-editable-code*/, bodyColor: /*#-editable-code color*/bodyColor/*#-end-editable-code*/, footColor: /*#-editable-code color*/footColor/*#-end-editable-code*/)
