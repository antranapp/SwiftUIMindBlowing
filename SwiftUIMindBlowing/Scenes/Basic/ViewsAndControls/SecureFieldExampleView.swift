//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SecureFieldExampleView : View {

    @State private var textValue = ""

    var body: some View {
        VStack() { // alignment: .leading
            Text(textValue)
            SecureField("SecureField", text: $textValue) {
                print("[onCommit] \(self.textValue)")
            }
        }
        .navigationBarTitle("TextField")
        .padding()
    }
}

#if DEBUG
struct SecureFieldExampleView_Previews : PreviewProvider {
    static var previews: some View {
        SecureFieldExampleView()
    }
}
#endif
