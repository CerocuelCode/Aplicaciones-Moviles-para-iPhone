import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map{
            Marker ("ISIL", coordinate: CLLocationCoordinate2D(latitude: -12.1254174, longitude: -77.0274166))
        }
    }
}

#Preview {
    MapView()
}
