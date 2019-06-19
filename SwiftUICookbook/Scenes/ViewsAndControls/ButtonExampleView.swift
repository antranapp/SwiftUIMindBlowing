//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ButtonExampleView : View {

    @State var randomValue: Int = 0

    var body: some View {
        VStack(alignment: .leading) {
            Text("\(randomValue)")
            Button(action: {
                self.randomValue = Int.random(in: 1..<100)
            }) {
                Text("Generate random number")
            }
        }
        .navigationBarTitle(Text("Button"))
        .padding()
    }
}

#if DEBUG
struct ButtonExampleView_Previews : PreviewProvider {
    static var previews: some View {
        ButtonExampleView()
    }
}
#endif
