//
//  Service.swift
//  LobnaFramwork
//
//  Created by Lobna Shaheen on 09/10/2022.
//

import Foundation

public class Service{
    
    private init(){}
    
    
    public static func withParams(param1: Int) -> Int{
        return param1 * 2;
    }
    
    public static func noParam() -> String{
        return "Welcome to WaffarX"
    }
    
}
