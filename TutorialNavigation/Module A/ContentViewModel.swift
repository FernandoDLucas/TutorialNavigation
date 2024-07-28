//
//  ContentViewModel.swift
//  TutorialNavigation
//
//  Created by Fernando de Lucas da Silva Gomes on 27/07/24.
//  
//  LinkedIn: https://www.linkedin.com/in/fernandodelucas/
//

final class ContentViewModel {

    private let coordinator: SomeCoordinatorProtocol

    init(coordinator: SomeCoordinatorProtocol) {
        self.coordinator = coordinator
    }

    func didTapOnIsland(_ island: Island) {
        coordinator.navigate(for: island)
    }
 
}
