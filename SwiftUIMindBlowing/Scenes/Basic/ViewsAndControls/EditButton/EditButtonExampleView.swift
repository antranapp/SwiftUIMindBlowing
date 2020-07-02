//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct EditButtonExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: EditButtonExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/EditButton/EditButtonExampleDemoView.swift"
        )
        .navigationBarTitle("Edit Button")
    }
}

#if DEBUG
struct EditButtonExampleView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonExampleView()
    }
}
#endif
