//
//  AppDelegate.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    enum TwitterClientType {
        case SOLID
        case NotSOLID
    }

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Twitter Example - SRP, OCP, DIP
        
//        let clientType: TwitterClientType = .SOLID
//        let client: Client = (clientType == .SOLID) ? SOLIDClient() : NotSOLIDClient()
//        
//        client.startScheduler()

        // Square/Rectangle Example - LSP
        
//        let rect1 = NotSOLIDRectangle()
//        rect1.setWidth(3.0)
//        rect1.setHeight(7.0)
//        
//        let square1 = NotSOLIDSquare()
//        square1.setWidth(3.0)
//        square1.setHeight(7.0)
//        
//        print("[Not SOLID] Rectangle: (width: \(rect1.width()), height: \(rect1.height())), area: \(rect1.area())")
//        print("[Not SOLID] Square: (width: \(square1.width()), height: \(square1.height())), area: \(square1.area())")
//        
//        let rect2 = SOLIDRectangle(width: 3.0, height: 7.0)
//        let square2 = SOLIDSquare(side: 3.0)
//        
//        print("[SOLID] Rectangle: (width: \(rect2.width), height: \(rect2.height)), area: \(rect2.area())")
//        print("[SOLID] Square: (width: \(square2.side), height: \(square2.side)), area: \(square2.area())")
        
        // ATM Example - ISP
        
//        let atmUI = NotSOLIDConsoleATM()
//        let depositTransaction1 = NotSOLIDDepositTransaction(ui: atmUI)
//        
//        depositTransaction1.execute()
//        
//        let depositUI = SOLIDDepositUI()
//        let depositTransaction2 = SOLIDDepositTransaction(ui: depositUI)
//        
//        depositTransaction2.execute()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

