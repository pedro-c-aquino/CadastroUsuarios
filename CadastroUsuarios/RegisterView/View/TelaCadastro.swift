//
//  TelaCadastro.swift
//  CadastroUsuarios
//
//  Created by user208023 on 4/29/22.
//

import UIKit

protocol TelaCadastroProtocol: AnyObject {
    var userList: [Usuario] { get set }
    
    func registerUser(name: String, lastName: String, age: Int, phone: String, email: String, password: String) -> Bool
}

class TelaCadastro: UIViewController {
    
    var usuarioCadastrado: Bool = false
    
    weak var delegate: TelaCadastroProtocol?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func singupButton(_ sender: UIButton) {
        
        let name = nameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let age = Int(ageTextField.text ?? "") ?? 0
        let phone = phoneTextField.text ?? ""
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
//
//        let usuario = Usuario(name: name, lastName: lastName, age: age, phone: phone, email: email, senha: password)
//
//        self.delegate?.registerUser(value: usuario)
        if self.delegate != nil {
            usuarioCadastrado = self.delegate?.registerUser(name: name, lastName: lastName, age: age, phone: phone, email: email, password: password)
            self.performSegue(withIdentifier: "ViewController", sender: nil)
        }
        
        
            
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as? ViewController
        vc?.usuarioCadastrado = self.usuarioCadastrado
        
        
    }
    
}
