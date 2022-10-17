//
//  FileListView.swift
//  Namava
//
//  Created by Behnam on 16.10.22.
//

import Foundation
import UIKit
import RxSwift
class VideoListView:UIView{
    
    var searchQuery:(String) -> Void={_ in }
    var videoItemSelected:(Datum) -> Void={_ in }
    var videoListData:VideoList?=nil
    
    var txtSearch:UITextField = {
        let view=UITextField()
        view.backgroundColor = .white
        view.clipsToBounds=true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth=1
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.cornerRadius=20
        view.placeholder = "search"
        
        let imageView = UIImageView(frame: CGRect(x: 5, y: 0, width: 40, height: 20))
        let wrapView = UIView(frame: CGRect(x: 5, y: 0, width: 40, height: 20))

        let image = UIImage(named: "search")
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        wrapView.addSubview(imageView)
        view.leftView = wrapView
        view.leftViewMode = .always
        view.returnKeyType = .go
        return view
    }()
    var emptyView:UIView = {
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        
        let txtEmpty=UITextView()
        txtEmpty.translatesAutoresizingMaskIntoConstraints=false
        txtEmpty.text = "for showing the video, please search a subject"
        txtEmpty.backgroundColor = .clear
        txtEmpty.textAlignment = .center
        view.addSubview(txtEmpty)
        
        let imgview=UIImageView()
        imgview.translatesAutoresizingMaskIntoConstraints=false
        imgview.layer.cornerRadius=30
        imgview.clipsToBounds=true
        imgview.backgroundColor = .white
        let image = UIImage(named: "heart")
        imgview.contentMode = .scaleAspectFit
        imgview.image = image
        view.addSubview(imgview)
        NSLayoutConstraint.activate([
            
            imgview.topAnchor.constraint(equalTo: view.topAnchor,constant: 10),
            imgview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imgview.widthAnchor.constraint(equalToConstant: 60),
            imgview.heightAnchor.constraint(equalToConstant: 60),
            
            txtEmpty.topAnchor.constraint(equalTo: imgview.bottomAnchor,constant: 10),
            txtEmpty.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            txtEmpty.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            txtEmpty.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        
        return view
    }()
    var videoList:UICollectionView = {
        let view=UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    func layout(){
        backgroundColor = UIColor(red: 0.92, green: 0.92, blue: 0.92    , alpha: 1)
        addSubview(videoList)
        addSubview(txtSearch)
        addSubview(emptyView)
        txtSearch.delegate = self
        NSLayoutConstraint.activate([
            
            txtSearch.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
            txtSearch.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 50),
            txtSearch.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -50),
            txtSearch.heightAnchor.constraint(equalToConstant: 40),
            
            videoList.topAnchor.constraint(equalTo: txtSearch.bottomAnchor,constant: 10),
            videoList.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            videoList.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
            videoList.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            emptyView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 50),
            emptyView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -50),
            emptyView.centerYAnchor.constraint(equalTo: centerYAnchor),
            emptyView.heightAnchor.constraint(equalToConstant: 200),
            
        ])
        
        
        videoList.dataSource = self
        videoList.delegate = self
        videoList.register(MyCell.self, forCellWithReuseIdentifier: "mcells")
    }
    func setPhotoListData(data:VideoList){
        self.videoListData=data
        videoList.reloadData()
    }
    func hideEmptyView(hide:Bool){
        emptyView.isHidden=hide
    }
}
extension VideoListView:UITextFieldDelegate {
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text=textField.text {
            searchQuery(text)
            textField.resignFirstResponder()
        }
        return false
    }
}
extension VideoListView:UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return videoListData?.data?.count ?? 0;
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let nbCol:CGFloat = 1
        
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(nbCol - 1))
        let size = (collectionView.bounds.width - totalSpace) / CGFloat(nbCol)
        return CGSize(width: size, height: size/3)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {

        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mcells", for: indexPath)

        if cell is MyCell {
            let mcell=(cell as! MyCell)
            mcell.mdescription.text = videoListData?.data?[indexPath.row].datumDescription ?? "with out description"
            mcell.image.image=nil
            mcell.image.tag=NetworkImageMannager.getNextTag()
            if let photo=videoListData?.data?[indexPath.row].pictures?.baseLink{
                NetworkImageMannager.setImageViewFromUrl(imageView:  mcell.image, url:photo ,tag:  mcell.image.tag)
            }
            mcell.layout()
        }
        return cell
    }
}
extension VideoListView:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            guard let cell = collectionView.cellForItem(at: indexPath) as? MyCell else {
                return
            }
        if let data = videoListData?.data?[indexPath.row]{
            videoItemSelected(data)
        }
            // if you have the current cell then flip
            
            // you can save it for reflip on didscroll
    }
}
class MyCell:UICollectionViewCell {
    var image:UIImageView = {
        let view=UIImageView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    var mdescription:UITextView = {
        let view=UITextView()
        view.isEditable=false
        view.isUserInteractionEnabled=false
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    var isLayouted=false
    func layout(){
        if(isLayouted){
            return
        }
        contentView.addSubview(image)
        contentView.addSubview(mdescription)
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: contentView.topAnchor),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 5),
            image.trailingAnchor.constraint(equalTo: contentView.centerXAnchor),
            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            mdescription.topAnchor.constraint(equalTo: contentView.topAnchor),
            mdescription.leadingAnchor.constraint(equalTo: contentView.centerXAnchor , constant: 5),
            mdescription.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            mdescription.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
            isLayouted=true
    }
}
