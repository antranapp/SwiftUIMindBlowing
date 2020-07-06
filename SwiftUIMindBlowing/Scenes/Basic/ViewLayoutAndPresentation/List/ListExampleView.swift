//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ListExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: ListExampleDemoView(),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/List/ListExampleDemoView.swift"
            )
            .navigationBarTitle("List")
    }
}



struct ListExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListExampleView()
    }
}

