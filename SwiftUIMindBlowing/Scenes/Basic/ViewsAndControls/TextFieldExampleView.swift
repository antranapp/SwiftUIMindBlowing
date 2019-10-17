//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TextFieldExampleView : View {

    @State private var textValue = ""
    @State private var finalTextValue = ""

    var body: some View {
        VStack { //(alignment: .leading)
            Text(textValue)
            Text(finalTextValue)
            TextField(
                "TextField",
                text: $textValue,
                onEditingChanged: { isChanged in
                    print("onEditingChanged: \(self.textValue)")
                },
                onCommit:  {
                    self.finalTextValue = self.textValue
                    print("onEditingChanged: \(self.finalTextValue)")
                }
            )
        }
        .navigationBarTitle("TextField")
        .padding()
    }
}

#if DEBUG
struct TextFieldExampleView_Previews : PreviewProvider {
    static var previews: some View {
        TextFieldExampleView()
    }
}
#endif
