//
//  MusicServiceJU.swift
//  iOS-Soptkathon
//
//  Created by 양재욱 on 2020/06/07.
//  Copyright © 2020 Sehwa Ryu. All rights reserved.
//

import Foundation
import Alamofire
//
//struct MusicService {
//    private init() { }
//    static let shared = MusicService()
//
//    let header: HTTPHeaders = [
//        "Content-Type" : "application/json"
//    ]
//
//    func getMusicResult(text1: String, completion: @escaping (_ b: Bool) -> Void) {
//
//        let url = APIConstants.musicURL
//
//        Alamofire.request(url).responseJSON {
//            response in
//
//            switch response.result {
//            case .success(let value):
//                let json = JSON(value)
//                let result = json["result"].intValue
//                if result == 404 {
//                    completion(true)
//                }else {
//                    completion(false)
//                }
//
//            default:
//                return
//            }
//        }
//    }
//}
