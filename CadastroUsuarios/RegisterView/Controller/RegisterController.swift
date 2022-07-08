//
//  RegisterController.swift
//  CadastroUsuarios
//
//  Created by user208023 on 5/17/22.
//
import UIKit

class RegisterController: TelaCadastroProtocol {
    
    var userList: [Usuario] = []
   
    var telaCadastro: TelaCadastro?
    
    func updateDelegate() {
        telaCadastro?.delegate = self
    }
    
    func registerUser(name:String, lastName: String, age: Int, phone: String, email: String, password: String) -> Bool {
        
        let newUser = Usuario(name: name, lastName: lastName, age: age, phone: phone, email: email, senha: password)
        
        if self.userList.count == 0
            
        {
            
            
            self.userList.append(newUser)
            
            print(userList)
            
            return true
            
        }
        
        for usuario in self.userList {
            
            if newUser.email == usuario.email
            {
                print(userList)
                
                return false
                
                
            }
            
            else
            
            {
                self.userList.append(newUser)
                
                print(userList)
                
                return true
                
            }
        }
      return false
    }
    
    
    
}

