//
//  ContentView.swift
//  TutorialNavigation
//
//  Created by Fernando de Lucas da Silva Gomes on 27/07/24.
//  
//  LinkedIn: https://www.linkedin.com/in/fernandodelucas/
//

import SwiftUI

struct ContentView: View {

    private var islands: [Island] = [.init(name: "Hawaii"), .init(name: "Fiji"), .init(name: "Bora Bora")]

    private let compass: NavigationCompass
    private let viewModel: ContentViewModel

    init(
        compass: NavigationCompass
    ) {
        self.compass = compass
        let coordinator = SomeCoordinator(compass: compass)
        viewModel = .init(coordinator: coordinator)
    }

    var body: some View {
        NavigationRoot(compass: compass) {
            ForEach(islands) { island in
                Button(island.name) {
                    viewModel.didTapOnIsland(island)
                }
            }
        }
    }

}
