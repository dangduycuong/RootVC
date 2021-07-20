//
//  AboutViewController.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class AboutViewController: BaseViewController {
    fileprivate lazy var titleLabel: UILabel = {
        let label = UILabel()
//        label.font = LatoFont.bold(with: 16)
        label.textColor = .white
        label.textAlignment = .center
//        label.contentInset = UIEdgeInsets(top: -12, left: 0, bottom: 0, right: 0)
        label.text = "Account"
        label.heightAnchor.constraint(equalToConstant: 24).isActive = true
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI() {
        let parent = view!
        parent.backgroundColor = .yellow
//        navigationItem.title = "NOPL"
        
        let barButtonItemAppearance = UIBarButtonItem.appearance()
        barButtonItemAppearance.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear], for: .normal)
    }

}
