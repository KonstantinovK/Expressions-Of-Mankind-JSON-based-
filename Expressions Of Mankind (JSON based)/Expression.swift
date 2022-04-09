//
//  Expression.swift
//  Expressions Of Mankind (JSON based)
//
//  Created by MacBook on 09.04.2022.
//

struct Expression: Decodable {
    let text: String
    var author: Author
    
    struct Author: Decodable {
        let name: String
    }
}
