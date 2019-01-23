//
//  AppDelegate.swift
//  BleClient-resolved-iOS
//
//  Created by Stijn on 23/01/2019.
//  Copyright © 2019 BleClient. All rights reserved.
//

import UIKit
import BleClientSwift
import os

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    lazy var bleClient: BleClientBridge = BleClientBridge()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        os_log(.info, "💁🏻‍♂️ %@ with bleClient %@", "\(#function)", "\(bleClient)")
        
        // this is just an example, the Bleclient can be used for something but it is not used now.
        
        return true
    }


}

