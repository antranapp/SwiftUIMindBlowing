//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct EditButtonExampleView: View {

    var body: some View {
        ExampleView(
            title: "Edit Button",
            demoContentView: EditButtonExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/EditButton/EditButtonExampleDemoView.swift"
        )
    }
}


struct EditButtonExampleView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonExampleView()
    }
}

