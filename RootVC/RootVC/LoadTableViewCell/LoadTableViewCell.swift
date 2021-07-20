//
//  LoadTableViewCell.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class LoadTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var numStopLabel: UILabel!
    @IBOutlet private weak var idLoadLabel: UILabel!
    @IBOutlet weak var timeLoadLabel: UILabel!
    @IBOutlet private weak var statusView: UIView!
    @IBOutlet private weak var containerView: UIView!
    
    private var shadowLayer: CAShapeLayer!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    
    private func setupUI() {
//        numStopLabel.font = LatoFont.regular(with: 14)
//        timeLoadLabel.font = LatoFont.regular(with: 14)
//        idLoadLabel.font = LatoFont.regular(with: 18)
        
        containerView.layer.masksToBounds = true
        containerView.layer.cornerRadius = 8
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        containerView.layer.shadowRadius = 3
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        self.containerView.backgroundColor = highlighted ? .gray : .white
    }
    
    static func identifier() -> String {
        return "LoadTableViewCell"
    }
    
    static func nib() -> UINib {
        return UINib(nibName: LoadTableViewCell.identifier(), bundle: nil)
    }
    
//    func fillData(loadModel: LoadModel) {
//        // TODO: - pass load
//        timeLoadLabel.isHidden = true
//        
//        idLoadLabel.text = DriverDocString.MyLoads.load + "# " + "\(loadModel.loadNumber ?? DriverDocString.Common.noAvaible)"
//        if let numStr = loadModel.tripCount, let num = Int(numStr) {
//            numStopLabel.text = numStr + ((num > 1) ? " stops" : " stop")
//        } else {
//            numStopLabel.text = ""
//        }
//        
//        // Status color
//        switch loadModel.loadStatus {
//        case .pending:
//            statusView.backgroundColor = AppColor.Status.pending
//        case .active:
//            statusView.backgroundColor = AppColor.Status.active
//        case .incomplete:
//            statusView.backgroundColor = AppColor.Status.incomplete
//        case .complete:
//            statusView.backgroundColor = AppColor.Status.complete
//        }
//    }
    
}

