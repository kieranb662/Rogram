// Swift toolchain version 5.0
// Running macOS version 14.5
// Created on 5/23/24.
//
// Author: Kieran Brown
//

import Foundation


@Observable
class ViewModel {
    let endpoint = URL(string: "https://jsonplaceholder.typicode.com/album/1/photos")
    var models: [Model] = []
    var selectedModel: Model?
    
    func fetch() async throws -> [Model] {
        guard let endpoint else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: endpoint)
        let models = try JSONDecoder().decode([Model].self, from: data)
        return models
    }
}
