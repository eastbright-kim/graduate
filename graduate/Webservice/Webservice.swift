//
//  Webservice.swift
//  graduate
//
//  Created by 김동환 on 2021/02/14.
//

import Foundation


enum NetworkError: Error {
    
    case decodingError
    case domainError
    case dataError
}

enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
}

struct Resource<T: Codable> {
    
    let url: URL
    var httpMethod: HttpMethod = HttpMethod.get
    var body: Data? = nil
    
}

struct Webservice {
    func load<T>(resource: Resource<T>, completion: @escaping (Result<T, NetworkError>) -> Void) {
        
        var request = URLRequest(url: resource.url)
        request.httpMethod = resource.httpMethod.rawValue
        request.httpBody = resource.body
        request.addValue("application/json", forHTTPHeaderField: "Content-type")
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if let e = error {
                print(e.localizedDescription)
            }
            
            guard let data = data else {
                completion(.failure(.dataError))
                fatalError()
            }
            
            guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
                completion(.failure(.decodingError))
                fatalError()
            }
            completion(.success(decodedData))
  
        }.resume()
    }
}
