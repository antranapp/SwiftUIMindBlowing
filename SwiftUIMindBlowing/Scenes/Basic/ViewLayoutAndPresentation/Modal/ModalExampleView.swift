//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ModalExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: ModalExampleDemoView(),
            remoteSourcePath: "Basic/ViewLayoutAndPresentation/Modal/ModalExampleDemoView.swift"
        )
        .navigationBarTitle("Modal")
    }
}



struct ModalExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ModalExampleView()
    }
}

