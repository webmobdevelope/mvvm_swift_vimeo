//
//  HomeCoordinator.swift
//  Namava
//
//  Created by Behnam on 16.10.22.
//
import UIKit
import Foundation

class HomeCoordinator:Coordinator {
    ///navigation controler of  Home
    var presenter: UINavigationController
    /// Home  view model
    let viewModel = HomeViewModel()
    /// Home  view controler
    let viewController = HomeViewController()
    
    /**creates new instance of HomeCoordinator class
     
- parameter navigationController: an instance of UINavigationController
- returns:new instance of HomeCoordinator
     */
    init(with navigationController: UINavigationController) {
        self.presenter = navigationController
    }
    
    /// for make this coordinator controller of screen
    func start() {
        viewController.coordinator = self
        viewController.viewModel = viewModel
        navigate(to: viewController, with: .push)
    }
    func goToVideoDetail(data:Datum) {
        let videoDetailCordinator=VideoDetailCoordinator(with: presenter,data: data)
        videoDetailCordinator.start()
    }
    /// to popViewControler and back to last screen
    func goBack()  {
        presenter.popViewController(animated: true)
    }
}
