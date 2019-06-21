//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ImageExampleView : View {
    
    var body: some View {
        VStack {
            Image("swiftui")
        }
        .navigationBarTitle(Text("Image"))
        .padding()

    }
}

#if DEBUG
struct ImageExampleView_Previews : PreviewProvider {
    static var previews: some View {
        ImageExampleView()
    }
}
#endif
