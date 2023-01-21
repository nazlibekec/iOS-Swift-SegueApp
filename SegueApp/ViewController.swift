//
//  ViewController.swift
//  SegueApp
//
//  Created by Nazlı on 12.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Lifecycle
        print("viewDidLoad function called" ) //Henüz kullanıcı görmedi. //sadece açılış harici çalışmaz.
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called") //gitti. 2. tıklama
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called") //her an gidebilir. 2. tıklama
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called") //Kullanıcı görmek üzere.
        
        nameTextField.text = ""
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called") //Kullanıcı gördü.
    }
    
    
    
    @IBAction func nextClicked(_ sender: Any) {
        
        userName = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil) //gideceği yer identifier ismi yazılacak. sender bilgi gönderme yerini boş yaptık.
    }
    
    // Segue olmadan önce yapılacak işlemleri buraya yaz.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" { //eğer identifier ı toSecondVC ise çalıştır.
            let destinationVC = segue.destination as? SecondViewController  //gideceği yer
            destinationVC?.myName = userName
            
        }
    }
    
}

