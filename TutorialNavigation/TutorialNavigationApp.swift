//
//  TutorialNavigationApp.swift
//  TutorialNavigation
//
//  Created by Fernando de Lucas da Silva Gomes on 27/06/24.
//

import SwiftUI

@main
struct TutorialNavigationApp: App {
    
    var navigationPath = NavigationCompass()

    var body: some Scene {
        WindowGroup {
            ContentView(compass: navigationPath)
        }
    }

}
