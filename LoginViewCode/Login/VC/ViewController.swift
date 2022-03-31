//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Paola Alcantara Soares on 17/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var loginScreen:LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        //self:  viewcontroller
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        // setNavigationBarHidden para mostrar ou nao a navigation bar
    }
    
}
extension ViewController:UITextFieldDelegate{
    
    func textFieldDidEndBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEndEdintg")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEdintg")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
}
