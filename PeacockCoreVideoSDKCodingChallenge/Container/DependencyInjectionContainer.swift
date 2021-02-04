//
//  DependencyInjectionContainer.swift
//  PeacockCoreVideoSDKCodingChallenge
//
//  Created by Daniel Spady on 2021-02-04.
//

import Foundation

typealias DependencyClosure = (DependencyInjectionContainer) -> AnyObject

protocol DependencyInjectionContainerProtocol {
    func register<GenericService>(type: GenericService.Type, dependencyClosure: @escaping DependencyClosure)
    func resolve<GenericService>(type: GenericService.Type) -> GenericService?
}

class DependencyInjectionContainer : DependencyInjectionContainerProtocol {
    
    var genService = Dictionary<String, DependencyClosure>()
    
    func register<GenericService>(type: GenericService.Type, dependencyClosure: @escaping DependencyClosure) {
        genService["\(type)"] = dependencyClosure
    }
    
    func resolve<GenericService>(type: GenericService.Type) -> GenericService? {
        return genService["\(type)"]?(self) as? GenericService
    }
    
}
