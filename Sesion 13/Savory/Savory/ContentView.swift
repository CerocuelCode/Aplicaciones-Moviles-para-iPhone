import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GoogleMapView(latitude: -12.1254174, longitude: -77.0274166, zoom: 17)
            
        }
        .padding()
    }
}

#Preview {
    ContentView().onAppear(){
        GoogleMapManager()
    }
}
