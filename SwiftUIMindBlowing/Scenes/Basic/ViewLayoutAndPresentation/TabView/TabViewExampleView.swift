//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TabViewExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: Text("Example for TabView"),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/TabView/TabViewExampleView.swift"
        )
        .navigationBarTitle("TabView")
    }
}


struct TabViewExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExampleView()
    }
}

