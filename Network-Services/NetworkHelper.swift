//
//  NetworkHelper.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 1/3/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation

class NetworkHelper {

  static let shared = NetworkHelper()
  private var session: URLSession

  private init() {
    session = URLSession(configuration: .default)
  }
  
  func performDataTask(with request: URLRequest,
                       completion: @escaping (Result<Data, AppError>) -> ()) {
    
    let dataTask = session.dataTask(with: request) { (data, response, error) in
      
      if let error = error {
        completion(.failure(.networkClientError(error)))
      }
   
      guard let urlResponse = response as? HTTPURLResponse else {
        completion(.failure(.noResponse))
        return
      }
     
      guard let data = data else {
        completion(.failure(.noData))
        return
      }
      
      switch urlResponse.statusCode {
      case 200...299: break // everything went well here
      default:
        completion(.failure(.badStatusCode(urlResponse.statusCode)))
        return
      }
      
      completion(.success(data))
    }
    dataTask.resume()
  }
}
