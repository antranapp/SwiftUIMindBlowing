//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct StepperExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: StepperExampleDemoView(),
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/Stepper/StepperExampleDemoView.swift"
        )
        .navigationBarTitle("Stepper")
    }
}


#if DEBUG
struct StepperExampleView_Previews: PreviewProvider {
    static var previews: some View {
        StepperExampleView()
    }
}
#endif
