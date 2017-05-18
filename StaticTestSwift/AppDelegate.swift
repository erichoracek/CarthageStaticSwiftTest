//
//  AppDelegate.swift
//  StaticTestSwift
//
//  Created by Eric Horacek on 5/18/17.
//  Copyright © 2017 Eric Horacek. All rights reserved.
//

import UIKit
import ReactiveSwift
import Result

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let signalProducer: SignalProducer<String, NoError> = SignalProducer(value: "It works!")

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        print(signalProducer.first()!.value!)

        return true
    }
}
