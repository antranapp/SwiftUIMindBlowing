//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ButtonExampleView: View {

    var body: some View {
        ExampleView(
            title: "Button",
            demoContentView: ButtonExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/Button/ButtonExampleDemoView.swift"
        )
    }
}



struct ButtonExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExampleView()
    }
}

