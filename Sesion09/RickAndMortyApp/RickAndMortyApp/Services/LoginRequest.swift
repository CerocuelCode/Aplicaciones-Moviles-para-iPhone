import Foundation

//Encodable permite poder convertirlo a JSON
struct LoginRequest: Encodable {
    let username: String
    let password: String
}
