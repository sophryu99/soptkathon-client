//
//  APIConstants.swift
//  iOS-Soptkathon
//
//  Created by Sehwa Ryu on 07/06/2020.
//  Copyright © 2020 Sehwa Ryu. All rights reserved.
//

struct APIConstants {
    static let baseURL = "http://52.79.145.67:3000"
    static let signinURL = APIConstants.baseURL + "/user/signin" //get
    static let musicURL = APIConstants.baseURL + "/music/list" //post
    static let myPageURL = APIConstants.baseURL + "/user/mypage" //get
    static let heartURL = APIConstants.baseURL + "/hearts/:music_idx/:isChecked" //put
    static let commentURL = APIConstants.baseURL + "/comments/:music_idx"//get

}
