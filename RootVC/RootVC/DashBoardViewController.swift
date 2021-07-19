//
//  DashBoardViewController.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class DashBoardViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func backToRootView(_ sender: Any) {
        if let keyWindow = ApplicationManager.shared.getKeyWindow() {
            let vc = UIStoryboard.storyBoard(.main).viewController(of: ViewController.self)
            keyWindow.rootViewController = vc.embedInNavigationController()
            keyWindow.makeKeyAndVisible()
        }
    }
    
    
}
