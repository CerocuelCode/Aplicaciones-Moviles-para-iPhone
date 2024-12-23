import Foundation

class RestaurantService{
    func getRestaurants(completion: @escaping ([Restaurant]?, String?) -> Void){
        let url = "https://sugary-wool-penguin.glitch.me/restaurants"
        
        HttpRequestHelper().GET(url: url){success, data, message in
            if success {
                guard let data = data else {
                    completion(nil, "Error: no data")
                    return
                }
                do {
                    let restaurantsResponse = try JSONDecoder().decode([RestaurantResponse].self, from: data)
                    let restaurants = restaurantsResponse.map { restaurantsResponse in
                        restaurantsResponse.toRestaurant()
                    }
                    completion(restaurants, nil)
                } catch let error {
                    completion(nil, "Error: \(error.localizedDescription)")
                }
            } else {
                completion(nil, "Error: \(message ?? "No response")")
            }
        }
    }
}
