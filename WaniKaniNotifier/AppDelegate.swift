//
//  AppDelegate.swift


import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

//    @IBOutlet weak var menu: NSMenu?
//    @IBOutlet weak var firstMenuItem: NSMenuItem?
    var statusItem: NSStatusItem?

    override func awakeFromNib() {
        super.awakeFromNib()

         statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
         statusItem?.button?.title = "WaniKani Notifier"
         
         let itemImage = NSImage(named: "wk")
         itemImage?.isTemplate = true
         statusItem?.button?.image = itemImage
         
//         if let menu = menu {
//             statusItem?.menu = menu
//             menu.delegate = self
//         }
//
//         if let item = firstMenuItem {
//             dateTimeView = DateTimeView(frame: NSRect(x: 0.0, y: 0.0, width: 250.0, height: 170.0))
//             item.view = dateTimeView
//         }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

