//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct RotationEffectExampleView: View {

    @State var flipped: Bool = false

    var body: some View {
        VStack {
            Image("swiftui")
                .rotationEffect(.degrees(flipped ? 180: 0))
                .onTapGesture {
                    withAnimation {
                        self.flipped.toggle()
                    }
                }
        }
        .navigationBarTitle(Text("RotationEffect"))
    }
}

#if DEBUG
struct RotationEffectExampleView_Previews: PreviewProvider {
    static var previews: some View {
        RotationEffectExampleView(flipped: false)
    }
}
#endif
