//
//  Copyright © 2020 An Tran. All rights reserved.
//

import SwiftUI

struct RootView: View {

    @EnvironmentObject var store: AppStore

    @ViewBuilder
    var body: some View {
        switch store.state.scenario {
            case .default:
                AnyView(DashboardView().environmentObject(store))
            case .fullproject_twitter:
                AnyView(Text("This is a scenario"))
        }
    }
}

struct RootViews_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
