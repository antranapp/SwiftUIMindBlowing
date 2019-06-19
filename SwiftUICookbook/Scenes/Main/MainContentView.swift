//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MainContentView : View {

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Views and Controls")) {
                    NavigationButton(destination: TextExampleView()) {
                        MainContentCellView(title: "Text", subtitle: "A view that displays one or more lines of read-only text.")
                    }
                    NavigationButton(destination: TextFieldExampleView()) {
                        MainContentCellView(title: "TextField", subtitle: "A control that displays an editable text interface.")
                    }
                    NavigationButton(destination: SecureFieldExampleView()) {
                        MainContentCellView(title: "SecureTextField", subtitle: "A control into which the user securely enters private text.")
                    }
                    NavigationButton(destination: FontExampleView()) {
                        MainContentCellView(title: "Font", subtitle: "An environment-dependent font.")
                    }
                    NavigationButton(destination: ImageExampleView()) {
                        MainContentCellView(title: "Image", subtitle: "A view that displays an environment-dependent image.")
                    }
                }
                Section(header: Text("View Layout and Presentation")) {
                    MainContentCellView(title: "Text", subtitle: "A view that displays one or more lines of read-only text.")
                        
                    MainContentCellView(title: "TextField", subtitle: "A control that displays an editable text interface.")
                    MainContentCellView(title: "SecureTextField", subtitle: "A control into which the user securely enters private text.")
                }

            }
            .listStyle(.grouped)
            .navigationBarTitle(Text("SwiftUI Cookbook"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
#endif
