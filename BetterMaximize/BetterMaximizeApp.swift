//
//  BetterMaximizeApp.swift
//  BetterMaximize
//
//  Created by Aryan Prince on 1/21/24.
//

import SwiftUI

@main
struct BetterMaximizeApp: App {
    @State var currentStatus: Bool = false
    
    var body: some Scene {
        MenuBarExtra("Some title key", systemImage: "plus.app") {
            Text("Current status:")
            if (currentStatus) {
                Text("Enabled")
            }
            else {
                Text("Disabled")
            }
            
            Divider()
            
            Button("Enable") {
                currentStatus = true
            }
            .keyboardShortcut("e")
            
            Button("Disable") {
                currentStatus = false
            }
            .keyboardShortcut("d")
            
            Divider()
            
            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }
}
