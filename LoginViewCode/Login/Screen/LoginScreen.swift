//
//  LoginScreen.swift
//  LoginViewCode
//
//  Created by Paola Alcantara Soares on 17/02/22.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
        
    }()
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo_whats")
        image.tintColor = UIColor(red: 200/255, green: 17/255, blue: 100/255, alpha: 1.0)
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false //p/ poder respeitar as constraints setadas.
        tf.autocorrectionType = .no // para fazer alto correcao de texto .no = desativado
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.placeholder = "Digite seu E-mail:" //indicar o que é p o usuario digitar
        tf.textColor = .darkGray
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false //p/ poder respeitar as constraints setadas.
        tf.autocorrectionType = .no // para fazer alto correcao de texto .no = desativado
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .default
        tf.isSecureTextEntry = true // para nao aparecer os caracteres
        tf.placeholder = "Digite sua senha:" //indicar o que é p o usuario digitar
        tf.textColor = .darkGray
        return tf
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(red: 3/255, green: 58/255, blue: 51/255, alpha: 1.0)
        button.addTarget(self, action: #selector(self.tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var resgisterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Não tem conta? Cadastre-se", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround() //funcao para configurar a cor de fundo
        self.configSuperView()//funcao p/ configurar os elementos q estao sendo adicionados na view
        self.setUpConstraintsLogin()
        self.setUpContraintsEmail()
        self.setUpConstraintsPassword()
        self.setUpConstraintsLoginButton()
        self.setUpConstraintsRegister()
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)

    }
    
    private func configSuperView() { //adicionar nossos elementos na view
        self.addSubview(self.loginLabel)
        self.addSubview(self.logoAppImageView)
        self.addSubview(self.emailTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.loginButton)
        self.addSubview(self.resgisterButton)
    }
    
    @objc private func tappedLoginButton() {
        print("Botão de Login!")
    }
    //public para conseguir acessar em outro lado. Metodo para conseguir aceesar o delegate do TextField
    public func configTextFieldDelegate(delegate: UITextFieldDelegate){
        self.emailTextField.delegate = delegate
        self.passwordTextField.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUpConstraintsLogin(){ //array
        NSLayoutConstraint.activate([
            //constraints label login
            self.loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            //constraints imagem logo
            self.logoAppImageView.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 20),
            self.logoAppImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
            self.logoAppImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            self.logoAppImageView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
            
            private func setUpContraintsEmail(){ //array
                NSLayoutConstraint.activate([
            //constraints textField email
            self.emailTextField.topAnchor.constraint(equalTo: self.logoAppImageView.bottomAnchor, constant: 20),
            self.emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            self.emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            self.emailTextField.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
            
            //constraints textField senha
            private func setUpConstraintsPassword(){ //array
                NSLayoutConstraint.activate([
            self.passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 15),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            self.passwordTextField.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor)
        ])
    }
            
            //Constraints botao login
            private func setUpConstraintsLoginButton(){ //array
            NSLayoutConstraint.activate([
            self.loginButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 15),
            self.loginButton.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.loginButton.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            self.loginButton.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor)
        ])
    }
            //Constraints botao login
            private func setUpConstraintsRegister(){ //array
            NSLayoutConstraint.activate([
            self.resgisterButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 15),
            self.resgisterButton.leadingAnchor.constraint(equalTo: self.emailTextField.leadingAnchor),
            self.resgisterButton.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            self.resgisterButton.heightAnchor.constraint(equalTo: self.emailTextField.heightAnchor),
            
        ])
    }

}
