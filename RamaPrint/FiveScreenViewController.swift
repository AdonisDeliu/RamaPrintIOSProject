//
//  FiveScreenViewController.swift
//  RamaPrint
//
//  Created by Safet MULLAABAZI on 20/07/2020.
//  Copyright © 2020 Safet MULLAABAZI. All rights reserved.
//

import UIKit
import SQLite3

class FiveScreenViewController: UIViewController {
    
    var db: OpaquePointer?
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldRanking: UITextField!
    
    @IBAction func buttonSave(_ sender: Any) {
        
        let name = textFieldName.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let powerrank = textFieldRanking.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if(name?.isEmpty)!{
            
            print("Name empty")
            return;
        }
        if(powerrank?.isEmpty)!{
            print("powerrank empty")
            return;
        }
        
        var stmt: OpaquePointer?
        
        let insertQuery = "INSERT INTO Heroes (name, powerrank) VALUES (?, ?)"
        
        if sqlite3_prepare(db, insertQuery, -1, &stmt, nil) != SQLITE_OK{
            print("Error binding query")
        }
        
        if sqlite3_bind_text(stmt, 1, name, -1, nil) != SQLITE_OK{
            print("Error binding name")
        }
        
        if sqlite3_bind_int(stmt, 2, (powerrank! as NSString).intValue) != SQLITE_OK{
            print("Error binding name")
        }
        
        if  sqlite3_step(stmt) == SQLITE_DONE {
            print("Hero saved sucesfuly")
        }
    }
    
    
    @IBAction func backButton5(_ sender: Any) {
        
        self.performSegue(withIdentifier: "HomeSegue5", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileUrl = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("HeroDatabase.sqlite")
        
        if sqlite3_open(fileUrl.path, &db) != SQLITE_OK{
            
            print("Error opening database")
            return
        }
        
        let createTableQuery = "CREATE TABLE IF NOT EXISTS Heroes (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, powerrank INTEGER)"
        
        if sqlite3_exec(db, createTableQuery, nil, nil, nil) != SQLITE_OK{
            print("Error creating table")
            return
        }
        
        print("Everything is fine")
    }
    
}
