//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by L60809MAC on 23.02.2022.
//

import Foundation

// SperMusician sınıfımız Musicians sınıfının bütün özelliklerini barındırsın aynı zamanda ondan farklı özelliklere de sahip olsun istiyoruz

class SuperMusicians : Musicians { // SuperMusicians : Musicians bu kullanım ile SuperMusicians sınıfı Musicians sınıfından miras alıyor. Musicians sınıfındaki methodlara vesaire ulaşabiliyoır
    
    func sing2() {
        print("enter night")
    }
    
    override func sing() { // sing() fonksiyonu Musicians da olduğu için, SuperMusicians zaten miras yoluyla bu sınıfı kullanabiliyor. Biz burada miras aldığımız                       sing() sınıfının üzerine bir şeyler eklemek istersek func un başına override yazmalıyız
        super.sing() // super, miras alınan üst sınıfı belirtir: burada miras aldığım sınıftan sing() func unu çağır demek
        print("exit light")
    }
    
}
