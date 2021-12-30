//
//  iColorApp.swift
//  iColor
//
//  Created by Alexander Bowser on 12/30/21.
//

import SwiftUI

@main
struct iColorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(redGuess: 0, greenGuess: 0, blueGuess: 0)
        }
    }
}
