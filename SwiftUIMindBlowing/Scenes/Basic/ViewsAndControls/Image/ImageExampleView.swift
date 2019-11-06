//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ImageExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: ImageExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/Image/ImageExampleDemoView.swift"
        )
        .navigationBarTitle("Image")
    }
}

#if DEBUG
struct ImageExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ImageExampleView()
    }
}
#endif
