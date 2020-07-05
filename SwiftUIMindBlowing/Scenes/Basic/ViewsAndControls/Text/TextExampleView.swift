//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TextExampleView: View {

    var body: some View {
        ExampleView(
            title: "Text",
            demoContentView: TextExampleDemoView(),
            remoteSourcePath: Constants.repositoryPrefix + "Scenes/Basic/ViewsAndControls/Text/TextExampleDemoView.swift"
        )
    }
}

#if DEBUG
struct TextExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TextExampleView()
    }
}
#endif
