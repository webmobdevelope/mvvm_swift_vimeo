//
//  AppCoordinator.swift
//  Namava
//
//  Created by Behnam on 16.10.22.
//

import Foundation

import Foundation
import UIKit
class AppCoordinator: Coordinator  {
    // MARK: - Properties
    var presenter: UINavigationController
    private var window: UIWindow
    static var eventsRegistered=false
    init(in window: UIWindow) {
        self.presenter = UINavigationController()
//        self.presenter.setNavigationBarHidden(true, animated: true)
        self.window = window
        self.window.rootViewController = presenter
        self.window.makeKeyAndVisible()
        if !AppCoordinator.eventsRegistered {
            AppCoordinator.eventsRegistered = true
        }
    }
    
    func start() {
        toHomeCoordinator()
        
    }
    var homeCoordinator:HomeCoordinator?
    private func toHomeCoordinator() {
       
        if let homeCoordinator=homeCoordinator{
            homeCoordinator.start()
            return
        }
        homeCoordinator = HomeCoordinator(with: presenter)
        homeCoordinator!.start()
    }
    func finish() {
    }
    
}
