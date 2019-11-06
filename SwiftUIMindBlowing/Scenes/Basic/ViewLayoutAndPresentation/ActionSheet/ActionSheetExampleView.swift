//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ActionSheetExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: ActionSheetExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewLayoutAndPresentation/ActionSheet/ActionSheetExampleDemoView.swift"
        )
        .navigationBarTitle("ActionSheet")
    }
}

#if DEBUG
struct ActionSheetExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetExampleView()
    }
}
#endif
