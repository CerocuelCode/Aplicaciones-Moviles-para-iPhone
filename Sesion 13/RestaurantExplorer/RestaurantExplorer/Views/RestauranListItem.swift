import SwiftUI

struct RestauranListItem: View {
    @StateObject var viewModel = RestaurantListViewModel()
    let restaurant: Restaurant
    var body: some View {
        NavigationStack{
            HStack{
                AsyncImage(
                    url: URL(string: restaurant.poster),
                    content: {image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
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
                VStack (alignment: .leading){
                    Text(restaurant.title)
                        .bold()
                        .font(.body)
                        .foregroundStyle(Color.orange)
                        .padding(.top)
                    Text(restaurant.description).lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/).font(.subheadline)
                    Spacer()
                }.padding(.leading)
            }
        }
    }
}

