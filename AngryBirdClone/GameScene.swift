//
//  GameScene.swift
//  AngryBirdClone
//
//  Created by Farih Muhammad on 28/09/2024.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var bird = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        
//        let texture = SKTexture(imageNamed: "bird")
//        bird2 = SKSpriteNode(texture: texture)
//        bird2.position = CGPoint(x: -self.frame.width / 3, y: -self.frame.height / 6 )
//        bird2.size = CGSize(width: self.frame.width / 16, height: self.frame.width / 16)
//        bird2.zPosition = 1
//        self.addChild(bird2)
        
        bird = childNode(withName: "bird") as! SKSpriteNode
        
        let birdTexture = SKTexture(imageNamed: "bird")
        bird.physicsBody = SKPhysicsBody(circleOfRadius: birdTexture.size().height / 16)
        bird.physicsBody?.affectedByGravity = false
        bird.physicsBody?.isDynamic = true
        bird.physicsBody?.mass = 0.5
        
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
