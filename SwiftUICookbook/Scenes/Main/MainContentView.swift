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
                    NavigationButton(destination: ButtonExampleView()) {
                        MainContentCellView(title: "Button", subtitle: "A control that performs an action when triggered.")
                    }
                }
                Section(header: Text("View Layout and Presentation")) {
                    MainContentCellView(title: "HStack", subtitle: "A view that arranges its children in a horizontal line.")
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
