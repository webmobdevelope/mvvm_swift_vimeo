//
//  HomeViewModel.swift
//  Namava
//
//  Created by Behnam on 16.10.22.
//

import Foundation
import RxSwift
class HomeViewModel{
    var publishSubject = PublishSubject<VideoList>()
    func getAccessToken(){
        NetworkManager.shared.call(type: .getAccessToken, callback: {
            item in
            do{
                let accessToken:AccessToken=try AccessToken(data: item)
                Env.saveAssessToken(accessToken: accessToken.accessToken)
            }catch {
                self.publishSubject.onError(MyError(desc: "error parsing data"))
            }
        }, fallback: {
            item in
            self.publishSubject.onError(MyError(desc: item))
        })
    }
    func getVideoList(textQuery:String){
        NetworkManager.shared.call(type: .getVideoList,params: ["query":textQuery], callback: {
            item in
            do{
                let videoList:VideoList=try VideoList(data: item)
                self.publishSubject.onNext(videoList)
            }catch let error{
                print(error)
                self.publishSubject.onError(MyError(desc: "error parsing data"))
            }
        }, fallback: {
            item in
            self.publishSubject.onError(MyError(desc: item))
        })
    }
}
class MyError:Error {
    internal init(desc: String = "unknown") {
        self.desc = desc
    }
    
    var desc:String="unknown"
}
