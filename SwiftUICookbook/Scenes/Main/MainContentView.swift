//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct MainContentView : View {

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Views and Controls")) {
                    Group {
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
                        NavigationButton(destination: NavigationButtonExampleView()) {
                            MainContentCellView(title: "NavigationButton", subtitle: "A button that triggers a navigation presentation when pressed.")
                        }
                        NavigationButton(destination: PresentationButtonExampleView()) {
                            MainContentCellView(title: "PresentationButton", subtitle: "A button that triggers a navigation presentation when pressed.")
                        }
                        NavigationButton(destination: EditButtonExampleView()) {
                            MainContentCellView(title: "EditButton", subtitle: "A button that triggers a navigation presentation when pressed.")
                        }
                        NavigationButton(destination: ToggleExampleView()) {
                            MainContentCellView(title: "Toggle", subtitle: "A control that toggles between on and off states.")
                        }
                    }
                    Group {
                        NavigationButton(destination: PickerExampleView()) {
                            MainContentCellView(title: "Picker", subtitle: "A control for selecting from a set of mutually exclusive values.")
                        }
                        NavigationButton(destination: DatePickerExampleView()) {
                            MainContentCellView(title: "DatePicker", subtitle: "A control for selecting an absolute date.")
                        }
                        MainContentCellView(title: "Slider", subtitle: "A control for selecting a value from a bounded linear range of values.")
                        MainContentCellView(title: "Stepper", subtitle: "A control used to perform semantic increment and decrement actions.")
                        MainContentCellView(title: "SegmentedControl", subtitle: "A control for selecting from a set of options.")
                    }

                }
                Section(header: Text("View Layout and Presentation")) {
                    MainContentCellView(title: "HStack", subtitle: "A view that arranges its children in a horizontal line.")
                    MainContentCellView(title: "VStack", subtitle: "A view that arranges its children in a vertical line.")
                    MainContentCellView(title: "ZStack", subtitle: "A view that overlays its children, aligning them in both axes.")
                    MainContentCellView(title: "List", subtitle: "A container that presents rows of data arranged in a single column.")
                    MainContentCellView(title: "ScrollView", subtitle: "A scroll view.")
                    MainContentCellView(title: "ForEach", subtitle: "A structure that computes views on demand from an underlying collection of identified data.")
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
