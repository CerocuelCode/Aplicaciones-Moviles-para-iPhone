import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant
    var body: some View {
        NavigationStack{
            VStack{
                AsyncImage(
                    url: URL(string: restaurant.poster),
                    content: {image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: .infinity, height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    },
                    placeholder:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 25).fill(Color.gray.opacity(0.2))
                                .frame(width: 100, height: 100)
                            ProgressView()
                        }
                    }
                )
                Text(restaurant.title)
                    .bold()
                    .font(.title)
                    .foregroundStyle(Color.orange)
                Text(restaurant.description)
                    .font(.subheadline)
                GoogleMapView(latitude: restaurant.latitude, longitude: restaurant.longitude, zoom: 15)
                
                
                
                Spacer()
            }.ignoresSafeArea()
        }
    }
}

