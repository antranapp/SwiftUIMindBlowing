//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct NavigationViewExampleView: View {

    var body: some View {
        NavigationView {
            ExampleView(
                demoContentView: Text("Example for NavigationView"),
                remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/NavigationView/NavigationViewExampleView.swift"
            )
            .navigationBarTitle("NavigationView")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NavigationViewExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewExampleView()
    }
}
