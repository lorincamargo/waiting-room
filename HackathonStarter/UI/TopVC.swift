//
//  TopVC.swift
//  HackathonStarter
//
//  Created by 田中　達也 on 2016/06/30.
//  Copyright © 2016年 tattn. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import SpriteKit
import YLProgressBar

final class TopVC: UIViewController, StoryboardInstantiatable {
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet weak var spriteView: SKView!
    @IBOutlet weak var progressBar: YLProgressBar!
    
    @IBOutlet var sleepGesture: UITapGestureRecognizer!
    @IBOutlet var eatenGesture: UITapGestureRecognizer!
    @IBOutlet var feelsGesture: UITapGestureRecognizer!
    
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    func inject(_ dependency: String) {
        label.text = dependency
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = WorldScene(size: spriteView.bounds.size)
        spriteView.presentScene(scene)
        
        let tintColors = [
            UIColor(red: 33 / 255.0, green: 180 / 255.0, blue: 162 / 255.0, alpha: 1.0),
            UIColor(red: 3 / 255.0, green: 137 / 255.0, blue: 166 / 255.0, alpha: 1.0),
            UIColor(red: 91 / 255.0, green: 63 / 255.0, blue: 150 / 255.0, alpha: 1.0),
            UIColor(red: 87 / 255.0, green: 26 / 255.0, blue: 70 / 255.0, alpha: 1.0),
            UIColor(red: 126 / 255.0, green: 26 / 255.0, blue: 36 / 255.0, alpha: 1.0),
            UIColor(red: 149 / 255.0, green: 37 / 255.0, blue: 36 / 255.0, alpha: 1.0),
            UIColor(red: 228 / 255.0, green: 69 / 255.0, blue: 39 / 255.0, alpha: 1.0),
            UIColor(red: 245 / 255.0, green: 166 / 255.0, blue: 35 / 255.0, alpha: 1.0),
            UIColor(red: 165 / 255.0, green: 202 / 255.0, blue: 60 / 255.0, alpha: 1.0),
            UIColor(red: 202 / 255.0, green: 217 / 255.0, blue: 54 / 255.0, alpha: 1.0),
            UIColor(red: 111 / 255.0, green: 188 / 255.0, blue: 84 / 255.0, alpha: 1.0)
        ]

        progressBar.type = YLProgressBarType.flat
        progressBar.progressTintColors = tintColors
        progressBar.trackTintColor = UIColor(red: 0.7725, green: 0.851, blue: 0.9765, alpha: 1.0)
        progressBar.hideStripes = true
        progressBar.behavior = YLProgressBarBehavior.default
        progressBar.setProgress(12/14, animated: true)
    }
}
