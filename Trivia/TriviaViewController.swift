import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!

    var currentQuestionIndex = 0

    let questions = [
        "What is the capital of France?",
        "What is Japan's currency?",
        "What is the largest mammal?"
    ]

    let answers = [
        ["London", "Berlin", "Paris", "Madrid"],
        ["Dollar", "Yen", "Rial", "Dirham"],
        ["Elephant", "Giraffe", "Blue Whale", "Polar Bear"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }

    func updateQuestion() {
        if currentQuestionIndex < questions.count {
            questionLabel.text = questions[currentQuestionIndex]

            answerButton1.setTitle(answers[currentQuestionIndex][0], for: .normal)
            answerButton2.setTitle(answers[currentQuestionIndex][1], for: .normal)
            answerButton3.setTitle(answers[currentQuestionIndex][2], for: .normal)
            answerButton4.setTitle(answers[currentQuestionIndex][3], for: .normal)
        } else {
            currentQuestionIndex = 0
            updateQuestion()
        }
    }


    @IBAction func answerButton1Tap(_ sender: UIButton) {
        goToNextQuestion()
    }

    @IBAction func answerButton2Tap(_ sender: UIButton) {
        goToNextQuestion()
    }

    @IBAction func answerButton3Tap(_ sender: UIButton) {
        goToNextQuestion()
    }


    @IBAction func answerButton4Tap(_ sender: UIButton) {
        goToNextQuestion()
    }
    
    func goToNextQuestion() {
        currentQuestionIndex += 1
        updateQuestion()
    }
}
