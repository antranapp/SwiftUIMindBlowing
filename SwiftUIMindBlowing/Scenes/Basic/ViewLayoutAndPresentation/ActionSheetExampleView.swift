//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ActionSheetExampleView : View {

    @State var isShowingActionSheet: Bool = false

    var body: some View {
        VStack {
            Button(action: {
                self.isShowingActionSheet = true
            }) {
                Text("Show Action Sheet")
            }
            .actionSheet(isPresented: self.$isShowingActionSheet) {
                ActionSheet(
                    title: Text("Actions"),
                    message: Text("Available actions"),
                    buttons: [
                        .cancel { print(self.isShowingActionSheet) },
                        .default(Text("Action")),
                        .destructive(Text("Delete"))
                    ]
                )
            }
        }
        .navigationBarTitle(Text("ActionSheet"))

    }
}

#if DEBUG
struct ActionSheetExampleView_Previews : PreviewProvider {
    static var previews: some View {
        ActionSheetExampleView()
    }
}
#endif
