//
//  AddController.swift
//  ToDoList
//
//  Created by 松丸真 on 2019/08/09.
//  Copyright © 2019 松丸真. All rights reserved.
//

import UIKit
//することの内容
var todoContents = [String]()

class AddController: UIViewController {
    @IBOutlet weak var TodoTextField: UITextField!
//    ボタンを押されたとき
    @IBAction func TodoAddButton(_ sender: Any) {
        //        変数に入力内容を格納
        todoContents.append(TodoTextField.text!)
        //        textFieldを空に
        TodoTextField.text = ""
        //        中身をUDに保存
        UserDefaults.standard.set(todoContents, forKey: "TodoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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
