//
//  SceneDelegate.swift
//  LoginViewCode
//
//  Created by Paola Alcantara Soares on 17/02/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    // O AppDelegate é responsavel pelo ciclo de vida e configuracao do aplicativo.
    
    // o SceneDelegate é responsavel pelo o que é mostrado na tela e com ele nós podemos manipular e gerenciar a forma como o aplicativo é exibido.
    

    
    // Este metodo irá criar uma nova UIWindow e definir o controller de visualizacao raiz (root) e tornar a window a janela principal a ser exibida.
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
    
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let vc:ViewController = ViewController()
        let navVC = UINavigationController(rootViewController: vc)
        
        window.rootViewController = navVC
        window.makeKeyAndVisible() // para abilitar a parte de visualizacao
        
        self.window = window // para utilizar a view que acabei de criar. 
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

