//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct StepperExampleDemoView: View {

    @State var stepper1Value = 0
    @State var stepper5Value = 0

    var body: some View {
        VStack(alignment: .leading) {
            Stepper(value: $stepper1Value) {
                Text("Step 1: \(self.stepper1Value)")
            }
            Stepper(value: $stepper5Value, step: 5) {
                Text("Step 5: \(self.stepper5Value)")
            }
        }
        .navigationBarTitle(Text("Stepper"))
        .padding()
    }
}
