//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct PickerExampleView: View {

    var body: some View {
        ExampleView(
            title: "Picker",
            demoContentView: PickerExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/Picker/PickerExampleDemoView.swift"
        )
    }
}



struct PickerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PickerExampleView()
    }
}

