//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct AlertExampleDemoView: View {

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
