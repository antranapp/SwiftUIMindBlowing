//
//  Copyright © 2019 An Tran. All rights reserved.
//

import ModalView
import SwiftUI

struct BasicContentView: View {

    var body: some View {
        MainView(title: "Basic") {
            ModalPresenter() {
                List {
                    Section(header: Text("Views and Controls")) {
                        Group { // Group is used to overcome limitation of 10 Subviews in a ViewBuilder
                            NavigationLink(destination: TextExampleView()) {
                                ExampleCellView(
                                    title: "Text",
                                    subtitle: "A view that displays one or more lines of read-only text.")
                            }
                            NavigationLink(destination: TextFieldExampleView()) {
                                ExampleCellView(
                                    title: "TextField",
                                    subtitle: "A control that displays an editable text interface.")
                            }
                            NavigationLink(destination: SecureFieldExampleView()) {
                                ExampleCellView(
                                    title: "SecureTextField",
                                    subtitle: "A control into which the user securely enters private text.")
                            }
                            NavigationLink(destination: FontExampleView()) {
                                ExampleCellView(
                                    title: "Font",
                                    subtitle: "An environment-dependent font.")
                            }
                            NavigationLink(destination: ImageExampleView()) {
                                ExampleCellView(
                                    title: "Image",
                                    subtitle: "A view that displays an environment-dependent image.")
                            }
                            NavigationLink(destination: ButtonExampleView()) {
                                ExampleCellView(
                                    title: "Button",
                                    subtitle: "A control that performs an action when triggered.")
                            }
                            NavigationLink(destination: NavigationLinkExampleView()) {
                                ExampleCellView(
                                    title: "NavigationLink",
                                    subtitle: "A button that triggers a navigation presentation when pressed.")
                            }
                            NavigationLink(destination: EditButtonExampleView()) {
                                ExampleCellView(
                                    title: "EditButton",
                                    subtitle: "A button that triggers a navigation presentation when pressed.")
                            }
                            NavigationLink(destination: ToggleExampleView()) {
                                ExampleCellView(
                                    title: "Toggle",
                                    subtitle: "A control that toggles between on and off states.")
                            }
                        }
                        Group {
                            NavigationLink(destination: PickerExampleView()) {
                                ExampleCellView(
                                    title: "Picker",
                                    subtitle: "A control for selecting from a set of mutually exclusive values.")
                            }
                            NavigationLink(destination: DatePickerExampleView()) {
                                ExampleCellView(
                                    title: "DatePicker",
                                    subtitle: "A control for selecting an absolute date.")
                            }
                            NavigationLink(destination: DatePickerExampleView()) {
                                ExampleCellView(
                                    title: "Slider",
                                    subtitle: "A control for selecting a value from a bounded linear range of values.")
                            }
                            NavigationLink(destination: StepperExampleView()) {
                                ExampleCellView(
                                    title: "Stepper",
                                    subtitle: "A control used to perform semantic increment and decrement actions.")
                            }
                            NavigationLink(destination: SegmentedControlExampleView()) {
                                ExampleCellView(
                                    title: "SegmentedControl",
                                    subtitle: "A control for selecting from a set of options.")
                            }
                        }
                    }
                    Section(header: Text("View Layout and Presentation")) {
                        Group {
                            NavigationLink(destination: HStackExampleView()) {
                                ExampleCellView(
                                    title: "HStack",
                                    subtitle: "A view that arranges its children in a horizontal line.")
                            }
                            NavigationLink(destination: VStackExampleView()) {
                                ExampleCellView(
                                    title: "VStack",
                                    subtitle: "A view that arranges its children in a vertical line.")
                            }
                            NavigationLink(destination: ZStackExampleView()) {
                                ExampleCellView(
                                    title: "ZStack",
                                    subtitle: "A view that overlays its children, aligning them in both axes.")
                            }
                            NavigationLink(destination: SpacerExampleView()) {
                                ExampleCellView(
                                    title: "Spacer",
                                    subtitle: "A flexible space that expands along the major axis of its containing stack layout, or on both axes if not contained in a stack.")
                            }
                            NavigationLink(destination: ListExampleView()) {
                                ExampleCellView(
                                    title: "List",
                                    subtitle: "A container that presents rows of data arranged in a single column.")
                            }
                            NavigationLink(destination: ScrollViewExampleView()) {
                                ExampleCellView(
                                    title: "ScrollView",
                                    subtitle: "A scroll view.")
                            }
                            ModalLink(destination: NavigationViewExampleView()) {
                                ExampleCellView(
                                    title: "NavigationView",
                                    subtitle: "A control that toggles between on and off states.")
                            }
                            NavigationLink(destination: TabViewExampleView()) {
                                ExampleCellView(
                                    title: "TabView",
                                    subtitle: "A control that toggles between on and off states.")
                            }
                            NavigationLink(destination: ForEachExampleView()) {
                                ExampleCellView(
                                    title: "ForEach",
                                    subtitle: "A structure that computes views on demand from an underlying collection of identified data.")
                            }
                        }

                        Group {
                            NavigationLink(destination: AlertExampleView()) {
                                ExampleCellView(
                                    title: "Alert",
                                    subtitle: "A container for an alert presentation.")
                            }
                            NavigationLink(destination: ModalExampleView()) {
                                ExampleCellView(
                                    title: "Modal",
                                    subtitle: "A storage type for a modal presentation.")
                            }
                            NavigationLink(destination: ActionSheetExampleView()) {
                                ExampleCellView(
                                    title: "ActionSheet",
                                    subtitle: "A storage type for an action sheet presentation.")
                            }
                            NavigationLink(destination: DividerExampleView()) {
                                ExampleCellView(
                                    title: "Divider",
                                    subtitle: "A visual element that can be used to separate other content.")
                            }
                        }
                    }
                    Section(header: Text("Gestures")) {
                        Group {
                            NavigationLink(destination: TapGestureExampleView()) {
                                ExampleCellView(
                                    title: "TapGesture",
                                    subtitle: "A gesture that ends once a specified number of tap event sequences have been recognized.")
                            }
                            NavigationLink(destination: LongPressGestureExampleView()) {
                                ExampleCellView(
                                    title: "LongPressGesture",
                                    subtitle: "A gesture that ends once a long-press event sequence has been recognized.")
                            }
                            NavigationLink(destination: DragGestureExampleView()) {
                                ExampleCellView(
                                    title: "DragGesture",
                                    subtitle: "A gesture that invokes an action as a drag event sequence changes.")
                            }
                            NavigationLink(destination: MagnificationGestureExampleView()) {
                                ExampleCellView(
                                    title: "MagnificationGesture",
                                    subtitle: "A gesture that tracks how a magnification event sequence changes.")
                            }
                            NavigationLink(destination: RotationGestureExampleView()) {
                                ExampleCellView(
                                    title: "RotationGesture",
                                    subtitle: "A gesture that tracks how a rotation event sequence changes.")
                            }
                            NavigationLink(destination: SequenceGestureExampleView()) {
                                ExampleCellView(
                                    title: "SequenceGesture",
                                    subtitle: "A gesture type that sequences two subgestures.")
                            }
                            NavigationLink(destination: SimultanousGestureExampleView()) {
                                ExampleCellView(
                                    title: "SimultanousGesture",
                                    subtitle: "A container event handler that evaluates its two child gestures simultaneously.")
                            }
                            NavigationLink(destination: ExclusiveGestureExampleView()) {
                                ExampleCellView(
                                    title: "ExclusiveGesture",
                                    subtitle: "A pair of gestures where only one can succeed, which gives precedence to the first of the pair.")
                            }
                        }
                    }
                }
                Text("Chose a topic in Basic")
            }
        }
    }
}

struct BasicContentView_Previews: PreviewProvider {
    static var previews: some View {
        BasicContentView()
    }
}
