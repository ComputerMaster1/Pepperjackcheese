//
//  GameScene.swift
//  pepperjackcheese
//
//  Created by MacLab on 10/27/16.
//  Copyright (c) 2016 chagrinschools. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Tap to start"
        myLabel.fontSize = 45
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        let scene = GamePlay(size:self.size)
        let skView = self.view! as SKView
        scene.scaleMode = .ResizeFill
        scene.size=skView.bounds.size
        skView.presentScene(scene)    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
