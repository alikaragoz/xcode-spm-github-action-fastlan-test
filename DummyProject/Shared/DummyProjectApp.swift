//
//  DummyProjectApp.swift
//  Shared
//
//  Created by Ali Karagoz on 17/05/2022.
//

import SwiftUI
import Get
import Logging
import Sentry
import Amplitude
import Apollo
import AppboyKit

@main
struct DummyProjectApp: App {
    let foobar = "barfoo"
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
