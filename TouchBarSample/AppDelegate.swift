//
//  AppDelegate.swift
//  TouchBarSample
//
//  Created by Kohei Niimi on 2016/11/29.
//  Copyright © 2016年 Kohei Niimi. All rights reserved.
//

import Cocoa

@available(OSX 10.12.2, *)
@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if NSClassFromString("NSTouchBar") != nil {
            if #available(OSX 10.12.2, *) {
                NSApplication.shared().isAutomaticCustomizeTouchBarMenuItemEnabled = true
            } else {
                // Fallback on earlier versions
            }
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

