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
                            ExampleCellView(
                                title: "Text",
                                subtitle: "A view that displays one or more lines of read-only text.")
                        }
                        NavigationButton(destination: TextFieldExampleView()) {
                            ExampleCellView(
                                title: "TextField",
                                subtitle: "A control that displays an editable text interface.")
                        }
                        NavigationButton(destination: SecureFieldExampleView()) {
                            ExampleCellView(
                                title: "SecureTextField",
                                subtitle: "A control into which the user securely enters private text.")
                        }
                        NavigationButton(destination: FontExampleView()) {
                            ExampleCellView(
                                title: "Font",
                                subtitle: "An environment-dependent font.")
                        }
                        NavigationButton(destination: ImageExampleView()) {
                            ExampleCellView(
                                title: "Image",
                                subtitle: "A view that displays an environment-dependent image.")
                        }
                        NavigationButton(destination: ButtonExampleView()) {
                            ExampleCellView(
                                title: "Button",
                                subtitle: "A control that performs an action when triggered.")
                        }
                        NavigationButton(destination: NavigationButtonExampleView()) {
                            ExampleCellView(
                                title: "NavigationButton",
                                subtitle: "A button that triggers a navigation presentation when pressed.")
                        }
                        NavigationButton(destination: PresentationButtonExampleView()) {
                            ExampleCellView(
                                title: "PresentationButton",
                                subtitle: "A button that triggers a navigation presentation when pressed.")
                        }
                        NavigationButton(destination: EditButtonExampleView()) {
                            ExampleCellView(
                                title: "EditButton",
                                subtitle: "A button that triggers a navigation presentation when pressed.")
                        }
                        NavigationButton(destination: ToggleExampleView()) {
                            ExampleCellView(
                                title: "Toggle",
                                subtitle: "A control that toggles between on and off states.")
                        }
                    }
                    Group {
                        NavigationButton(destination: PickerExampleView()) {
                            ExampleCellView(
                                title: "Picker",
                                subtitle: "A control for selecting from a set of mutually exclusive values.")
                        }
                        NavigationButton(destination: DatePickerExampleView()) {
                            ExampleCellView(
                                title: "DatePicker",
                                subtitle: "A control for selecting an absolute date.")
                        }
                        NavigationButton(destination: DatePickerExampleView()) {
                            ExampleCellView(
                                title: "Slider",
                                subtitle: "A control for selecting a value from a bounded linear range of values.")
                        }
                        NavigationButton(destination: StepperExampleView()) {
                            ExampleCellView(
                                title: "Stepper",
                                subtitle: "A control used to perform semantic increment and decrement actions.")
                        }
                        NavigationButton(destination: SegmentedControlExampleView()) {
                            ExampleCellView(
                                title: "SegmentedControl",
                                subtitle: "A control for selecting from a set of options.")
                        }
                    }

                }
                Section(header: Text("View Layout and Presentation")) {
                    NavigationButton(destination: HStackExampleView()) {
                        ExampleCellView(
                            title: "HStack",
                            subtitle: "A view that arranges its children in a horizontal line.")
                    }
                    NavigationButton(destination: VStackExampleView()) {
                        ExampleCellView(
                            title: "VStack",
                            subtitle: "A view that arranges its children in a vertical line.")
                    }
                    ExampleCellView(
                        title: "ZStack",
                        subtitle: "A view that overlays its children, aligning them in both axes.")
                    ExampleCellView(
                        title: "List",
                        subtitle: "A container that presents rows of data arranged in a single column.")
                    ExampleCellView(
                        title: "ScrollView",
                        subtitle: "A scroll view.")
                    ExampleCellView(
                        title: "ForEach",
                        subtitle: "A structure that computes views on demand from an underlying collection of identified data.")
                }
                Section(header: Text("Gestures")) {
                    ExampleCellView(
                        title: "TapGesture",
                        subtitle: "")
                    ExampleCellView(
                        title: "LongPressGesture",
                        subtitle: "")
                    ExampleCellView(
                        title: "DragGesture",
                        subtitle: "")
                    ExampleCellView(
                        title: "MagnificationGesture",
                        subtitle: "")
                    ExampleCellView(
                        title: "RotationGesture",
                        subtitle: "")
                    ExampleCellView(
                        title: "SequenceGesture",
                        subtitle: "")
                    ExampleCellView(
                        title: "SimultanousGesture",
                        subtitle: "")
                    ExampleCellView(
                        title: "ExclusiveGesture",
                        subtitle: "")
                    ExampleCellView(
                        title: "AnyGesture",
                        subtitle: "")
                }
            } // List
            .listStyle(.grouped)
            .navigationBarTitle(Text("Basic"))
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
