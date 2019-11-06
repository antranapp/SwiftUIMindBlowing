//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ScrollViewExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: ScrollViewExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/ScrollView/ScrollViewExampleDemoView.swift"
            )
            .navigationBarTitle("ScrollView")
    }
}

#if DEBUG
struct ScrollViewExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExampleView()
    }
}
#endif
