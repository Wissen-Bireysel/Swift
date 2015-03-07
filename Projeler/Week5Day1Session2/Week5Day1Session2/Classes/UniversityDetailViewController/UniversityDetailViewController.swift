//
//  UniversityDetailViewController.swift
//  Week5Day1Session2
//
//  Created by Hasan Soysal on 07/03/15.
//  Copyright (c) 2015 Hasan Soysal. All rights reserved.
//

import UIKit

class UniversityDetailViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var textFieldCity : UITextField!
    
    var currentUniversity : University? = nil
    var cities : Array<String> = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cities = ["Ankara", "İstanbul", "Bursa", "Antalya", "Eskişehir", "Adana"]
        var pickerView : UIPickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        textFieldCity.inputView = pickerView
    }
    
    //MARK: - Actions
    
    func setupUIFor(university : University)
    {
        currentUniversity = university
    }
    
    //MARK: - Picker View
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return cities[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        textFieldCity.resignFirstResponder()
        textFieldCity.text = cities[row]
    }
    
    
    
    
    
    
    

}
