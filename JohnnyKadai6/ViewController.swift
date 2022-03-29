//
//  ViewController.swift
//  JohnnyKadai6
//
//  Created by Johnny Toda on 2022/03/28.
//

import UIKit

final class ViewController: UIViewController {
    private let randomValue = Int.random(in: 1...100)
    @IBOutlet private weak var valueLabel: UILabel!

    @IBOutlet private weak var slider: UISlider!

    @IBAction private func adjustTheValue(_ sender: Any) {
    }

    @IBAction private func judgeTheResult(_ sender: Any) {
        let sliderValue = Int(slider.value)

        guard randomValue == sliderValue else {
            showAlert(message: JudgementResult.incorrect + "\(sliderValue)")
            return
        }
        showAlert(message: JudgementResult.correct + "\(sliderValue)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        valueLabel.text = "\(randomValue)"
    }



    private func showAlert(message: String) {
        let alertController = UIAlertController(title: "結果", message: message, preferredStyle: .alert)

        alertController.addAction(UIAlertAction(title: "再挑戦する", style: .default) { _ in
            self.viewDidLoad()
        })

        present(alertController, animated: true, completion: nil)
    }
}
