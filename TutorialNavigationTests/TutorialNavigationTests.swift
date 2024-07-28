//
//  TutorialNavigationTests.swift
//  TutorialNavigationTests
//
//  Created by Fernando de Lucas da Silva Gomes on 27/06/24.
//

import SwiftUI
import XCTest
@testable import TutorialNavigation

final class NavigationCompassProtocolSpy: NavigationCompassProtocol{
    
    private (set) var contentShowed: (any View)?
    
    func navigate<Content>(for content: Content) where Content : View {
        self.contentShowed = content
    }

}

final class SomeCoordinatorTests: XCTestCase {
    
    private let compassSpy = NavigationCompassProtocolSpy()
    private lazy var sut = SomeCoordinator(compass: compassSpy)

    func test_navigate_shouldCallNavigatePassingTheSameIsland() {
        let expectedValue: Island = .init(name: "TestIsland")

        sut.navigate(for: expectedValue)

        let presentedView = compassSpy.contentShowed as? IslandView
        let actualValue = presentedView?.island
        XCTAssertEqual(
            actualValue,
            expectedValue
        )
    }

}

