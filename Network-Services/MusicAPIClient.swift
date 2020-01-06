//
//  MusicAPIClient.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 1/4/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation

static func fetchCarols (completion: @escaping (Result<[],AppError>) -> ()) {
       
       let carolEndPointURL = "https://itunes.apple.com/search?term=christmas"
       
       guard let url = URL(string: carolEndPointURL) else {
           completion(.failure(.badURL(carolEndPointURL)))
           return
       }
       
       let request = URLRequest(url: url)
       
       NetworkHelper.shared.performDataTask(with: request) { (result) in
           switch result {
           case .failure(let appError):
               completion(.failure(.networkClientError(appError)))
           case .success(let data):
               do {
                   let elements = try JSONDecoder().decode([Element].self, from: data)
                   completion(.success(elements))
               } catch {
                   completion(.failure(.decodingError(error)))
               }
           }
       }
   }
