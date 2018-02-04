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

        progressBar.type = YLProgressBarType.flat
        progressBar.indicatorTextDisplayMode = YLProgressBarIndicatorTextDisplayMode.progress
        progressBar.trackTintColor = UIColor(red: 0.7725, green: 0.851, blue: 0.9765, alpha: 1.0)
        progressBar.progressTintColor = UIColor(red: 0.0471, green: 0.0, blue: 0.9765, alpha: 1.0)
        progressBar.hideStripes = true
        progressBar.behavior = YLProgressBarBehavior.indeterminate
        progressBar.setProgress(12/14, animated: true)
    }
}
