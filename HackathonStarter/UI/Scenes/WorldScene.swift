//
//  WorldScene.swift
//  HackathonStarter
//
//  Created by Clarence Leung on 2/3/18.
//  Copyright © 2018 tattn. All rights reserved.
//

import SpriteKit

class WorldScene: SKScene {
    let willow = SKSpriteNode(imageNamed: "willow")
    let pagoda = SKSpriteNode(imageNamed: "pagoda")
    let daisy  = SKSpriteNode(imageNamed: "daisy")
    let kangaroo  = SKSpriteNode(imageNamed: "kangaroo")
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor(red: 0.7725, green: 0.851, blue: 0.9765, alpha: 1.0)
        
        willow.position = CGPoint(x: size.width * 0.3, y: size.height * 0.5)
        pagoda.position = CGPoint(x: size.width * 0.6, y: size.height * 0.5)
        daisy.position  = CGPoint(x: size.width * 0.7, y: size.height * 0.55)
        kangaroo.position  = CGPoint(x: size.width * 0.9, y: size.height * 0.4)
        
        willow.setScale(1.5)
        pagoda.setScale(1.5)
        daisy.setScale(1.5)
        kangaroo.setScale(1.0)
        
        addChild(willow)
        addChild(pagoda)
        addChild(daisy)
        addChild(kangaroo)
    }
}
