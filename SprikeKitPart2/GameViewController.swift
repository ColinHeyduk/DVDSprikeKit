//
//  GameViewController.swift
//  SprikeKitPart2
//
//  Created by  on 3/23/22.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController
{

    @IBOutlet weak var DVDimageVew: UIImageView!
   
//    var blackDVD = UIImage.image
//    var navyDVD = UIImage.image
//    var salmonDVD = UIImage.image
//    var yellowDVD = UIImage.image
    
    
    override func viewDidLoad()
    {
        
        
        
        super.viewDidLoad()
        
        
        
        if let view = self.view as! SKView?
        {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene")
            {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFit
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool
    {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone
        {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
}
