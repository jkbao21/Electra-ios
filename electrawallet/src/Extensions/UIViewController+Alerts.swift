//
//  UIViewController+Alerts.swift
//  breadwallet
//
//  Created by Adrian Corscadden on 2017-07-04.
//  Copyright © 2017 breadwallet LLC. All rights reserved.
//

import UIKit

extension UIViewController {

    func showErrorMessage(_ message: String) {
        let alert = UIAlertController(title: S.Alert.error, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: S.Button.ok, style: .default, handler: nil))
        alert.view.tintColor = .black
        present(alert, animated: true, completion: nil)
    }
    
    func showErrorMessageAndDismiss(_ message: String) {
        let alert = UIAlertController(title: S.Alert.error, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: S.Button.ok, style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        alert.view.tintColor = .black
        present(alert, animated: true, completion: nil)
    }

    func showAlert(title: String, message: String, buttonLabel: String = S.Button.ok) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: buttonLabel, style: .default, handler: nil))
        alertController.view.tintColor = .black
        present(alertController, animated: true, completion: nil)
    }
    
    func showAlertAndDismiss(title: String, message: String, buttonLabel: String = S.Button.ok) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: buttonLabel, style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
        }))
        alertController.view.tintColor = .black
        present(alertController, animated: true, completion: nil)
    }
}
