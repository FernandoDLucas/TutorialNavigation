//
//  IslandView.swift
//  TutorialNavigation
//
//  Created by Fernando de Lucas da Silva Gomes on 27/07/24.
//  
//  LinkedIn: https://www.linkedin.com/in/fernandodelucas/
//

import SwiftUI

struct IslandView: View {
    
    let island: Island

    init(island: Island) {
        self.island = island
    }

    var body: some View {
        VStack {
            Image(island.image)
                .resizable()
                .scaledToFit()
            Text(island.name)
        }
    }
}
