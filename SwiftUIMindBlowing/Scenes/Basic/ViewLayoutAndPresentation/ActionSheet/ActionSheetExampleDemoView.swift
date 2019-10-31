//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ActionSheetExampleDemoView: View {

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
