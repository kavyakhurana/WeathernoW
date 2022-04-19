//
//  HomepageViewController.swift
//  WeatherAppIOS
//
//  Created by Bilge Çakar on 18.04.2022.
//

import UIKit

class HomepageViewController: UIViewController
{

      
    @IBOutlet weak var search: UITextField!
    var weather : Weather?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        search.delegate = self
   
    }
    
    

    @IBAction func searcPressed(_ sender: Any){
        search.endEditing(true)
        print(search.text!)
    }
    
}

extension HomepageViewController : UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        search.endEditing(true)
        print(search.text!)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if search.text != ""
        {
            return true
        }
        else
        {
            search.placeholder = "Enter the city name"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        search.text = ""
    }
}
