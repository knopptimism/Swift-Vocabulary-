//
//  DefinitionViewController.swift
//  Swift Vocabukarry
//
//  Created by Lambda_School_Loaner_268 on 1/26/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
   var word: String? // Mailbox for word to be passed into
    var definition: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        definitionLabel.text = word
        

        // Do any additional setup after loading the view.
        textView.text = definition
        
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
