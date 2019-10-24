//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ScaleEffectExampleView: View {

    @State var isScaled: Bool = false

    var body: some View {
        VStack {
            Image("swiftui")
                .scaleEffect(isScaled ? 2: 1)
                .onTapGesture {
                    withAnimation {
                        self.isScaled.toggle()
                    }
            }
        }
        .navigationBarTitle(Text("ScaleEffect"))
    }
}

#if DEBUG
struct ScaleEffectExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ScaleEffectExampleView()
    }
}
#endif
