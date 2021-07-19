//
//  ViewController.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("ViewController is deInit")
    }

    @IBAction func loginClickedButton(_ sender: Any) {
        let vc = UIStoryboard.storyBoard(.main).viewController(of: HomeTabBarController.self)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

