//
//  Identifier.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

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
