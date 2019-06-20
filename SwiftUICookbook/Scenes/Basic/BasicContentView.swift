//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct BasicContentView : View {

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Views and Controls")) {
                    Group { // Group is used to overcome limitation of 10 Subviews in a ViewBuilder
                        NavigationButton(destination: TextExampleView()) {
                            BasicContentCellView(title: "Text", subtitle: "A view that displays one or more lines of read-only text.")
                        }
                        NavigationButton(destination: TextFieldExampleView()) {
                            BasicContentCellView(title: "TextField", subtitle: "A control that displays an editable text interface.")
                        }
                        NavigationButton(destination: SecureFieldExampleView()) {
                            BasicContentCellView(title: "SecureTextField", subtitle: "A control into which the user securely enters private text.")
                        }
                        NavigationButton(destination: FontExampleView()) {
                            BasicContentCellView(title: "Font", subtitle: "An environment-dependent font.")
                        }
                        NavigationButton(destination: ImageExampleView()) {
                            BasicContentCellView(title: "Image", subtitle: "A view that displays an environment-dependent image.")
                        }
                        NavigationButton(destination: ButtonExampleView()) {
                            BasicContentCellView(title: "Button", subtitle: "A control that performs an action when triggered.")
                        }
                        NavigationButton(destination: NavigationButtonExampleView()) {
                            BasicContentCellView(title: "NavigationButton", subtitle: "A button that triggers a navigation presentation when pressed.")
                        }
                        NavigationButton(destination: PresentationButtonExampleView()) {
                            BasicContentCellView(title: "PresentationButton", subtitle: "A button that triggers a navigation presentation when pressed.")
                        }
                        NavigationButton(destination: EditButtonExampleView()) {
                            BasicContentCellView(title: "EditButton", subtitle: "A button that triggers a navigation presentation when pressed.")
                        }
                        NavigationButton(destination: ToggleExampleView()) {
                            BasicContentCellView(title: "Toggle", subtitle: "A control that toggles between on and off states.")
                        }
                    }
                    Group {
                        NavigationButton(destination: PickerExampleView()) {
                            BasicContentCellView(title: "Picker", subtitle: "A control for selecting from a set of mutually exclusive values.")
                        }
                        NavigationButton(destination: DatePickerExampleView()) {
                            BasicContentCellView(title: "DatePicker", subtitle: "A control for selecting an absolute date.")
                        }
                        NavigationButton(destination: DatePickerExampleView()) {
                            BasicContentCellView(title: "Slider", subtitle: "A control for selecting a value from a bounded linear range of values.")
                        }
                        NavigationButton(destination: StepperExampleView()) {
                            BasicContentCellView(title: "Stepper", subtitle: "A control used to perform semantic increment and decrement actions.")
                        }
                        NavigationButton(destination: SegmentedControlExampleView()) {
                            BasicContentCellView(title: "SegmentedControl", subtitle: "A control for selecting from a set of options.")
                        }
                    }

                }
                Section(header: Text("View Layout and Presentation")) {
                    NavigationButton(destination: HStackExampleView()) {
                        BasicContentCellView(title: "HStack", subtitle: "A view that arranges its children in a horizontal line.")
                    }
                    NavigationButton(destination: VStackExampleView()) {
                        BasicContentCellView(title: "VStack", subtitle: "A view that arranges its children in a vertical line.")
                    }
                    BasicContentCellView(title: "ZStack", subtitle: "A view that overlays its children, aligning them in both axes.")
                    BasicContentCellView(title: "List", subtitle: "A container that presents rows of data arranged in a single column.")
                    BasicContentCellView(title: "ScrollView", subtitle: "A scroll view.")
                    BasicContentCellView(title: "ForEach", subtitle: "A structure that computes views on demand from an underlying collection of identified data.")
                }

            }
            .listStyle(.grouped)
            .navigationBarTitle(Text("SwiftUI Cookbook"))
        }
    }
}

#if DEBUG
struct BasicContentView_Previews : PreviewProvider {
    static var previews: some View {
        BasicContentView()
    }
}
#endif
