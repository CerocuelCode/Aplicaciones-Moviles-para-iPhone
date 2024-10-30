import Foundation

class AuthService {
    func login(username: String, password: String, completion: @escaping (LoginResponse?, String?) -> Void) {
        let url = "https://dummyjson.com/auth/login"
        let body = LoginRequest(username: username, password: password)
        
        HttpRequestHelper().POST(url: url, body: body, model: LoginResponse.self){ data, message in
            if let message = message {
                completion(nil, message)
                return
            }
            
            if let data = data {
                completion(data, nil)
                return
            }
        }
    }
}
