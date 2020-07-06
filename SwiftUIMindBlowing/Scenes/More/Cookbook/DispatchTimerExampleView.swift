//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct DispatchTimerExampleView: View {

    @State var value = 0

    var body: some View {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.value += 1
        }

        return Text("Result: \(value)")
    }
}


struct DispatchTimerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        DispatchTimerExampleView()
    }
}

