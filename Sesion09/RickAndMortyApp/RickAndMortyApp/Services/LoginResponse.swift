import Foundation

//Nos permite obtener un objeto desde un json
struct LoginResponse: Decodable {
    let accessToken: String
    let refreshToken: String
    let id: Int
    let email: String
    let username: String
    let firstName: String
    let lastName: String
    let gender: String
    let image: String
    
    
}
