//
//  Copyright © 2020 An Tran. All rights reserved.
//

import SwiftUI

struct MainView<Content: View>: View {

    let title: String
    let content: Content

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    var body: some View {
        NavigationView {
            content
                .navigationBarTitle(title)
        }
        .ifOS(.iOS) { view -> AnyView in
            let isLandscape = UIApplication.shared.windows.first?.windowScene?.interfaceOrientation.isLandscape ?? false
            if UIDevice.current.userInterfaceIdiom == .phone {
                return AnyView(view.navigationViewStyle(StackNavigationViewStyle()))
            } else if isLandscape {
                return AnyView(view)
            }
            return AnyView(view.navigationViewStyle(DoubleColumnNavigationViewStyle()).padding(0.25))
        }
    }
}
