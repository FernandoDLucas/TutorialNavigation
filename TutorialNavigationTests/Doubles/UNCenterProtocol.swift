//
//  UNCenterProtocol.swift
//  TutorialNavigationTests
//
//  Created by Fernando de Lucas da Silva Gomes on 15/07/24.
//

import UserNotifications
@testable import TutorialNavigation

final class UNCenterProtocolMock: UNCenterProtocol {
    
    var statusToReturn: UNAuthorizationStatus = .notDetermined

    private var errorToReturn: Error?

    private var requestAuthorizationCalled: Bool = false
    private var requestedOptions: UNAuthorizationOptions = []

    func authorizationStatus() async -> UNAuthorizationStatus {
        return statusToReturn
    }
    
    func requestAuthorization(options: UNAuthorizationOptions) async throws -> Bool {
        requestAuthorizationCalled = true
        requestedOptions = options
        if let errorToReturn {
            throw errorToReturn
        }
    }

}
