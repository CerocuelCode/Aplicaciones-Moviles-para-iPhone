import SwiftUI

struct RestaurantsListView: View {
    @StateObject var viewModel =  RestaurantListViewModel()
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.orange]
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                if !viewModel.message.isEmpty{
                    Text(viewModel.message)
                }
                List {
                    ForEach(viewModel.restaurants){ restaurant in
                        NavigationLink(destination: {
                            RestaurantDetailView(restaurant: restaurant)
                        }){
                            RestauranListItem(restaurant: restaurant)
                        }
                    }
                }.listStyle(PlainListStyle())
            }.navigationTitle("Restaurant")
        }.onAppear{
            viewModel.getRestaurants()
        }
    }
}

#Preview {
    RestaurantsListView()
}
