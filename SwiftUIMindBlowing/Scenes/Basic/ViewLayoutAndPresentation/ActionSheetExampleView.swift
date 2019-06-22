//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct ActionSheetExampleView : View {

    @State var isSheet: Bool = false

    var sheet: ActionSheet {
        ActionSheet(title: Text("Action"),
                    message: Text("Description"),
                    buttons: [
                        .default(Text("OK"), onTrigger: {
                            self.isSheet = false
                        }),
                        .destructive(Text("Delete"), onTrigger: {
                            self.isSheet = false
                        })
            ]
        )
    }

    var body: some View {
        VStack {
            Button(action: {
                self.isSheet = true
            }, label: { Text("Show Action Sheet") })
                .presentation(isSheet ? sheet: nil)
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
