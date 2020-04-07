//
//  GifNetwork.swift
//  GiphySearchIOS
//
//  Created by Marissa Vang on 4/7/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//
// API key - gnSpU59yaoUQmChp2COPIws8lXrG8qK9

import Foundation
class GifNetwork {
    let apiKey = "gnSpU59yaoUQmChp2COPIws8lXrG8qK9"
    /**
     Fetches gifs from the Giphy api
    -Parameter searchTerm: What we should query gifs of.
    */
    func fetchGifs(searchTerm: String) {
        // Create a GET url request
        let url = URL(string: "https://api.giphy.com/v1/gifs/search?api_key=\(apiKey)&q=\(searchTerm)")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let err = error {
                print("Error fetching from Giphy: ", err.localizedDescription)
            }
            print("Giphy Data: ", data as Any)
        }.resume()
    }
}
