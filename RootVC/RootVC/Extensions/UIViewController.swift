//
//  UIViewController.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

//
// MARK: - Default Implementation for Identifier
extension UIViewController: Identifier {
    
    /// ID View
    static var identifierView: String {
        get {
            return String(describing: self)
        }
    }
    
    /// XIB
    static func xib() -> UINib? {
        return UINib(nibName: self.identifierView, bundle: nil)
    }
}


import Foundation
import UIKit

//
// MARK: - Identifier
// Easily to get ViewID and XIB file
protocol Identifier {
    
    /// ID view
    static var identifierView: String {get}

    /// XIB - init XIB from identifierView
    static func xib() -> UINib?
}
