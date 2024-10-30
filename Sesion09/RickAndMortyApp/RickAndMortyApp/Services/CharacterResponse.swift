import Foundation

struct CharacterResponse: Decodable{
    let results: [Character]
}

struct Character: Decodable{
    let name: String
}
