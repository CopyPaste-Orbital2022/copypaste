import Cocoa
import FlutterMacOS
import KeyboardShortcuts
import SwiftUI

@available(macOS 10.15, *)
@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
    private var statusItem: NSStatusItem!
    private var channel: FlutterMethodChannel!
    private var button: NSStatusBarButton?
    private var preferencesWindow: NSWindow?


    override func applicationDidFinishLaunching(_ notification: Notification) {
        
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        if let button = statusItem.button {
            self.button = button
            self.button!.title = "􀉃"
        }
        setUpMenu()
        KeyboardShortcuts.onKeyDown(for: .showApp) {
            self.mainFlutterWindow.makeKeyAndOrderFront(nil)
        }
    }
    
    override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return false
    }
    
    func setUpMenu() {
        let menu = NSMenu(title: "SketchPaste Drawings")
        menu.addItem(NSMenuItem(title: "Reload", action: #selector(requestLoadDrawings), keyEquivalent: "R"))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(withTitle: "Settings", action: #selector(openSettings), keyEquivalent: ",")
        menu.addItem(NSMenuItem.separator())
        menu.addItem(withTitle: "Quit", action: #selector(quitApp), keyEquivalent: "Q")
        self.statusItem!.menu = menu
    }
    
    func methodChannelHandler(methodCall: FlutterMethodCall,  result: @escaping FlutterResult) {
        switch (methodCall.method) {
        case "updateDrawingsList":
            guard let params = methodCall.arguments as? [[String:Any]] else {
                result(FlutterError(code: "0", message: "Incompatible Parameter Types", details: nil))
                return;
            }
            updateDrawingsList(params, result: result)
        default:
            result(FlutterError(code: "0", message: "Unindentified method name: \(methodCall.method)", details: nil))
        }
    }
    
    func updateDrawingsList(_ params: [[String : Any]], result: @escaping FlutterResult) {
        var index = 1;
        for param in params {
            guard let id = param["id"] as? Int else {
                result(FlutterError(code: "0", message: "id type is not int", details: nil))
                return;
            }
            guard let name = param["name"] as? String else {
                result(FlutterError(code: "0", message: "name type is not int", details: nil))
                return;
            }

            let menuItem: NSMenuItem = NSMenuItem(title: name, action: #selector(requestLoadDrawingToClipboard(sender: )), keyEquivalent: "\(index)")
            menuItem.tag = id
            if let menu = self.statusItem.menu {
                menu.insertItem(menuItem, at: menu.items.count - 4)
            }
            index += 1
        }
    }
    
    @objc func requestLoadDrawingToClipboard(sender: NSMenuItem) {
        self.channel.invokeMethod("loadDrawingToClioboard", arguments: sender.tag)
    }

    
    @objc func requestLoadDrawings() {
        channel.invokeMethod("loadDrawings", arguments: nil);
    }
    
    @objc func openSettings() {
        if (preferencesWindow == nil) {
            let preferencesView = PreferencesView()
            preferencesWindow = NSWindow(
                contentRect: NSRect(x: 20, y: 20, width: 480, height: 300),
                styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
                backing: .buffered,
                defer: false)
            preferencesWindow!.center()
            preferencesWindow!.setFrameAutosaveName("Preferences")
            preferencesWindow!.isReleasedWhenClosed = false
            preferencesWindow!.contentView = NSHostingView(rootView: preferencesView)
        }
        preferencesWindow?.makeKeyAndOrderFront(nil)
    }
    
    @objc func quitApp() {
        exit(0)
    }
}
