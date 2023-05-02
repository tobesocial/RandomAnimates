//
//  DataStore.swift
//  RandomAnimates
//
//  Created by Дмитрий Федоров on 02.05.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let title = [
        "slideUp",
        "slideDown",
        "zoomIn",
        "fall",
        "flipX",
        "flipY",
        "wobble",
        "squeeze",
        "shake",
        "pop"
    ]
    
    let curve = [
        "easeIn",
        "easeOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack"
    ]
    
    private init() {}
}
