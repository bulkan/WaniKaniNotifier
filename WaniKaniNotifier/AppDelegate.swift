//
//  AppDelegate.swift


import Cocoa
import SwiftUI
import Preferences

extension PreferencePane.Identifier {
    static let general = Identifier("general")
}


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet private var window: NSWindow!

    lazy var preferencesWindowController = PreferencesWindowController(
        preferencePanes: [
            GeneralPreferenceViewController()
        ],
        style: .segmentedControl
    )

    func applicationDidFinishLaunching(_ notification: Notification) {}

    @IBOutlet weak var menu: NSMenu?
    @IBOutlet weak var firstMenuItem: NSMenuItem?
    
    var statusItem: NSStatusItem?
    
    fileprivate func getReviews() {
        let randomNumber = Int.random(in: 1...20)
        print("Number: \(randomNumber)")
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem?.button?.title = "wk"
        let itemImage = NSImage(named: "wk")
        itemImage?.isTemplate = true
        statusItem?.button?.image = itemImage
        
        if let menu = menu {
            statusItem?.menu = menu
        }
        
        self.getReviews()
        Timer.scheduledTimer(withTimeInterval: 30, repeats: true) { timer in
            self.getReviews()
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @IBAction func showPreferences(_ sender: Any) {
        preferencesWindowController.show()

//        let storyboard = NSStoryboard(name: "Main", bundle: nil)
//        guard let vc = storyboard.instantiateController(withIdentifier: .init(stringLiteral: "preferencesID")) as? ViewController else { return }
//
//        let window = NSWindow(contentViewController: vc)
//        window.makeKeyAndOrderFront(nil)
        print("showPreferences")
    }


}
