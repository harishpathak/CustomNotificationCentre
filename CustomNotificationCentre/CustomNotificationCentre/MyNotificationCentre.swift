//
//  MyNotificationCentre.swift
//  CustomNotificationCentre
//
//  Created by Harish on 21/07/23.
//

import Foundation

public protocol MyObserver {
    func receivedNotification(name: String, data: Any?)
}

public protocol MyObservable {
    func addMyObserver(observer: MyObserver, name: String)
    func removeMyObserver(name: String)
    func postMyNotification(name: String, data: Any?)
}


public class MyNotificationCentre: MyObservable {
    private var mappings: [String: [MyObserver]] = [:]
    
    static let shared = MyNotificationCentre()
    
    private init() { }
    
    public func addMyObserver(observer: MyObserver, name: String) {
        if mappings[name] != nil {
            mappings[name]?.append(observer)
        } else {
            mappings[name] = [observer]
        }
    }
        
    
    public func removeMyObserver(name: String) {
        mappings[name] = nil
    }
    
    public func postMyNotification(name: String, data: Any?) {
        
        guard let observers: [MyObserver] = mappings[name] else { return }
        
        for observer in observers {
            observer.receivedNotification(name: name, data: data)
        }
    }
    
}
