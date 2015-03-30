import UIKit
import SpriteKit

class PulsatingText : SKLabelNode {
 
    
    func setTextFontSizeAndPulsate(theText: String, theFontSize: CGFloat){
        self.text = theText;
        self.fontSize = theFontSize
        let scaleSequence = SKAction.sequence([SKAction.scaleTo(2, duration: 1),SKAction.scaleTo(1.0, duration:1)])
        let scaleForever = SKAction.repeatActionForever(scaleSequence)
        self.runAction(scaleForever)
    }
}

