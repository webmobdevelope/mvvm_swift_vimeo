//
//  IconDescView.swift
//  namava
//
//  Created by Behnam on 17.10.22.
//

import Foundation
import UIKit
class IconDescView:UIView{
    
    let title:UILabel={
    let view=UILabel()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.text = "1"
        view.backgroundColor = .clear
        view.textAlignment = .center
        return view
    }()
    let imgview:UIImageView={
        let view=UIImageView()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.contentMode = .scaleAspectFit
        return view
    }()
    func layout(){
        addSubview(imgview)
        addSubview(title)
        translatesAutoresizingMaskIntoConstraints=false
    NSLayoutConstraint.activate([
        
        imgview.topAnchor.constraint(equalTo: topAnchor,constant: 5),
        imgview.centerXAnchor.constraint(equalTo: centerXAnchor),
        imgview.widthAnchor.constraint(equalToConstant: 30),
        imgview.heightAnchor.constraint(equalToConstant: 30),
        
        title.topAnchor.constraint(equalTo: imgview.bottomAnchor,constant: 5),
        title.leadingAnchor.constraint(equalTo: leadingAnchor),
        title.trailingAnchor.constraint(equalTo: trailingAnchor),
        title.bottomAnchor.constraint(equalTo: bottomAnchor)
    ])
    }
}
