//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct TextExampleView: View {

    var body: some View {
        ExampleView(
            demoContentView: { () -> TextExampleDemoView in
                TextExampleDemoView()
            },
            remoteSourcePath: "https://raw.githubusercontent.com/peacemoon/SwiftUIMindBlowing/master/SwiftUIMindBlowing/Scenes/Basic/ViewsAndControls/TextExampleView.swift"
        )
        .navigationBarTitle("Text")
    }
}

struct TextExampleDemoView: View {

    var body: some View {
        VStack {
            Group {
                Text("Simple Text")

                Divider()
            }

            Group {
                Text("Strikethrough Text")
                    .strikethrough()

                Divider()
            }

            Group {
                Text("Underline Text")
                    .underline()

                Divider()
            }

            Group {
                Text("Bold Text")
                    .bold()

                Divider()
            }

            Group {
                Text("This text") + Text(" is on the same line")

                Divider()
            }

            Group {
                Text("This is the first line\nThis is the secondline")
                    .lineLimit(2)

                Divider()
            }

            Group {
                Text("This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. This is a very long text. ")
                    .lineLimit(nil) // If nil, no line limite applies
                    .minimumScaleFactor(0.5)
                Divider()
            }
        }
    }
}

#if DEBUG
struct TextExampleView_Previews: PreviewProvider {
    static var previews: some View {
        TextExampleView()
    }
}
#endif
