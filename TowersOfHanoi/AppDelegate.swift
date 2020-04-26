//
//  AppDelegate.swift
//  TowersOfHanoi
//
//  Created by Emil Vaklinov on 23/04/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var gameViewController: GameViewController?
    
      private func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?)
      -> Bool {
          window = UIWindow(frame: UIScreen.main.bounds)
          window?.backgroundColor = UIColor.white
      window?.makeKeyAndVisible()
      gameViewController = GameViewController()
      window?.rootViewController = gameViewController
      return true
    }

      func applicationWillResignActive(_ application: UIApplication) {
//      gameViewController?.dotPressed()
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

