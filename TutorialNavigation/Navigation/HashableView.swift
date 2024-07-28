//
//  HashableView.swift
//  TutorialNavigation
//
//  Created by Fernando de Lucas da Silva Gomes on 27/07/24.
//  
//  LinkedIn: https://www.linkedin.com/in/fernandodelucas/
//

import SwiftUI

struct HashableView: Hashable {
    
    private let id = UUID()
    let content: AnyView?
    
    init(content: AnyView?) {
        self.content = content
    }
    
    static func == (lhs: HashableView, rhs: HashableView) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
