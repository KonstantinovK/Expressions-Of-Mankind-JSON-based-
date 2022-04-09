//
//  NetworkManager.swift
//  Expressions Of Mankind (JSON based)
//
//  Created by MacBook on 08.04.2022.
//

import Foundation
import UIKit

/*

class NetworkManager: UIViewController {
    //MARK: -Private methods
    
     var label: String = ""
    
    private func successAlert() {
        DispatchQueue.main.async {
            let alert = UIAlertController(
                title: "Выполнено",
                message: "Результаты в зоне Дебаг",
                preferredStyle: .alert
            )
            let OkAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(OkAction)
            self.present(alert, animated: true)
        }
    }
    
    private func failedAlert() {
        DispatchQueue.main.async {
            let alert = UIAlertController(
                title: "Ошибка",
                message: "Ошибка записана в Дебаг",
                preferredStyle: .alert
            )
            let OkAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(OkAction)
            self.present(alert, animated: true)
        }
    }
    // MARK: -Networking (JSON)
      func fetchExpression(){
        guard let url = URL(string: "https://api.fisenko.net/v1/quotes/en/random") else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let expression = try JSONDecoder().decode(Expression.self, from: data)
                //self.successAlert()
                print(expression.author.name)
                
                DispatchQueue.main.async {
                    self.label = """
                    \(expression.text)
                  - \(expression.author.name)
                """
                }
            } catch let error {
                //self.failedAlert()
                print(error.localizedDescription)
            }
        }.resume()
    }
}
*/
