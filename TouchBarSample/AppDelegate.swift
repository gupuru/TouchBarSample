//
//  AppDelegate.swift
//  TouchBarSample
//
//  Created by Kohei Niimi on 2016/11/29.
//  Copyright © 2016年 Kohei Niimi. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if NSClassFromString("NSTouchBar") != nil {
            NSApplication.shared().isAutomaticCustomizeTouchBarMenuItemEnabled = true
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

