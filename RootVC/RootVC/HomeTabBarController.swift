//
//  HomeTabBarController.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class HomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideBackButton()
    }
    
    private func hideBackButton() {
        navigationItem.leftBarButtonItem = nil
        navigationItem.leftBarButtonItems = []
        navigationItem.hidesBackButton = true
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    

}
