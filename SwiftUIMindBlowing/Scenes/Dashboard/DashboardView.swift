//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        TabView {
            BasicContentView()
                .tabItem {
                    Image("ios-egg")
                    Text("Basic")
                }
                .tag(0)

            AnimationContentView()
                .tabItem {
                    Image("ios-wand")
                    Text("Animation")
                }
                .tag(1)

            MindBlowingContentView()
                .tabItem {
                    Image("ios-rocket")
                    Text("MindBlowing")
                }
                .tag(2)

            FullProjectsContentView()
                .tabItem {
                    Image("ios-journal")
                    Text("Projects")
                }
                .tag(3)

            MoreContentView()
                .tabItem {
                    Image("ios-beer")
                    Text("More")
                }
                .tag(4)
        }
    }
}

struct DasboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
