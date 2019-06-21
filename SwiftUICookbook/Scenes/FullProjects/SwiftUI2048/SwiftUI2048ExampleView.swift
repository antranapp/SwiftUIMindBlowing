//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SwiftUI2048ExampleView : View {
    var body: some View {
        GameView().environmentObject(GameLogic())
    }
}

#if DEBUG
struct SwiftUI2048ExampleView_Previews : PreviewProvider {
    static var previews: some View {
        SwiftUI2048ExampleView()
    }
}
#endif
