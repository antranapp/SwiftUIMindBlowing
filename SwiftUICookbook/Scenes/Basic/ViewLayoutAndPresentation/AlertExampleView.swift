//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct AlertExampleView : View {

    @State var isError: Bool = false

    var body: some View {
        VStack {
            Button(action: {
                self.isError = true
            }, label: {
                Text("Show Alert")
            }).presentation(self.$isError) { () -> Alert in
                Alert(title: Text("Error"), message: Text("Error Reason"), dismissButton: .default(Text("OK")))
            }
        }
        .navigationBarTitle(Text("Alert"))
    }
}

#if DEBUG
struct AlertExampleView_Previews : PreviewProvider {
    static var previews: some View {
        AlertExampleView()
    }
}
#endif
