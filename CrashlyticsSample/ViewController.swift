//
//  ViewController.swift
//  CrashlyticsSample
//
//  Created by satoshi.marumoto on 2020/04/13.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let crashLog = CrashlyticsLog()

    override func viewDidLoad() {
        super.viewDidLoad()
        // クラッシュボタン
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        button.backgroundColor = .red
        button.setTitle("Crash", for: [])
        button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
        
        setCrashlyticsLogs()
    }
    
    @IBAction func buttonTapped() {
        // イベントログ(セレクトコンテンツ)
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
            AnalyticsParameterItemID: "id-001",
            AnalyticsParameterItemName: "登録ボタン",
            AnalyticsParameterContentType: "コンテンツタイプ"
        ])
    }
    
    @IBAction func buttonTapped2() {
        // イベントログ(汎用)
        Analytics.logEvent("share_image", parameters: [
            "name": "シェア" as NSObject,
            "full_text": "シェア" as NSObject
        ])
    }
    
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        // 強制的にクラッシュ
        fatalError()
    }
    
    func setCrashlyticsLogs() {
        Crashlytics.crashlytics().log("クラッシュしました")
        crashLog.setCrashID(id: "1")
        crashLog.setCrashUdid(udid: "2")
        crashLog.setCrashAppVer(appVer: "ver1.1")
        crashLog.setCrashClassName(className: String(describing: type(of: self)))
        crashLog.setCrashIsLogin(isLogin: true)
    }

}

