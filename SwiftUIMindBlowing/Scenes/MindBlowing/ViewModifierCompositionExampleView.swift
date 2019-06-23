//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ViewModifierCompositionExampleView : View {

    @State var value = 0

    var body: some View {

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation {
                self.value += 1
            }
        }

        return Text("🤯🤯")
            .padding()
            .background(Color.green, cornerRadius: 12)
            .rotationEffect(.degrees(2.0 * Double(self.value)))
            .padding()
            .background(Color.pink, cornerRadius: 12)
            .rotationEffect(.degrees(4.0 * Double(self.value)))
            .padding()
            .background(Color.blue, cornerRadius: 12)
            .rotationEffect(.degrees(6.0 * Double(self.value)))
            .padding()
            .background(Color.purple, cornerRadius: 12)
            .rotationEffect(.degrees(8.0 * Double(self.value)))
            .padding()
            .background(Color.yellow, cornerRadius: 12)
            .rotationEffect(.degrees(10.0 * Double(self.value)))
            .padding()
            .background(Color.red, cornerRadius: 12)
            .animation(.spring())
            .rotationEffect(.degrees(12.0 * Double(self.value)))

    }
}

#if DEBUG
struct ViewModifierCompositionExampleView_Previews : PreviewProvider {
    static var previews: some View {
        ViewModifierCompositionExampleView()
    }
}
#endif
