//
//  Musicians.swift
//  MusicianClass
//
//  Created by L60809MAC on 23.02.2022.
//

import Foundation

enum MusicianType { // Bir şeyin kategorisi oluşturulurken enum kullanılır: Müzisyenin tipini belirtmek için MusicianType adında enum oluşturduk ve aşağıda case lere müzüsyen tiplerini tanımlıyoruz, öreneğin giterist baterist kemanist gibi..
    case LeadGuiter // case lerde kategorileri isteğe bağlı belirleniyor
    case Vocalist
    case Drummer
    case Basssist
    case Violenist
}

class Musicians { // Müzüsyenler sınıfını oluşturduk
    
    // Sınıfımızda oluşturacağımız müzisyenlerin (objelerin) özelliklerini tanımlıyoruz
    
    // Property
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    // property leri initialize etmek için özel bir method var o kullanılabilir ya da property lere değer atanabilir ( = "" , = 0) gibi
    // Initializer (Constructor)
    
    init(nameInit:String,ageInit:Int,instrumentInit:String,typeInit:MusicianType) { // Bu kod bloğu içerisine yazılanlar, Musicians sınıfından bir obje oluşturulunca yapılacaktır
        
        // Musicians sınıfından bir obje oluşturduğumda oluşturduğum propertylerin değerinin ne olacağımı init fonksiyonunun altında belirtebilirim
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
    }
    
    func sing() { // Musicians sınıfının içinde sing adında fonksiyon oluşturduk
        print("nothing else matters")
    }
    
    // Access Levels (Erişilebilirlik Seviyeleri)
    // private (Çok özel, nreye tanımlandıysa, hangi sınıfa tanımlandıysa orada kullanılır)
    // fileprivet (Hangi dosyaya tanımlandıysa, o swift dosyasına tanımlandıysa orada kullanılır)
    // internal (Normal oluşturulan default değer)
    // public (Başka bir yerden ulaşılabilir fakat içeriği değiştirilemez, kullanılabilir) , genelde dış kütüphanelerde kullanılır
    // open (Dosyalara, oluşturulan methodlara başka projelerden ulaşılabilir, içi değiştirilebilir) , genelde dış kütüphanelerde kullanılır
    
    private func test() { // Bu fonksiyonu private tanımladığımız için sadece Musicians da çağırılabilir, main de ve SuperMusicians da çağırılamaz, miras alma yöntemiyle de private tanımlanan methoda ulaşılamaz
        print("test")
    }
    
}
