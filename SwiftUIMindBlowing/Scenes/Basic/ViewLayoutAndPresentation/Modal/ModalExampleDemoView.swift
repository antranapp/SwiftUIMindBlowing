//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ModalExampleDemoView: View {

    @State var isModal: Bool = false

    var body: some View {
        VStack {
            Button(action: {
                self.isModal = true
            }) {
                Text("Show Modal")
            }
            .sheet(isPresented: self.$isModal) {
                ModalView(message: "This is Modal view")
            }
        }
        .navigationBarTitle("Modal")
    }
}

struct ModalView: View {
    @Environment(\.presentationMode) var presentation
    let message: String

    var body: some View {
        VStack {
            Text(message)
            Button("Dismiss") {
                self.presentation.wrappedValue.dismiss()
            }
        }
    }
}
