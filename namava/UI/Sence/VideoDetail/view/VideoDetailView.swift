//
//  FileListView.swift
//  Namava
//
//  Created by Behnam on 16.10.22.
//

import Foundation
import UIKit
class VideoDetailView:UIView{
    var playButtonnTapped:()->Void = {}
    var videoListData:VideoList?=nil
    var txtTitle:UILabel = {
        let view=UILabel()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.text = "title"
        view.backgroundColor = .clear
        view.textAlignment = .center
        view.numberOfLines=0
        return view
    }()
    var timeTitle:UILabel = {
        let view=UILabel()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.text = "time"
        view.backgroundColor = .clear
        view.textAlignment = .center
        view.backgroundColor = .black
        view.textColor = .white
        view.numberOfLines=1
        return view
    }()
    var txtDescription:UILabel = {
        let view=UILabel()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.text = "desc"
        view.numberOfLines=0
        view.backgroundColor = .clear
        return view
    }()
    var image:UIImageView = {
        let view=UIImageView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        view.isUserInteractionEnabled=true
        return view
    }()
    
    var playbutton:UIImageView = {
        let view=UIImageView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image=UIImage(named: "play-button")
        return view
    }()
    var comments:IconDescView  = {
        let view = IconDescView()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.imgview.image=UIImage(named: "comment")
        return view
    }()
    var likes:IconDescView  = {
        let view = IconDescView()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.imgview.image=UIImage(named: "like")
        return view
    }()
    var views:IconDescView  = {
        let view = IconDescView()
        view.translatesAutoresizingMaskIntoConstraints =  false
        view.imgview.image=UIImage(named: "views")
        return view
    }()
    func layout(){
        backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92    , alpha: 1)
        addSubview(views)
        addSubview(likes)
        addSubview(comments)
        addSubview(image)
        addSubview(txtTitle)
        addSubview(txtDescription)
        addSubview(timeTitle)
        addSubview(playbutton)
        NSLayoutConstraint.activate([
            txtTitle.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
            txtTitle.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,constant: 10),
            txtTitle.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,constant: -10),
            
            image.topAnchor.constraint(equalTo: txtTitle.bottomAnchor,constant: 10),
            image.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,constant: 10),
            image.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,constant: -10),
            image.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor,multiplier: 0.5),
            
            timeTitle.bottomAnchor.constraint(equalTo: image.bottomAnchor,constant: -10),
            timeTitle.trailingAnchor.constraint(equalTo: image.trailingAnchor,constant: -10),
           
            
            
            playbutton.centerXAnchor.constraint(equalTo: image.centerXAnchor,constant: -10),
            playbutton.centerYAnchor.constraint(equalTo: image.centerYAnchor,constant: -10),
            playbutton.widthAnchor.constraint(equalToConstant: 90),
            playbutton.heightAnchor.constraint(equalToConstant: 90),
            
            likes.topAnchor.constraint(equalTo: image.bottomAnchor,constant: 10),
            likes.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            likes.widthAnchor.constraint(equalToConstant: 40),
            likes.heightAnchor.constraint(equalToConstant: 60),
            
            views.centerYAnchor.constraint(equalTo: likes.centerYAnchor),
            views.trailingAnchor.constraint(equalTo: likes.leadingAnchor,constant: -100),
            views.widthAnchor.constraint(equalTo: likes.widthAnchor),
            views.heightAnchor.constraint(equalTo: likes.heightAnchor),
            
            
            comments.centerYAnchor.constraint(equalTo: likes.centerYAnchor),
            comments.leadingAnchor.constraint(equalTo: likes.trailingAnchor,constant: 100),
            comments.widthAnchor.constraint(equalTo: likes.widthAnchor),
            comments.heightAnchor.constraint(equalTo: likes.heightAnchor),
            
            
            txtDescription.topAnchor.constraint(equalTo: likes.bottomAnchor,constant: 10),
            txtDescription.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,constant: 10),
            txtDescription.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,constant: -10),
            
        ])
        
        views.layout()
        comments.layout()
        likes.layout()
        
        txtTitle.sizeToFit()
        txtDescription.sizeToFit()
        
        image.addGestureRecognizer(UITapGestureRecognizer(target: self, action:  #selector(itemsTaped(sender:))))
        
    }
    @objc func itemsTaped(sender : UITapGestureRecognizer){
        switch sender.view {
        case image:
            playButtonnTapped()
            break
        default: break
        }
    }
    func setTitle(title:String){
        self.txtTitle.text=title
    }
    func setDescription(desc:String){
        self.txtDescription.text=desc
    }
    func setLikeCount(likes:Int){
        self.likes.title.text = "\(likes)"
    }
    func setCommentCount(comments:Int){
        self.comments.title.text = "\(comments)"
    }
    func setViewCount(views:Int){
        self.views.title.text = "\(views)"
    }
    func setImage(url:String){
            NetworkImageMannager.setImageViewFromUrl(imageView:  image, url:url ,tag:  image.tag)
        
    }
    func setTime(time:Double){
        timeTitle.text = toHourMinute(style: .positional, time: time)//.abbreviated
    }
    func toHourMinute(style: DateComponentsFormatter.UnitsStyle,time:Double) -> String {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second, .nanosecond]
        formatter.unitsStyle = style
        return formatter.string(from: time) ?? ""
      }
}
