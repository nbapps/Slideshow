//
//  UserDefaults+AnimatedOffset.swift
//  
//
//  Created by HumorousGhost on 2022/7/28.
//

import Foundation

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
internal extension UserDefaults {
    private struct Keys {
        static let isAnimatedOffset = "Slideshow+isAnimatedOffset"
    }
    
    static var isAnimatedOffset: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.isAnimatedOffset)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.isAnimatedOffset)
        }
    }
    
}
