//
//  Service.swift
//  PeacockCoreVideoSDKCodingChallenge
//
//  Created by Daniel Spady on 2021-02-04.
//

import Foundation

protocol SunServiceProtocol {
    
}

protocol MoonServiceProtocol {
    
}

class UniverseService {
    
}

class SpaceService  {
    let endpoint: SunServiceProtocol

    init(endpoint: SunServiceProtocol) {
        self.endpoint = endpoint
    }

}
