//
//  BaseViewController.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class BaseViewController: UIViewController {
    fileprivate lazy var titleLabel: UILabel = {
        let label = UILabel()
//        label.font = LatoFont.bold(with: 16)
        label.textColor = .white
        label.textAlignment = .center
//        label.contentInset = UIEdgeInsets(top: -12, left: 0, bottom: 0, right: 0)
        label.text = "T"
        label.heightAnchor.constraint(equalToConstant: 24).isActive = true
        return label
    }()
    
    func embedInNavigationController() -> UINavigationController {
        let navi = UINavigationController(rootViewController: self)
//        navi.isMotionEnabled = true
        navi.navigationBar.isHidden = true
        return navi
    }
    
    func showTitileLabel(title: String) {
        titleLabel.text = title
        navigationController?.navigationItem.titleView = titleLabel
    }
    
    public func showNavigationCustom(isHidden: Bool = false) {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        navigationController?.navigationBar.tintColor = .white
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white,
//                                                                   NSAttributedString.Key.font: LatoFont.bold(with: 16)]
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.isHidden = isHidden
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }

}
