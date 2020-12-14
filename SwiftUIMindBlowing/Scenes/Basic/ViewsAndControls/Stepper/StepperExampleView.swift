//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct StepperExampleView: View {

    var body: some View {
        DemoView(
            title: "Stepper",
            remoteSourcePath: "Basic/ViewsAndControls/Stepper/StepperExampleDemoView.swift"
        ) {
            StepperExampleDemoView()
        }
    }
}



struct StepperExampleView_Previews: PreviewProvider {
    static var previews: some View {
        StepperExampleView()
    }
}

