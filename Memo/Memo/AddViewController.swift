//
//  AddViewController.swift
//  Memo
//
//  Created by 해피스마일 on 03/12/2018.
//  Copyright © 2018 해피스마일. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var memoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func addButtonTapped(_ sender: Any) {
        memoArray.append(memoTextField.text!)
        navigationController?.popViewController(animated: true)
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
