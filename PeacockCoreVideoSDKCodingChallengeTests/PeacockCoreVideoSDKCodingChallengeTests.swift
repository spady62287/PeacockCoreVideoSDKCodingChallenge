//
//  PeacockCoreVideoSDKCodingChallengeTests.swift
//  PeacockCoreVideoSDKCodingChallengeTests
//
//  Created by Daniel Spady on 2021-02-04.
//

import XCTest
@testable import PeacockCoreVideoSDKCodingChallenge

class PeacockCoreVideoSDKCodingChallengeTests: XCTestCase {
    
    // Given
    var sut: DependencyInjectionContainer!

    override func setUpWithError() throws {
        sut = DependencyInjectionContainer()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    // Test Dependency Container Adds object to Generic Service
    func testContainerRegister() {
        // When
        sut.register(type: MoonServiceProtocol.self) { _ in
            return UniverseService()
        }
        
        // Then
        XCTAssertEqual(sut.genService.count, 1)
    }
    
    // Test Dependency Container Resolves Generic Type
    func testContainerResolve() {
        // When
        sut.register(type: MoonServiceProtocol.self) { container in
            return SpaceService(endpoint: container.resolve(type: SunServiceProtocol.self)!)
        }

        // Then
        XCTAssertEqual(sut.genService.count, 1)
    }
    
}
