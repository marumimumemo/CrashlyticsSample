//
//  File.swift
//  CrashlyticsSample
//
//  Created by satoshi.marumoto on 2020/05/08.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import Foundation
import Firebase

class CrashlyticsLog {
    
    func setCrashUserID() {
        Crashlytics.crashlytics().setUserID("ユーザID")
    }
    
    func setCrashStringValue(forKey: String, value: String) {
        Crashlytics.crashlytics().setCustomValue(value, forKey: forKey)
    }
    
    func setCrashIntValue(forKey: String, value: Int) {
        Crashlytics.crashlytics().setCustomValue(value, forKey: forKey)
    }
    
    func setCrashBoolValue(forKey: String, value: Bool) {
        Crashlytics.crashlytics().setCustomValue(true, forKey: forKey)
    }
    
    // クラッシュしたID
    func setCrashID(id: String) {
        if !id.isEmpty {
            Crashlytics.crashlytics().setCustomValue(id, forKey: "id: ")
        }
    }
    
    // クラッシュしたクラス名
    func setCrashClassName(className: String) {
        if !className.isEmpty {
            Crashlytics.crashlytics().setCustomValue("className: " + className, forKey: "className: ")
        }
    }
    
    // クラッシュしたudid
    func setCrashUdid(udid: String) {
        if !udid.isEmpty {
            Crashlytics.crashlytics().setUserID("udid: " + udid)
        }
    }
    
    // クラッシュしたappVer
    func setCrashAppVer(appVer: String) {
        if !appVer.isEmpty {
            Crashlytics.crashlytics().setCustomValue("appVer: " + appVer, forKey: "appVer: ")
        }
    }
    
    // クラッシュ時のログイン状態
    func setCrashIsLogin(isLogin: Bool = false) {
        
        var login = ""
        if isLogin == true {
            login = "ログイン済"
        } else {
            login = "未ログイン"
        }
        Crashlytics.crashlytics().setCustomValue(login, forKey: "isLogin: ")
    }
    
}
