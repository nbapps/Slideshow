//
//  View+ReceiveTimer.swift
//  
//
//  Created by HumorousGhost on 2022/7/28.
//

import SwiftUI
import Combine

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
typealias TimePublisher = Publishers.Autoconnect<Timer.TimerPublisher>

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension View {
    func onReceive(timer: TimePublisher?, perform action: @escaping (Timer.TimerPublisher.Output) -> Void) -> some View {
        Group {
            if let timer = timer {
                self.onReceive(timer) { value in
                    action(value)
                }
            } else {
                self
            }
        }
    }
}
