

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var isJames = true // James mi adında değişken oluşturduk
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true // Görsele tıklanabilir yapıyoruz, (imageView a)
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        // let gestureRecognizer ; jest algılayıcı oluşturduk (değişken). UITapGestureRecognizer ; bunu görsele ekleyecek, görsele tıklandığında action da yazan fonksiyon içerisindeki işlemi yapacak
        
        imageView.addGestureRecognizer(gestureRecognizer) // gestureRecognizer da ki resmi imageview a ekledik
        
    }

    @objc func changePic() { // action içerisinde işlemin yapılacağı func u belirttik, o func u buraya yazdık
        
        if isJames == true { // Eğer james görseli seçili ise (isJames = true)
            
            imageView.image = UIImage(named: "lars") // imageView ın görselini resimlerden ismi 'lars' olanla değiştir
            myLabel.text = "Lars Urich" // Görselin altında ki Label da yazmasını istediğimiz metni belirttik
            isJames = false
            
        } else { // Eğer James seçili değilse (isJames = false)
            
            imageView.image = UIImage(named: "james") // imageView ın görselini resimlerden ismi 'james' olanla değiştir
            myLabel.text = "James Hetfield" // Görselin altında ki Label da yazmasını istediğimiz metni belirttik
            isJames = true
            
        }
        
        
        
    }

}

