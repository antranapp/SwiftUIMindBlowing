//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct AlertExampleView: View {

    @State var isPresented: Bool = false

    var body: some View {
        VStack {
            Button(action: {
                self.isPresented = true
            }) {
                Text("Show Alert")
            }
            .alert(isPresented: self.$isPresented) {
                Alert(title: Text("Error"), message: Text("Error Reason"), dismissButton: .default(Text("OK")))
            }
        }
        .navigationBarTitle(Text("Alert"))
    }
}

#if DEBUG
struct AlertExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AlertExampleView()
    }
}
#endif
