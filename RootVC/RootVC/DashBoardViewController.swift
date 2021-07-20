//
//  DashBoardViewController.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class DashBoardViewController: BaseViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    fileprivate lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font = LatoFont.bold(with: 16)
        label.textAlignment = .center
        label.textColor = .white
//        label.contentInset = UIEdgeInsets(top: -12, left: 0, bottom: 0, right: 0)
        label.text = "Account"
        label.heightAnchor.constraint(equalToConstant: 24).isActive = true
        return label
    }()
    
    // Size of Item
    var isButtonHidden: Bool = true
    let widthScreen = UIScreen.main.bounds.width
    let numberOfItems: CGFloat = 2
    let padding: CGFloat = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(DashBoardCollectionView.nib(), forCellWithReuseIdentifier: DashBoardCollectionView.identifier())
        collectionView.isScrollEnabled = false
//        showTitileLabel(title: "DashBoard")
        setupUI()
    }
    
    private func setupUI() {
        navigationItem.titleView = titleLabel
    }
    
    @IBAction func backToRootView(_ sender: Any) {
        if let keyWindow = ApplicationManager.shared.getKeyWindow() {
            let vc = UIStoryboard.storyBoard(.main).viewController(of: ViewController.self)
            keyWindow.rootViewController = vc.embedInNavigationController()
            keyWindow.makeKeyAndVisible()
        }
    }
    
    
}

extension DashBoardViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DashBoardItemType.all.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DashBoardCollectionView.identifier(), for: indexPath) as! DashBoardCollectionView
        cell.label.text = DashBoardItemType.all[indexPath.row].title
        cell.image.image = UIImage(named: DashBoardItemType.all[indexPath.row].imageName)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = UIStoryboard.storyBoard(.main).viewController(of: AboutViewController.self)
        vc.title = DashBoardItemType.all[indexPath.row].title
        vc.modalPresentationStyle = .overFullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
}


extension DashBoardViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            let itemSize = (widthScreen - padding * 2 - padding * (numberOfItems - 1))/numberOfItems
//        let itemSize = (widthScreen - (numberOfItems + 1) * padding) / numberOfItems
        let itemSize = (widthScreen - 64) / numberOfItems
        return CGSize(width: itemSize, height: itemSize * 0.6)
        }
        
        // Spacing Between Each Edge Of Section
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        }
        
        // Spacing Between Rows Of Section
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 24
        }
        
        //    Spacing Between Colums Of Section
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return padding
        }
    }
