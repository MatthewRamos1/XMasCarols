//
//  AppError.swift
//  XMasCarols
//
//  Created by Matthew Ramos on 1/3/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import Foundation

enum AppError: Error {
  case badURL(String) // associated value
  case noResponse
  case networkClientError(Error) // no internet connection
  case noData
  case decodingError(Error)
  case encodingError(Error)
  case badStatusCode(Int) // 404, 500
  case badMimeType(String) // image/jpg
}
