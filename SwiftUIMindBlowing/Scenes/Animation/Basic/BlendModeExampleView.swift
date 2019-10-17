//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct BlendModeExampleView : View {

    @State var up = false

    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.blue)

            Circle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.red)
                .animation(.spring())
                .scaleEffect(up ? 1.8 : 0.5)
                .blendMode(.darken)
                .onTapGesture {
                    withAnimation {
                        self.up.toggle()
                    }
                }
        }
        .navigationBarTitle(Text("BlendMode"))
    }
}

#if DEBUG
struct BlendModeExampleView_Previews : PreviewProvider {
    static var previews: some View {
        BlendModeExampleView()
    }
}
#endif
