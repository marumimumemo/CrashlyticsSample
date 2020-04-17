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

    override func viewDidLoad() {
        super.viewDidLoad()
//        _ = [0, 1][2]
    }
    
    @IBAction func buttonTapped() {
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
            AnalyticsParameterItemID: "id-001",
            AnalyticsParameterItemName: "登録ボタン",
            AnalyticsParameterContentType: "コンテンツタイプ"
        ])
    }
    
    @IBAction func buttonTapped2() {
        Analytics.logEvent("share_image", parameters: [
            "name": "シェア" as NSObject,
            "full_text": "シェア" as NSObject
        ])
    }

}

