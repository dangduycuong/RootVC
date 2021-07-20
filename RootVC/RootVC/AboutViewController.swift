//
//  AboutViewController.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class AboutViewController: BaseViewController {
    @IBOutlet weak var radiusLabel: UILabel!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var opacityLabel: UILabel!
    @IBOutlet weak var widthLabel: UILabel!
    @IBOutlet weak var heigtLabel: UILabel!
    
    @IBOutlet weak var radiusSlider: UISlider!
    
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
        shadowView.layer.cornerRadius = 16
        shadowView.layer.shadowColor = UIColor.blue.cgColor
        shadowView.layer.shadowOpacity = 0.5
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowOffset.width = 0
        shadowView.layer.shadowOffset.height = 0
        shadowView.layer.shadowRadius = 5
        
        radiusSlider.value = 5
        
        let barButtonItemAppearance = UIBarButtonItem.appearance()
        barButtonItemAppearance.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear], for: .normal)
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        switch sender.tag {
        case 0:
            shadowView.layer.shadowRadius = CGFloat(sender.value)
            radiusLabel.text = "\(sender.value)"
        case 1:
            shadowView.layer.opacity = sender.value
            opacityLabel.text = "\(sender.value)"
        case 2:
            shadowView.layer.shadowOffset.width = CGFloat(sender.value)
            widthLabel.text = "\(sender.value)"
        case 3:
            shadowView.layer.shadowOffset.height = CGFloat(sender.value)
            heigtLabel.text = "\(sender.value)"
        default:
            break
        }
        
    }
    

}
