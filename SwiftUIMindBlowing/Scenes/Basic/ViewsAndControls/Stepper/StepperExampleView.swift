//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct StepperExampleView: View {

    var body: some View {
        ExampleView(
            title: "Stepper",
            demoContentView: StepperExampleDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/Stepper/StepperExampleDemoView.swift"
        )
    }
}



struct StepperExampleView_Previews: PreviewProvider {
    static var previews: some View {
        StepperExampleView()
    }
}

