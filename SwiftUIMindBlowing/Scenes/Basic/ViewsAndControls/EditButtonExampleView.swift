//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct EditButtonExampleView : View {
    
    @State var uiStacks = ["UIKit", "UIKit for Mac", "SwiftUI"]

    var body: some View {
        List {
            ForEach(uiStacks, id: \.self) { uiStack in
                Text(uiStack)
            }
            .onDelete(perform: remove)
        }
        .navigationBarItems(trailing: EditButton())
        .navigationBarTitle(Text("EditButton"))
    }

    func remove(at offsets: IndexSet) {
        if let first = offsets.first {
            uiStacks.remove(at: first)
        }
    }
}

#if DEBUG
struct EditButtonExampleView_Previews : PreviewProvider {
    static var previews: some View {
        EditButtonExampleView()
    }
}
#endif
