//
//  ViewController.swift
//  JohnnyKadai6
//
//  Created by Johnny Toda on 2022/03/28.
//

import UIKit

private enum JudgementMessage {
    static let correct = "あたり!\nあなたの値: "
    static let incorrect = "はずれ！\nあなたの値: "
}

final class ViewController: UIViewController {
    private var correctAnswer = CorrectAnswer()

    @IBOutlet private weak var valueLabel: UILabel!

    @IBOutlet private weak var slider: UISlider!

    @IBAction private func judgeTheResult(_ sender: Any) {
        let sliderValue = Int(slider.value)
        let message: String

        if correctAnswer.value == sliderValue {
            message = JudgementMessage.correct
        } else {
            message = JudgementMessage.incorrect
        }
        showAlert(message: message + "\(sliderValue)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateValueLabel()
    }

    private func updateValueLabel() {
        valueLabel.text = "\(correctAnswer.value)"
    }

    private func showAlert(message: String) {
        let alertController = UIAlertController(title: "結果", message: message, preferredStyle: .alert)

        alertController.addAction(UIAlertAction(title: "再挑戦する", style: .default) { _ in
            self.correctAnswer.regenerate()
            self.updateValueLabel()
        })

        present(alertController, animated: true, completion: nil)
    }
}
