//
//  GameScene.swift
//  Hexagon
//
//  Created by Thijs Nieuwkoop on 25/03/2016.
//  Copyright (c) 2016 Thijs Nieuwkoop. All rights reserved.
//

import SpriteKit
import Darwin

class GameScene: SKScene {
    
    let mainHexagon:SKShapeNode = SKShapeNode()
    let pathHexagon:SKShapeNode = SKShapeNode()
    let player:SKShapeNode = SKShapeNode()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        let mainHexRadius:Double    = Double(80)
        let pathHexRadius:Double    = mainHexRadius*1.1
        let playerSize:Double       = Double(30)
        
        mainHexagon.path = hexagonPath(mainHexRadius)
        mainHexagon.position = CGPoint(x: CGRectGetMidX(frame), y: CGRectGetMidY(frame))
        mainHexagon.strokeColor = UIColor.redColor()
        mainHexagon.lineWidth = 10
        addChild(mainHexagon)
        
        pathHexagon.path = playerHexagonPath(pathHexRadius)
        pathHexagon.position = CGPoint(x: CGRectGetMidX(frame), y: CGRectGetMidY(frame))
        pathHexagon.strokeColor = UIColor.blackColor()
        pathHexagon.lineWidth = 5
        addChild(pathHexagon)
        
        player.path = playerPath(playerSize)
//        player.position = CGPoint(x: 0, y: 0)
        player.strokeColor = UIColor.blackColor()
        player.fillColor = UIColor.blackColor()
        addChild(player)
        
        let action = SKAction.followPath(pathHexagon.path!, asOffset: false, orientToPath: true, speed: CGFloat(300.0))
        player.runAction(SKAction.repeatActionForever(action))
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
