//
//  ViewController.swift
//  OscarMiralles_MAPD714_Test
//
//  Created by Oscar Miralles on 2022-10-27.
//  Student ID: 301250756
//

import UIKit

class ViewController: UIViewController {
    
    //Item class collection inicialization
    var items = [Item]()
    //Variable to estore list name
    var listName: String = "My Shopping List"
    
    //MARKS Outlets
    @IBOutlet weak var textListNameH: UITextField!
    @IBOutlet weak var textListNameV: UITextField!
    @IBOutlet weak var textItem1: UITextField!
    @IBOutlet weak var textItem2: UITextField!
    @IBOutlet weak var textItem3: UITextField!
    @IBOutlet weak var textItem4: UITextField!
    @IBOutlet weak var textItem5: UITextField!
    @IBOutlet weak var textItem6: UITextField!
    @IBOutlet weak var textItem7: UITextField!
    @IBOutlet weak var textItem8: UITextField!
    @IBOutlet weak var textItem9: UITextField!
    @IBOutlet weak var textItem10: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Register events to capture the edit text changes
        textListNameH.addTarget(self, action: #selector(ViewController.textTittleHChange(_:)), for: .editingChanged)
        
        textListNameV.addTarget(self, action: #selector(ViewController.textTittleVChange(_:)), for: .editingChanged)
        
        textItem1.addTarget(self, action: #selector(ViewController.textItem1Change(_:)), for: .editingChanged)
        
        textItem2.addTarget(self, action: #selector(ViewController.textItem2Change(_:)), for: .editingChanged)
        
        textItem3.addTarget(self, action: #selector(ViewController.textItem3Change(_:)), for: .editingChanged)
        
        textItem4.addTarget(self, action: #selector(ViewController.textItem4Change(_:)), for: .editingChanged)
        
        textItem5.addTarget(self, action: #selector(ViewController.textItem5Change(_:)), for: .editingChanged)
        
        textItem6.addTarget(self, action: #selector(ViewController.textItem6Change(_:)), for: .editingChanged)
        
        textItem7.addTarget(self, action: #selector(ViewController.textItem7Change(_:)), for: .editingChanged)
        
        textItem8.addTarget(self, action: #selector(ViewController.textItem8Change(_:)), for: .editingChanged)
        
        textItem9.addTarget(self, action: #selector(ViewController.textItem9Change(_:)), for: .editingChanged)
        
        textItem10.addTarget(self, action: #selector(ViewController.textItem10Change(_:)), for: .editingChanged)
        
        //Inicialice components
        initComponents()
    }

    //Manage plus butons to increase de quantity
    @IBAction func increaseButtonPressed (_ sender: UIButton) {
        let button = sender as UIButton
        let currentTag = button.tag
        
        //Capture the button by tag
        switch currentTag {
        case 11:
            items[0].quantity += 1
            if let textField = self.view.viewWithTag(6) as? UITextField {
                textField.text! = String(items[0].quantity)
            }
            if let textField = self.view.viewWithTag(26) as? UITextField {
                textField.text! = String(items[0].quantity)
            }
        case 12:
            items[1].quantity += 1
            if let textField = self.view.viewWithTag(7) as? UITextField {
                textField.text! = String(items[1].quantity)
            }
            if let textField = self.view.viewWithTag(27) as? UITextField {
                textField.text! = String(items[1].quantity)
            }
        case 13:
            items[2].quantity += 1
            if let textField = self.view.viewWithTag(8) as? UITextField {
                textField.text! = String(items[2].quantity)
            }
            if let textField = self.view.viewWithTag(28) as? UITextField {
                textField.text! = String(items[2].quantity)
            }
        case 14:
            items[3].quantity += 1
            if let textField = self.view.viewWithTag(9) as? UITextField {
                textField.text! = String(items[3].quantity)
            }
            if let textField = self.view.viewWithTag(29) as? UITextField {
                textField.text! = String(items[3].quantity)
            }
        case 15:
            items[4].quantity += 1
            if let textField = self.view.viewWithTag(10) as? UITextField {
                textField.text! = String(items[4].quantity)
            }
            if let textField = self.view.viewWithTag(30) as? UITextField {
                textField.text! = String(items[4].quantity)
            }
        case 31:
            items[0].quantity += 1
            if let textField = self.view.viewWithTag(26) as? UITextField {
                textField.text! = String(items[0].quantity)
            }
            items[0].quantity += 1
            if let textField = self.view.viewWithTag(6) as? UITextField {
                textField.text! = String(items[0].quantity)
            }
        case 32:
            items[1].quantity += 1
            if let textField = self.view.viewWithTag(27) as? UITextField {
                textField.text! = String(items[1].quantity)
            }
            if let textField = self.view.viewWithTag(7) as? UITextField {
                textField.text! = String(items[1].quantity)
            }
        case 33:
            items[2].quantity += 1
            if let textField = self.view.viewWithTag(28) as? UITextField {
                textField.text! = String(items[2].quantity)
            }
            if let textField = self.view.viewWithTag(8) as? UITextField {
                textField.text! = String(items[2].quantity)
            }
        case 34:
            items[3].quantity += 1
            if let textField = self.view.viewWithTag(29) as? UITextField {
                textField.text! = String(items[3].quantity)
            }
            if let textField = self.view.viewWithTag(9) as? UITextField {
                textField.text! = String(items[3].quantity)
            }
        case 35:
            items[4].quantity += 1
            if let textField = self.view.viewWithTag(30) as? UITextField {
                textField.text! = String(items[4].quantity)
            }
            if let textField = self.view.viewWithTag(10) as? UITextField {
                textField.text! = String(items[4].quantity)
            }
        default: print("Error")
        }
    }
    
    //Manage minus butons to decrease de quantity
    @IBAction func decraseButtonPressed (_ sender: UIButton) {
        let button = sender as UIButton
        let currentTag = button.tag
        
        //Capture the button by tag
        switch currentTag {
        case 16:
            if ((items[0].quantity - 1) < 0) {
                print("Quantity Error!")
            }else {
                items[0].quantity -= 1
                if let textField = self.view.viewWithTag(6) as? UITextField {
                    textField.text! = String(items[0].quantity)
                }
                if let textField = self.view.viewWithTag(26) as? UITextField {
                    textField.text! = String(items[0].quantity)
                }
            }
        case 17:
            if ((items[1].quantity - 1) < 0) {
                print("Quantity Error!")
            }else {
                items[1].quantity -= 1
                if let textField = self.view.viewWithTag(7) as? UITextField {
                    textField.text! = String(items[1].quantity)
                }
                if let textField = self.view.viewWithTag(27) as? UITextField {
                    textField.text! = String(items[1].quantity)
                }
            }
        case 18:
            if ((items[2].quantity - 1) < 0) {
                print("Quantity Error!")
            }else {
                items[2].quantity -= 1
                if let textField = self.view.viewWithTag(8) as? UITextField {
                    textField.text! = String(items[2].quantity)
                }
                if let textField = self.view.viewWithTag(28) as? UITextField {
                    textField.text! = String(items[2].quantity)
                }
            }
        case 19:
            if ((items[3].quantity - 1) < 0) {
                print("Quantity Error!")
            }else {
                items[3].quantity -= 1
                if let textField = self.view.viewWithTag(9) as? UITextField {
                    textField.text! = String(items[3].quantity)
                }
                if let textField = self.view.viewWithTag(29) as? UITextField {
                    textField.text! = String(items[3].quantity)
                }
            }
        case 20:
            if ((items[4].quantity - 1) < 0) {
                print("Quantity Error!")
            }else {
                items[4].quantity -= 1
                if let textField = self.view.viewWithTag(10) as? UITextField {
                    textField.text! = String(items[4].quantity)
                }
                if let textField = self.view.viewWithTag(30) as? UITextField {
                    textField.text! = String(items[4].quantity)
                }
            }
        case 36:
            if ((items[0].quantity - 1) < 0) {
                print("Quantity Error!")
            }else {
                items[0].quantity -= 1
                if let textField = self.view.viewWithTag(26) as? UITextField {
                    textField.text! = String(items[0].quantity)
                }
                if let textField = self.view.viewWithTag(6) as? UITextField {
                    textField.text! = String(items[0].quantity)
                }
            }
        case 37:
            if ((items[1].quantity - 1) < 0) {
                print("Quantity Error!")
            }else {
                items[1].quantity -= 1
                if let textField = self.view.viewWithTag(27) as? UITextField {
                    textField.text! = String(items[1].quantity)
                }
                if let textField = self.view.viewWithTag(7) as? UITextField {
                    textField.text! = String(items[1].quantity)
                }
            }
        case 38:
            if ((items[2].quantity - 1) < 0) {
                print("Quantity Error!")
            }else {
                items[2].quantity -= 1
                if let textField = self.view.viewWithTag(28) as? UITextField {
                    textField.text! = String(items[2].quantity)
                }
                if let textField = self.view.viewWithTag(8) as? UITextField {
                    textField.text! = String(items[2].quantity)
                }
            }
        case 39:
            if ((items[3].quantity - 1) < 0) {
                print("Quantity Error!")
            }else {
                items[3].quantity -= 1
                if let textField = self.view.viewWithTag(29) as? UITextField {
                    textField.text! = String(items[3].quantity)
                }
                if let textField = self.view.viewWithTag(9) as? UITextField {
                    textField.text! = String(items[3].quantity)
                }
            }
        case 40:
            if ((items[4].quantity - 1) < 0) {
                print("Quantity Error!")
            }else {
                items[4].quantity -= 1
                if let textField = self.view.viewWithTag(30) as? UITextField {
                    textField.text! = String(items[4].quantity)
                }
                if let textField = self.view.viewWithTag(10) as? UITextField {
                    textField.text! = String(items[4].quantity)
                }
            }
        default: print("Error")
        }
    }
    
    //On save button pressed print the actual values
    @IBAction func saveButtonPressed (_ sender: UIButton) {
        print("-------------------")
        print(listName)
        print("-------------------")
        
        for i in 0...4 {
            print(items[i].name + " " + String(items[i].quantity))
        }
    }
    
    //On cancel button pressed restores the originals value
    @IBAction func cancelButtonPressed (_ sender: UIButton) {
        initComponents()
    }
    
    //Inicialize all the values
    func initComponents() {
        listName = "My Shopping List"
        textListNameV.text = listName
        textListNameH.text = listName
        if (!items.isEmpty) { items.removeAll() }
        items.append(Item.init(name: "Potatoes", quantity: 1))
        items.append(Item.init(name: "Tomatoes", quantity: 5))
        items.append(Item.init(name: "Apples", quantity: 10))
        items.append(Item.init(name: "Bags", quantity: 2))
        items.append(Item.init(name: "Banannas", quantity: 6))
        
        for i in 1...5 {
            if let textField = self.view.viewWithTag(i) as? UITextField {
                textField.text! = items[i - 1].name
            }
            if let textField = self.view.viewWithTag(i + 20) as? UITextField {
                textField.text! = items[i - 1].name
            }
            if let textField = self.view.viewWithTag(i + 5) as? UITextField {
                textField.text! = String(items[i - 1].quantity)
            }
            if let textField = self.view.viewWithTag(i + 25) as? UITextField {
                textField.text! = String(items[i - 1].quantity)
            }
        }
    }
    
    //Capture changes in text view
    @IBAction func textTittleVChange (_ sender: Any) {
        listName = textListNameV.text ?? ""
        
        textListNameH.text = textListNameV.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textTittleHChange (_ sender: Any) {
        listName = textListNameH.text ?? ""
        
        textListNameV.text = textListNameH.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textItem1Change (_ sender: Any) {
        items[0].name = textItem1.text ?? ""
        
        textItem6.text = textItem1.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textItem2Change (_ sender: Any) {
        items[1].name = textItem2.text ?? ""
        
        textItem7.text = textItem2.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textItem3Change (_ sender: Any) {
        items[2].name = textItem3.text ?? ""
        
        textItem8.text = textItem3.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textItem4Change (_ sender: Any) {
        items[3].name = textItem4.text ?? ""
        
        textItem9.text = textItem4.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textItem5Change (_ sender: Any) {
        items[4].name = textItem5.text ?? ""
        
        textItem10.text = textItem5.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textItem6Change (_ sender: Any) {
        items[0].name = textItem6.text ?? ""
        
        textItem1.text = textItem6.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textItem7Change (_ sender: Any) {
        items[1].name = textItem7.text ?? ""
        
        textItem2.text = textItem7.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textItem8Change (_ sender: Any) {
        items[2].name = textItem8.text ?? ""
        
        textItem3.text = textItem8.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textItem9Change (_ sender: Any) {
        items[3].name = textItem9.text ?? ""
        
        textItem4.text = textItem9.text ?? ""
    }
    
    //Capture changes in text view
    @IBAction func textItem10Change (_ sender: Any) {
        items[4].name = textItem10.text ?? ""
        
        textItem5.text = textItem10.text ?? ""
    }
    
}

