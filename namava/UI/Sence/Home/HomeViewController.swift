//
//  HomeViewController.swift
//  Namava
//
//  Created by Behnam on 16.10.22.
//

import Foundation
import UIKit
import RxSwift
import Toast_Swift
class HomeViewController:UIViewController {
    var viewModel:HomeViewModel?=nil
    var subscribe:Disposable?=nil
    var coordinator:HomeCoordinator?=nil
    var baseView:VideoListView={
        let view = VideoListView()
        view.translatesAutoresizingMaskIntoConstraints=false
        return view
    }()
    override func viewDidLoad() {
        
        view.addSubview(baseView)
        NSLayoutConstraint.activate([
            baseView.topAnchor.constraint(equalTo: view.topAnchor),
            baseView.leftAnchor.constraint(equalTo: view.leftAnchor),
            baseView.rightAnchor.constraint(equalTo: view.rightAnchor),
            baseView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        baseView.layout()
        
        
        baseView.searchQuery = {text in
            self.view.makeToast("Loading search results,Please wait...")
            self.viewModel?.getVideoList(textQuery: text)
        }
        baseView.videoItemSelected = {data in
            self.coordinator?.goToVideoDetail(data: data)
        }
        
        subscribe=viewModel?.publishSubject.subscribe(onNext: {data in
            self.baseView.setPhotoListData(data: data)
            self.baseView.hideEmptyView(hide:!(data.data?.isEmpty ?? true))
        }, onError: {error in
            self.view.makeToast("Error = \((error as? MyError)?.desc)")
            print((error as? MyError)?.desc)
        }, onCompleted: {
            
        }, onDisposed: {
            
        })
        
        
        if let _ = Env.loadAssessToken(){
            print("token was taken before")
        }
        else{
            viewModel?.getAccessToken()
        }
        
    }

}
