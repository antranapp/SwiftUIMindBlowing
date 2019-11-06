//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ButtonExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: ButtonExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/Button/ButtonExampleView.swift"
        )
        .navigationBarTitle("Button")
    }
}


#if DEBUG
struct ButtonExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExampleView()
    }
}
#endif
