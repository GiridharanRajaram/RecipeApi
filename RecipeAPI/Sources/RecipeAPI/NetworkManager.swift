

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    
    func fetchRecipes(completion: @escaping ([Recipe]?) -> Void) {
        let urlString = "https://dummyjson.com/recipes"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error fetching data: \(error)")
                completion(nil)
                return
            }
            
            guard let data = data else {
                print("No data received")
                completion(nil)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let recipes = try decoder.decode([Recipe].self, from: data)
                completion(recipes)
            } catch {
                print("Error decoding data: \(error)")
                completion(nil)
            }
        }.resume()
    }
}
