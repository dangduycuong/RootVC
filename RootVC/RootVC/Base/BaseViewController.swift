//
//  BaseViewController.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class BaseViewController: UIViewController {
    func embedInNavigationController() -> UINavigationController {
        let navi = UINavigationController(rootViewController: self)
//        navi.isMotionEnabled = true
        navi.navigationBar.isHidden = true
        return navi
    }
}
