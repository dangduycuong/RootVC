//
//  ApplicationManager.swift
//  RootVC
//
//  Created by MACOS on 7/19/21.
//

import UIKit

class ApplicationManager {
    static let shared = ApplicationManager()
    func getKeyWindow() -> UIWindow? {
        return UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
    }
}
