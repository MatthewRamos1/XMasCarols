//
//  MusicAPIClient.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 1/4/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation

struct MusicAPIClient {
    static func fetchCarols (completion: @escaping (Result<[OnlineSong],AppError>) -> ()) {
        
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
                    let carolData = try JSONDecoder().decode(OnlineSongData.self, from: data)
                    let carols = carolData.results.filter { $0.primaryGenreName == "Holiday"}
                    completion(.success(carols))
                } catch {
                    completion(.failure(.decodingError(error)))
                }
            }
        }
    }
    
    static func postCarol (song: OnlineSong, completion: @escaping (Result<Bool, AppError>) -> ()) {
            
            let carolEndpointURLString = "https://5e14e7d6bce1d10014baeedf.mockapi.io/songs"
            
            guard let url = URL(string: carolEndpointURLString) else {
                return
        }
        let apiSong = Song(name: song.trackName ?? "Unlisted Song", lyrics: nil, localID: Song.songs.count)
            
            do {
                let data = try JSONEncoder().encode(apiSong)
                var request = URLRequest(url: url)
                request.addValue("application/json", forHTTPHeaderField: "Content-Type")
                request.httpBody = data
                request.httpMethod = "POST"
                
                NetworkHelper.shared.performDataTask(with: request, completion: { (result) in
                    switch result {
                    case .failure(let appError):
                        completion(.failure(.networkClientError(appError)))
                    case .success:
                        completion(.success(true))
                    }
                })
            } catch {
                completion(.failure(.encodingError(error)))
            }
        }
    }

