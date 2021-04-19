//
//  ViewController.swift
//  DZ4
//
//  Created by Alexey on 15.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        
        //        1
        print(nameCount())
        
        //        2
        print(suffix())
        
        //        3
        print(nameSurname())
        
        //        4
        print(iReverse(phrase: "ротатор"))
        
        //        5
        print(comma())
        
        //        6
        print(passwordCreator(password: "123Qe+"))
        
        //        7
        print(sortedNums())
        
        //       8
        print(translite(word: "морДа"))
        
//        9
        print(selection(words: ["lada", "sedan", "baklazhan"]))
    }
    
    
    //     1
    func nameCount(){
        let name = "Алексей"
        print(name.count)
    }
    
    //       2
    func suffix(){
        let fatherName = "Валентинович"
        if  fatherName.hasSuffix("ич"){
            print("есть ич")
        }else {
            print("нет на")
        }
        if fatherName.hasSuffix("на"){
            print("есть на")
        }else {
            print("нет  ич")
        }
    }
    
    //      3
    func nameSurname(){
        let nameSurname = "АлексейНоваковский"
        let index = nameSurname.firstIndex(of: "Н") ?? nameSurname.endIndex
        let str1 = nameSurname[..<index]
        print(str1)
        let index2 = nameSurname.firstIndex(of: "Н") ?? nameSurname.endIndex
        let str2 = nameSurname[index2...]
        print(str2)
        let str3 = str1 + " " + str2
        print(str3)
    }
    
    //        4
    
    func iReverse(phrase: String) -> String{
        var phrase = phrase
        var reverse = [Character]()
        let count = phrase.count
        for i in 0..<count{
            reverse.append(phrase.removeLast())
        }
        return String(reverse)
    }
    
    //        5
    
    func comma(){
        let namber = 3451235544
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let formattedNumber = numberFormatter.string(from: NSNumber(value: namber))
        print(formattedNumber)
    }
    
    //        6
    
    func passwordCreator(password: String) -> Bool {
        if password.isEmpty{
            return false
        }
        var counter = 0
        let char = password.first{char -> Bool in
            return char.isNumber
        }
        if char != nil{
            counter += 1
            print("password class a)")
        }
        let uppercased = password.first {char -> Bool in
            return char.isUppercase
        }
        if uppercased != nil{
            counter += 1
            print("password class b)")
        }
        let lowercased = password.first {char -> Bool in
            return char.isLowercase
        }
        if lowercased != nil{
            counter += 1
            print("password class c)")
        }
        let symbol = password.first {char -> Bool in
            return char.isCurrencySymbol || char.isSymbol || char.isPunctuation || char.isMathSymbol
        }
        if symbol != nil{
            counter += 1
            print("password class d)")
        }
        print("password: \(password) is \(counter == 4 ? "Valid class e)" : "Invalid")")
        return counter == 4
        
    }
    
    //        7
    
    func sortedNums(){
        var nums = [1, 2, 2, 4, 8, 3, 1, 13]
        var removeDooble = Array(Set(nums))
        print(removeDooble)
    }
    
    //          8
    
    func translite(word: String){
        let dictionary: [Character:String] = ["A": "A", "Б": "B", "В": "V", "Г": "G", "Д": "D", "Е": "Е", "Ё": "YO", "Ж": "ZH", "З": "Z", "И": "I", "Й": "Y", "К": "K", "Л": "L", "М": "M", "Н": "N", "О": "O", "П": "P", "Р": "R", "C": "S", "T": "T", "У": "U", "Ф": "F", "X": "KH", "Ц": "TS", "Ч": "CH", "Ш": "SH", "Щ": "SCH", "Ъ": "", "Ы": "Y", "Ь": "", "Э": "E", "Ю": "YU", "Я": "YA","a": "a", "б": "b", "в": "v", "г": "g", "д": "d", "е": "е", "ё": "yo", "ж": "zh", "з": "z", "и": "i", "й": "y", "к": "k", "л": "l", "м": "m", "н": "n", "о": "o", "п": "p", "р": "r", "c": "s", "t": "t", "у": "u", "ф": "f", "x": "kh", "ц": "ts", "ч": "ch", "ш": "sh", "щ": "sch", "ъ": "", "ы": "y", "ь": "", "э": "e", "ю": "yu", "я": "ya"]
        
        var newWord = ""
        for char in word{
            newWord.append(dictionary[char] ?? String(char))
            
        }
        print(newWord)
    }
    //        func translite(str: String) -> String{
    //            return str
    //                .applyingTransform(.toLatin, reverse: false)!
    //                .applyingTransform(.stripDiacritics, reverse: false)!
    //        }
    //        print(translite(str: "ЯЗЗЬ"))
    
    
    //        9
    func selection(words: [String]){
        
        
    }
    
}

