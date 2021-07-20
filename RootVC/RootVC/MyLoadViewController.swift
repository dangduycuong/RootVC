//
//  MyLoadViewController.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class MyLoadViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.registerCell(LoadTableViewCell.self)
        tableView.register(LoadTableViewCell.nib(), forCellReuseIdentifier: LoadTableViewCell.identifier())
    }

}

extension MyLoadViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LoadTableViewCell.identifier(), for: indexPath) as! LoadTableViewCell
        cell.timeLoadLabel.isHidden = false
        return cell
    }
    
    
}
