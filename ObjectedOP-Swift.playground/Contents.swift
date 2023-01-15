import UIKit

// class and structur

struct Urun { // ilk ataması yapılmadan yaratılır genellikle-- optional olmalı
    
    var ad:String? // opsiyonel olduğunu göstermek için ? kullanılır
    var fiyat:Double?
    
    
}


class Araba {
    var renk:String?
    var kapasite:Int?
}


// create an object- use the class and struct
var laptop = Urun()
var bmw = Araba()


laptop.ad = "macbook"
laptop.fiyat = 111.12

bmw.kapasite = 5
bmw.renk = "kırmızı"

print(laptop.fiyat!) // opsiyaonel tanımlandığı için yazdırıken ! kullanman gerekiyor

//güncelleme yaparken

laptop.fiyat = 11.1
print(laptop.fiyat!)// üzerine yazdık güncelleme yaptık tekrar yazdıralım

if let temp = bmw.renk{
    print(temp)
} // bu yazımı kullanman gerekiyor genellikle çünkü opsiyonel bir tanımlama yapıldı yukarıda ! kullanraak yazdırdık çünkü içinin dolu olduğundan emindik ama ileride değer alıtken kullancıddan eğer içi dolu değilse diye kontol ediyor olman gerekiyor

var tv = Urun()
var limuzin = Araba()

tv.ad = "LCD"
tv.fiyat = 11.111111

limuzin.renk = "mor"
limuzin.kapasite = 8

// classtan çekilen değer yazdırılırken :

if let renkTemp = limuzin.renk {
    print("limuzin rengi : \(renkTemp)")
}

// dolu olduğundan emin olduğun deperleri yazdırıken de ! kullanarak yazdırabilirsin

print("limuzin kapasitesi : \(limuzin.kapasite!)")

