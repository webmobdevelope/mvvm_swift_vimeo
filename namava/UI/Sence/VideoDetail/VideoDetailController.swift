//
//  VideoDetailViewController.swift
//  Namava
//
//  Created by Behnam on 16.10.22.
//

import Foundation
import UIKit
import AVKit
import HCVimeoVideoExtractor
import Toast_Swift
class VideoDetailViewController:UIViewController {
    var viewModel:VideoDetailViewModel?=nil
    var coordinator:VideoDetailCoordinator?=nil
    var baseView:VideoDetailView={
        let view = VideoDetailView()
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
        
        
        
        if let data=viewModel?.data {
            
            baseView.playButtonnTapped = {
                self.playVideo(link: data.link ?? "")
            }
            
            baseView.setTitle(title: data.name ?? "" )
            baseView.setImage(url: data.pictures?.baseLink ?? "")
            baseView.setDescription(desc: data.datumDescription ?? "")
            baseView.setLikeCount(likes: data.metadata?.connections?.likes?.total ?? 0)
            baseView.setCommentCount(comments: data.metadata?.connections?.comments?.total ?? 0)
            baseView.setViewCount(views: data.metadata?.connections?.credits?.total ?? 0)
            baseView.setTime(time: Double (data.duration ?? 0))
        }
    }
    
    func playVideo(link:String){
        let url = URL(string: link)!
        HCVimeoVideoExtractor.fetchVideoURLFrom(url: url, completion: { ( video:HCVimeoVideo?, error:Error?) -> Void in
            if let err = error {
                DispatchQueue.main.async {
                self.view.makeToast("Error = \(err.localizedDescription)")
                }
               print("Error = \(err.localizedDescription)")
               return
            }

            guard let vid = video else {
                DispatchQueue.main.async {
                self.view.makeToast("Invalid video object")
                }
                print("Invalid video object")
                return
            }

            print("Title = \(vid.title), url = \(vid.videoURL), thumbnail = \(vid.thumbnailURL)")
            if !vid.videoURL.isEmpty {
                if let videoURL = vid.videoURL.first {
                DispatchQueue.main.async {
                    let player = AVPlayer(url: videoURL.value)
                let playerController = AVPlayerViewController()
                playerController.player = player
                self.present(playerController, animated: true) {
                    player.play()
                }
                let value = UIInterfaceOrientation.landscapeLeft.rawValue
                UIDevice.current.setValue(value, forKey: "orientation")
                }
            }
            }
            else{
                self.view.makeToast("this video couldn't be play,please select other videos")
            }
        })
    }
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
       
        let value = UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
       
   }

   override func viewWillDisappear(_ animated: Bool) {
       super.viewWillDisappear(animated)
       
   }
}
