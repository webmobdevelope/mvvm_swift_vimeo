//
//  Env.swift
//  namava
//
//  Created by Behnam on 16.10.22.
//

import Foundation
class Env{
    public static var AccessToken:String? = nil
    public static func saveAssessToken(accessToken:String?){
        
        Env.AccessToken=accessToken
        let preferences = UserDefaults.standard

        let key = "AccessToken"
        if let accessToken = accessToken {
            preferences.set(accessToken, forKey: key)
        }
        else{
            preferences.removeObject(forKey: key)
        }
        
    }
    public static func loadAssessToken()->String?{
        let preferences = UserDefaults.standard

        let key = "AccessToken"
        if preferences.object(forKey: key) == nil {
            Env.AccessToken=nil
        } else {
            Env.AccessToken = preferences.string(forKey: key)
        }
        return Env.AccessToken
    }
}
