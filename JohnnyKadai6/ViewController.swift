//
//  ViewController.swift
//  JohnnyKadai6
//
//  Created by Johnny Toda on 2022/03/28.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var valueLabel: UILabel!

    @IBOutlet private weak var slider: UISlider!

    @IBAction private func adjustTheValue(_ sender: Any) {
    }

    @IBAction private func judgeTheResult(_ sender: Any) {
        showAlert(message: "あなたの値: \(Int(slider.value))")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        valueLabel.text = "\(Int.random(in: 1...100))"
    }

    private func showAlert(message: String) {
        let alertController = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "再挑戦", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}
