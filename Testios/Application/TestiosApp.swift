//
//  TestiosApp.swift
//  Testios

import SwiftUI

@main
struct TestiosApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SplashscreenView()
        }
    }
}
