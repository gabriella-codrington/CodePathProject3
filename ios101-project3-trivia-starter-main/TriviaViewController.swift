//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Gabriella Codrington on 10/5/23.
//

import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var questionNumberLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var questionTextView: UITextView!
    
    @IBOutlet weak var multipleChoiceOneButton: UIButton!
    @IBOutlet weak var multipleChoiceTwoButton: UIButton!
    @IBOutlet weak var multipleChoiceThreeButton: UIButton!
    @IBOutlet weak var multipleChoiceFourButton: UIButton!
    
    private var trivia = [TriviaQAndA]()
    private var selectedQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trivia = triviaQuestions()
        configure(with: trivia[selectedQuestionIndex])
        
        // Do any additional setup after loading the view.
    }
    private func triviaQuestions() -> [TriviaQAndA]{
        let question1 = TriviaQAndA(questionNumber: .one, category: .one, question: .one, multipleChoiceOne: .one, multipleChoiceTwo: .one, multipleChoiceThree: .one, multipleChoiceFour: .one)
        let question2 = TriviaQAndA(questionNumber: .two, category: .two, question: .two, multipleChoiceOne: .two, multipleChoiceTwo: .two, multipleChoiceThree: .two, multipleChoiceFour: .two)
        let question3 = TriviaQAndA(questionNumber: .three, category: .three, question: .three, multipleChoiceOne: .three, multipleChoiceTwo: .three, multipleChoiceThree: .three, multipleChoiceFour: .three)
        
        return [question1, question2, question3]
    }
    
    
    private func configure(with trivia: TriviaQAndA){
        questionNumberLabel.text = trivia.questionNumber.number
        categoryLabel.text = trivia.category.description
        questionTextView.text = trivia.question.description
        
        multipleChoiceOneButton.setTitle(trivia.multipleChoiceOne.description, for: .normal)
        multipleChoiceTwoButton.setTitle(trivia.multipleChoiceTwo.description, for: .normal)
        multipleChoiceThreeButton.setTitle(trivia.multipleChoiceThree.description, for: .normal)
        multipleChoiceFourButton.setTitle(trivia.multipleChoiceFour.description, for: .normal)  
    }
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
