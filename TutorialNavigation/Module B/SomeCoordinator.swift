//
//  SomeCoordinator.swift
//  TutorialNavigation
//
//  Created by Fernando de Lucas da Silva Gomes on 27/07/24.
//  
//  LinkedIn: https://www.linkedin.com/in/fernandodelucas/
//

class SomeCoordinator: SomeCoordinatorProtocol {

    private let compass: any NavigationCompassProtocol

    init(compass: any NavigationCompassProtocol) {
        self.compass = compass
    }

    func navigate(for island: Island) {
        let view = IslandView(island: island)
        compass.navigate(for: view)
    }

}
