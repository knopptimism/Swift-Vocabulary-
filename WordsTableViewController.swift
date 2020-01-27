//
//  WordsTableViewController.swift
//  Swift Vocabukarry
//
//  Created by Lambda_School_Loaner_268 on 1/26/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import UIKit
let Leviticus: VocabularyWord = VocabularyWord(word: "Leviticus", definition: "A book of the Bible.")
class WordsTableViewController: UITableViewController {
    
    
    var vocabWords: [VocabularyWord]  = [Leviticus]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word

        // Configure the cell...

        return cell
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "WordtoEntry" {
            // Where am I sending this to?

            guard let definitionVC = segue.destination as? DefinitionViewController else {
                return
            }
            guard let indexPath = tableView.indexPathForSelectedRow else { return
            }
            let word = vocabWords[indexPath.row]
            definitionVC.word = word.word
            definitionVC.definition = word.definition
            
           
        }
        
        
// Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}
//}
