//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct PickerExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: PickerExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/Picker/PickerExampleDemoView.swift"
        )
        .navigationBarTitle("Picker")
    }
}


#if DEBUG
struct PickerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PickerExampleView()
    }
}
#endif
