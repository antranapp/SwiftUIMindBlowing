//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TextExampleView : View {

    @State var viewIndex = 0
    let views = ["Demo", "Source"]

    var body: some View {
        BaseExampleView(demoContentView: { () -> TextExampleDemoView in
            return TextExampleDemoView()
        }, sourcePath: "text_index")
        .navigationBarTitle(Text("Text"))
        .padding()
    }
}

struct TextExampleDemoView: View {

    var body: some View {
        VStack {
            Text("Simple Text")
            Text("Strikethrough Text").strikethrough()
            Text("Underline Text").underline()
            Text("Bold Text").bold()
            Text("This text") + Text(" is on the same line")
            Text("This is the first line\nThis is the secondline").lineLimit(2)
            Text("This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. ")
                .lineLimit(3).minimumScaleFactor(0.5)
        }
    }
}

struct TextExampleSourceView: View {

    var body: some View {
        WKWebViewUI(resource: "text_index")
    }
}

#if DEBUG
struct TextExampleView_Previews : PreviewProvider {
    static var previews: some View {
        TextExampleView()
    }
}
#endif
