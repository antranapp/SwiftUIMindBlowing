//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI

struct AnimationContentView: View {

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Shapes")) {
                    Group {
                        ExampleCellView(
                            title: "Rectangle",
                            subtitle: "A rectangular shape aligned inside the frame of the view containing it.")
                        ExampleCellView(
                            title: "RoundedRectangle",
                            subtitle: "A rectangular shape with rounded corners, aligned inside the frame of the view containing it.")
                        ExampleCellView(
                            title: "Circle",
                            subtitle: "A circle centered on the frame of the view containing it.")
                        ExampleCellView(
                            title: "Ellipse",
                            subtitle: "An ellipse aligned inside the frame of the view containing it.")
                        ExampleCellView(
                            title: "Capsule",
                            subtitle: "A capsule shape aligned inside the frame of the view containing it.")
                        ExampleCellView(
                            title: "Path",
                            subtitle: "The outline of a 2D shape.")
                    }
                }
                Section(header: Text("Transformed Shapes")) {
                    Group {
                        ExampleCellView(
                            title: "ScaledShape",
                            subtitle: "A shape with a scale transform applied to it.")
                        ExampleCellView(
                            title: "RotatedShape",
                            subtitle: "A shape with a rotation transform applied to it.")
                        ExampleCellView(
                            title: "OffsetShape",
                            subtitle: "A shape with a translation offset transform applied to it.")
                        ExampleCellView(
                            title: "TransformedShape",
                            subtitle: "A shape with an affine transform applied to it.")
                    }
                }
                Section(header: Text("Paints, Styles, and Gradients")) {
                    Group {
                        ExampleCellView(
                            title: "Color",
                            subtitle: "An environment-dependent color.")
                        ExampleCellView(
                            title: "ImagePaint",
                            subtitle: "A paint type that repeats an image over the infinite plane.")
                        ExampleCellView(
                            title: "Gradient",
                            subtitle: "A color gradient represented as an array of color stops, each having a parametric location value.")
                        ExampleCellView(
                            title: "LinearGradient",
                            subtitle: "A linear gradient.")
                        ExampleCellView(
                            title: "AngularGradient",
                            subtitle: "An angular gradient.")
                        ExampleCellView(
                            title: "RadialGradient",
                            subtitle: "A radial gradient.")

                    }
                }
                Section(header: Text("Geometry")) {
                    Group {
                        ExampleCellView(
                            title: "GeometryProxy",
                            subtitle: "A proxy for access to the size and coordinate space (for anchor resolution) of the container view.")
                        NavigationLink(destination: GeometryReaderExampleView()) {
                            ExampleCellView(
                                title: "GeometryReader",
                                subtitle: "A container view that defines its content as a function of its own size and coordinate space.")
                        }
                    }
                }
                Section(header: Text("Animation")) {
                    Group {
                        NavigationLink(destination: RotationEffectExampleView()) {
                            ExampleCellView(
                                title: "RotationEffect",
                                subtitle: "Rotate a view.")
                        }
                        NavigationLink(destination: ScaleEffectExampleView()) {
                            ExampleCellView(
                                title: "ImageEffect",
                                subtitle: "Scale an image.")
                        }
                        NavigationLink(destination: BlendModeExampleView()) {
                            ExampleCellView(
                                title: "BlendMode",
                                subtitle: "Sets the blend mode for compositing this view with overlapping views..",
                                sourceCodeURL: "https://twitter.com/leebrimelow/status/1136384881351487488")
                        }
                    }
                }
            }
            .navigationBarTitle("Drawing & Animation")
        }
    }
}

#if DEBUG
struct AnimationContentView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationContentView()
    }
}
#endif
