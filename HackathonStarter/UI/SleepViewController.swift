//
//  SleepViewController.swift
//  HackathonStarter
//
//  Created by Clarence Leung on 2/4/18.
//  Copyright © 2018 tattn. All rights reserved.
//

import Foundation
import UIKit

final class SleepViewController : UIViewController, StoryboardInstantiatable {
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitButton(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
