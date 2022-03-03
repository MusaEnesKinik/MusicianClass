//
//  main.swift
//  MusicianClass
//
//  Created by L60809MAC on 23.02.2022.
//

import Foundation

/* let james = Musicians() // James Musicians() sınıfından oluşturduğumuz bir obje

// James objesinin property lerini değiştirebiliyoruz
james.age = 50
james.name = "James Hetfield"
james.instrument = "Guitar"

print(james.age) */

let james = Musicians(nameInit: "James", ageInit: 50, instrumentInit: "Guitar", typeInit: .Vocalist)
/*print(james.age)
print(james.type)*/
james.sing()


// SuperMusicians sınıfına henüz bir şey yazmadığımız halde Musicians da miras aldığı için oluşturulan kirk objesi Musicians da ki özelliklere sahip olabiliyor
// Burada kirk SuperMusicians sınıfından oluşturduğumuz bir obje olduğu için Musicians dan miras alabiliyor, fakat Musicians sınıfı SuperMusicians sınıfından miras almadığı için Musicians da ki objeler SuperMusicians sınıfının özelliklerini kullanamaz
let kirk = SuperMusicians(nameInit: "Kirk", ageInit: 55, instrumentInit: "Guitar", typeInit: .LeadGuiter)
kirk.sing()
//kirk.sing2()
