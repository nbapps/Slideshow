//
//  SlideshowAutoScroll.swift
//  
//
//  Created by HumorousGhost on 2022/7/28.
//

import SwiftUI

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public enum SlideshowAutoScroll {
    case inactive
    case active(TimeInterval)
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension SlideshowAutoScroll {
    
    /// default active
    public static var defaultActive: Self {
        return .active(5)
    }
    
    /// Is the view auto-scrolling
    var isActive: Bool {
        switch self {
        case .inactive:
            return false
        case .active(let timeInterval):
            return timeInterval > 0
        }
    }
    
    /// Duration of automatic scrolling
    var interval: TimeInterval {
        switch self {
        case .inactive:
            return 0
        case .active(let timeInterval):
            return timeInterval
        }
    }
}
