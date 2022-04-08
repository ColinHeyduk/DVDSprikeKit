//
//  GameScene.swift
//  SprikeKitPart2
//
//  Created by  on 3/23/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene
{
    
    var DVDimage = SKSpriteNode()
    
    
    
    override func didMove(to view: SKView)
    {
        let borderBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        borderBody.friction = 0
        self.physicsBody = borderBody
        physicsWorld.gravity = CGVector(dx: 0, dy: -9.8)
        
        DVDimage = childNode(withName: "DVDimage") as! SKSpriteNode
       
        

        
        
    }
   
}
