//
//  NavigationRoot.swift
//  TutorialNavigation
//
//  Created by Fernando de Lucas da Silva Gomes on 27/07/24.
//  
//  LinkedIn: https://www.linkedin.com/in/fernandodelucas/
//

import SwiftUI

struct NavigationRoot<Content>: View where Content: View {
    
    @State private var compass: NavigationCompass
    private let root: Content
    
    init(compass: NavigationCompass, root: () -> Content) {
        self.compass = compass
        self.root = root()
    }

    var body: some View {
        NavigationStack(path: $compass.navigationPath) {
            root
                .navigationDestination(for: HashableView.self) { hashableView in
                    hashableView.content
                }
        }
    }

}
