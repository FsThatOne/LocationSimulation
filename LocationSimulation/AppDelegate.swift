//
//  AppDelegate.swift
//  LocationSimulation
//
//  Created by 王正一 on 2017/4/20.
//  Copyright © 2017年 FsThatOne. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // 使用方法:
        // 打开  http://lbs.amap.com/console/show/picker 选取需要定位的坐标,获得的lat和lng,使用下面的算法获取location,打印出来,然后在bundle的PengRun.gpx文件中修改,运行即可.
        let location = LocationTransform.gcj2wgs(gcjLat: 40.008593, gcjLng: 116.487706)
        print(location)
        //鹏润大厦: (wgsLat: 39.957836160616019, wgsLng: 116.46030578410404)
        //恒基伟业大厦: (wgsLat: 40.007330919062198, wgsLng: 116.48164007343351)
        return true
        // PS:如果程序运行起来后拔掉数据线,则虚拟定位可保留(会影响几乎所有app的定位),重启手机方可恢复;如果手动终止程序运行则立即恢复.
        // 原理:Scheme中修改虚拟定位
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
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

