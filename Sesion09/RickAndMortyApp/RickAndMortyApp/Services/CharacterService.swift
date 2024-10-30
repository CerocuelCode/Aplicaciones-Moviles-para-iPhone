import Foundation

class CharacterService {
    func getAllCharacters(){
        let url = "https://rickandmortyapi.com/api/character"
        
        HttpRequestHelper.GET(url: url){ success, data, message in
        }
    }
}
