//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ModalExampleView : View {

    @State var isModal: Bool = false

    var modal: Modal {
        Modal(Text("Content")) {
            self.isModal = false
        }
    }

    var body: some View {
        VStack {
            Button(action: {
                self.isModal = true
            }, label: { Text("Show Modal") })
                .presentation(isModal ? modal: nil)
        }
        .navigationBarTitle(Text("Modal"))
    }
}

#if DEBUG
struct ModalExampleView_Previews : PreviewProvider {
    static var previews: some View {
        ModalExampleView()
    }
}
#endif
