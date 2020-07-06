//
//  Copyright © 2020 An Tran. All rights reserved.
//

import SwiftUI

enum OperatingSystem {
    case macOS
    case macCatalyst
    case iOS
    case tvOS
    case watchOS

    #if os(macOS)
    static let current = macOS
    #elseif os(iOS)
        #if targetEnvironment(macCatalyst)
        static let current = macCatalyst
        #else
        static let current = iOS
        #endif
    #elseif os(tvOS)
    static let current = tvOS
    #elseif os(watchOS)
    static let current = watchOS
    #else
    #error("Unsupported platform")
    #endif
}

extension View {

    // Conditionally apply midifiers depending on a condition
    @ViewBuilder
    func `if`<Content: View>(
        _ condition: Bool,
        modifier: @escaping (Self) -> Content
    ) -> some View {
        if condition {
            modifier(self)
        } else {
            self
        }
    }

    @ViewBuilder
    func ifOS<Content: View>(
        _ operatingSystems: OperatingSystem...,
        modifier: @escaping (Self) -> Content
    ) -> some View {
        if operatingSystems.contains(OperatingSystem.current) {
            modifier(self)
        } else {
            self
        }
    }
}
