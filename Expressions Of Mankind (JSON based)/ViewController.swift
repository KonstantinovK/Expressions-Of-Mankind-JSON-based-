//
//  ViewController.swift
//  Expressions Of Mankind (JSON based)
//
//  Created by MacBook on 08.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lableForExpression: UILabel!
    
    var urlAddress = "https://api.fisenko.net/v1/quotes/en/random"

    //MARK: -Private methods
    
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
        guard let url = URL(string: urlAddress) else { return }
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
                    self.lableForExpression.text = """
                    \(expression.text)
                  - \(expression.author.name)
                """
                }
            } catch let error {
                self.failedAlert()
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    //MARK: -IBActions
    
    @IBAction func fetchExpressionButton(_ sender: Any) {
        fetchExpression()
    }
    
    @IBAction func languageSwitchAction(_ sender: UISwitch) {
        if sender.isOn {
            urlAddress = "https://api.fisenko.net/v1/quotes/en/random"
        } else {
            urlAddress = "https://api.fisenko.net/v1/quotes/ru/random"
        }
    }
}

