//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct SecureFieldExampleView : View {

    @State var textValue: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text(textValue)
            SecureField($textValue, placeholder: Text("SecureField")) {
                print("[onCommit] \(self.textValue)")
            }
        }
        .navigationBarTitle(Text("TextField"))
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
