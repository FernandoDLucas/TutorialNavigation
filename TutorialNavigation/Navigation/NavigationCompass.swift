//
//  NavigationCompass.swift
//  TutorialNavigation
//
//  Created by Fernando de Lucas da Silva Gomes on 27/07/24.
//  
//  LinkedIn: https://www.linkedin.com/in/fernandodelucas/
//

import SwiftUI

public protocol NavigationCompassProtocol {
    func navigate<Content: View>(for: Content)
}

@Observable
final class NavigationCompass: NavigationCompassProtocol {

    var navigationPath = NavigationPath()

    func navigate<Content>(for view: Content) where Content : View {
        let anyView = AnyView(view)
        let hashableView = HashableView(content: anyView)
        navigationPath.append(hashableView)
    }
}
