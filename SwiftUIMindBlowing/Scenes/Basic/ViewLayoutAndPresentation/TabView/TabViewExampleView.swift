//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TabViewExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: Text("Example for TabView"),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/TabView/TabViewExampleView.swift"
        )
        .navigationBarTitle("TabView")
    }
}

#if DEBUG
struct TabViewExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExampleView()
    }
}
#endif
