//
//  DashBoardCollectionView.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

enum DashBoardItemType {
    case account
    case scoreCard
    case tat
    case feedback
    case about
    
    static let all = [account, scoreCard, tat, feedback, about]
    
    var title: String? {
        switch self {
        case .account:
            return "Account"
        case .scoreCard:
            return "Scorecard"
        case .tat:
            return "TAT"
        case .feedback:
            return "Feedback"
        case .about:
            return "About"
        }
    }
    
    var imageName: String {
        switch self {
        case .account:
            return "people"
        case .scoreCard:
            return "bar_chart_24px"
        case .tat:
            return "tat"
        case .feedback:
            return "message-one"
        case .about:
            return "align-text-both-one"
        }
    }
}
class DashBoardCollectionView: UICollectionViewCell {
    
    @IBOutlet weak var subContentView: UIView!
    let image = UIImageView()
    let label = UILabel()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
        
        
    }
    
    static func identifier() -> String {
        return "DashBoardCollectionView"
    }
    
    static func nib() -> UINib {
        return UINib(nibName: DashBoardCollectionView.identifier(), bundle: nil)
    }
    
    private func setupUI() {
        subContentView.layer.cornerRadius = 8
        subContentView.layer.shadowColor = UIColor.gray.cgColor
        subContentView.layer.shadowOpacity = 0.5
        
        subContentView.layer.shadowOffset.width = 3.5
        subContentView.layer.shadowOffset.height = 3.5
        subContentView.layer.shadowRadius = 5
        
        subContentView.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: subContentView.centerXAnchor, constant: 0).isActive = true
        image.topAnchor.constraint(equalTo: subContentView.topAnchor, constant: 4).isActive = true
        image.widthAnchor.constraint(equalToConstant: 48).isActive = true
        image.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        setupLabel()
    }
    
    private func setupLabel() {
        
        label.textColor = UIColor(red: 0.314, green: 0.337, blue: 0.369, alpha: 1)
        label.font = UIFont(name: "Lato-Regular", size: 16)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.25
        label.textAlignment = .center
        
        label.attributedText = NSMutableAttributedString(string: "Account", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        
        let parent = self.subContentView!
        
        parent.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        label.centerXAnchor.constraint(equalTo: parent.centerXAnchor, constant: 0).isActive = true
        label.bottomAnchor.constraint(equalTo: parent.bottomAnchor, constant: 0).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        subContentView.layer.shadowRadius = 3
    }
}
