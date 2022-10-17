//
//  VideoDetailCoordinator.swift
//  Namava
//
//  Created by Behnam on 16.10.22.
//
import UIKit
import Foundation

class VideoDetailCoordinator:Coordinator {
    ///navigation controler of  VideoDetail
    var presenter: UINavigationController
    /// VideoDetail  view model
    let viewModel = VideoDetailViewModel()
    /// VideoDetail  view controler
    let viewController = VideoDetailViewController()
    
    let data:Datum
    /**creates new instance of VideoDetailCoordinator class
     
- parameter navigationController: an instance of UINavigationController
- returns:new instance of VideoDetailCoordinator
     */
    init(with navigationController: UINavigationController,data:Datum) {
        self.presenter = navigationController
        self.data=data
    }
    
    /// for make this coordinator controller of screen
    func start() {
        viewController.coordinator = self
        viewController.viewModel = viewModel
        viewModel.data=self.data
        navigate(to: viewController, with: .push)
    }
    /// to popViewControler and back to last screen
    func goBack()  {
        presenter.popViewController(animated: true)
    }
}
