//
//  Copyright © 2019 An Tran. All rights reserved.
//

import SwiftUI
import MapKit

struct MKMapViewUI: UIViewRepresentable {

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D( // Munich
            latitude: 48.1351,
            longitude: 11.5820
        )
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapKitExampleView: View {
    var body: some View {
        ExampleView(
            title: "MapKit Integration",
            demoContentView: MKMapViewUI()
        )
    }
}

struct MKMapViewUI_Preview: PreviewProvider {
    static var previews: some View {
        MapKitExampleView()
    }
}
