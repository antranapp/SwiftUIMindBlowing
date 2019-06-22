//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ViewModifierCompositionExampleView : View {
    var body: some View {
        Text("🤯🤯")
            .padding()
            .background(Color.green, cornerRadius: 12)
            .animation(.spring())
            .padding()
            .background(Color.pink, cornerRadius: 12)
            .padding()
            .background(Color.blue, cornerRadius: 12)
            .padding()
            .background(Color.purple, cornerRadius: 12)
            .padding()
            .background(Color.red, cornerRadius: 12)
    }
}

#if DEBUG
struct ViewModifierCompositionExampleView_Previews : PreviewProvider {
    static var previews: some View {
        ViewModifierCompositionExampleView()
    }
}
#endif
