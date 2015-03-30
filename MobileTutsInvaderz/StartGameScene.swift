import UIKit
import SpriteKit
class StartGameScene: SKScene {
   
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.blackColor()
        let invaderText = PulsatingText(fontNamed: "ChalkDuster")
        invaderText.setTextFontSizeAndPulsate("INVADERZ", theFontSize: 50)
        invaderText.position = CGPointMake(size.width/2,size.height/2 + 200)
        addChild(invaderText)
        let starField = SKEmitterNode(fileNamed: "StarField")
        starField.position = CGPointMake(size.width/2,size.height/2)
        starField.zPosition = -1000
        addChild(starField)
        let startGameButton = SKSpriteNode(imageNamed: "newgamebtn")
        startGameButton.position = CGPointMake(size.width/2,size.height/2 - 100)
        startGameButton.name = "startgame"
        addChild(startGameButton)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch: AnyObject in touches {
            let touchLocation = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(touchLocation)
            if(touchedNode.name == "startgame"){
                let gameOverScene = GameScene(size: size)
                gameOverScene.scaleMode = scaleMode
                let transitionType = SKTransition.flipHorizontalWithDuration(1.0)
                view?.presentScene(gameOverScene,transition: transitionType)
            }
        }
    }
}
