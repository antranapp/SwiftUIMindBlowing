//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TextExampleView : View {
    var body: some View {
        VStack {
            Text("Simple Text")
            Text("Strikethrough Text").strikethrough()
            Text("Underline Text").underline()
            Text("Bold Text").bold()
            Text("This text") + Text(" is on the same line")
            Text("This is the first line\nThis is the secondline").lineLimit(2)
            Text("This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. ").lineLimit(3).minimumScaleFactor(0.5)
        }
        .navigationBarTitle(Text("Text"))
        .padding()
    }
}

#if DEBUG
struct TextExampleView_Previews : PreviewProvider {
    static var previews: some View {
        TextExampleView()
    }
}
#endif
