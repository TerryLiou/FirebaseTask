//
//  LoginManager.swift
//  FirebaseTask
//
//  Created by 劉仲軒 on 2017/3/14.
//  Copyright © 2017年 劉仲軒. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class LoginManager: NSObject {
    
    static let shared = LoginManager()
    static let email = "abc@gmail.com"
    static let password = "123456"
    
    func login() {
        
        let auth = FIRAuth.auth()
        
        auth?.createUser(withEmail: LoginManager.email, password: LoginManager.password, completion: { (user, error) in
            
            if error != nil {
                print("Create user error: \(error)")
                return
            }
            
            auth?.signIn(withEmail: LoginManager.email, password: LoginManager.password, completion: { (user, error) in
                
                if error != nil {
                    print("Sign in error: \(error)")
                    return
                }
                
                print("Success with user: \(user?.email)")
                
            })
        })
        
        
    }
    
}
