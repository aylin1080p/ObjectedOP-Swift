import UIKit

// class and structur

struct Urun { // ilk ataması yapılmadan yaratılır genellikle-- optional olmalı
    
    var ad:String? // opsiyonel olduğunu göstermek için ? kullanılır
    var fiyat:Double?
    
    
}
// oop 


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


// struct ve class mantığı

// car analoji

class Araba{
    var renk : String?
    var hiz : Int?
    var calisiyormu : Bool?
    
    // add some functions
    func calistir(){ // parametre almıyor
        calisiyormu = true
    }
    
    func durdur () {
        calisiyormu = false
        hiz = 0
    }
    
    func hizlan(kackm:Int){ // dişardanhız alacak
        hiz! = hiz! + kackm
    }
    func yavaslat (kackm:Int) {
        
        if (hiz != 0)
        {
            hiz! = hiz! - kackm // hiz -=kackm
        }
    }
    
    func bilgiAl(){
        print("renk : \(renk!)")
        print("hiz : \(hiz!)")
        print("çalışıyor mu : \(calisiyormu!)")
        
        
    }
    
}
    var bmw = Araba() // create an object
    bmw.hiz = 180
    bmw.renk = "kirmizi"
    bmw.calistir()
bmw.bilgiAl() // tüm detayları yazdırmak için yazılmış fonksiyonu çağırıyoruz
    
    

// yavşlat ama önce çalışıyor mu kontrolü yapman lazım eğer çalışıyorsa hiz arrtır ya dan hiz sıfır değilse




bmw.hiz = 10
bmw.yavaslat(kackm: 30)
bmw.bilgiAl()




// bus anoloji
class Bus {
    var nereden: String?
    var nereye:String?
    var mevcutYolcu:Int?
    var kapasite:Int?
    
    
    func yolcuAl(yolcu:Int){
        mevcutYolcu! += yolcu
    }
    
    func yolcuIndir(yolcu:Int){
        mevcutYolcu! -= yolcu
    }
    
    func takeInfo(){
        print("kapasite: \(kapasite!)")
        print("nereden: \(nereden!)")
        print("nereye: \(nereye!)")
        print("mevcut yolcu: \(mevcutYolcu!)")
    }
    
}

var luksArtvin = Bus()
luksArtvin.kapasite = 100
luksArtvin.nereye = "Eskişehir"
luksArtvin.nereden = "Den Haag"
luksArtvin.mevcutYolcu = 4

luksArtvin.yolcuAl(yolcu: 2)
luksArtvin.takeInfo()



// closure -- method olmasına rağmen değişken gibi çağırılır ve yazılır ama içerde func işlemleri yapabilir

class Math{
    var x = 10
    var y = 20
    
    var topla:Int {
        get{
            return x + y
        }
        
        set(x2){
            self.x = x2
        }
        
    }
    
}
 var hesap = Math()
print(hesap.topla)
hesap.topla = 500
print(hesap.topla)

// set ve get methodlarını içerir.


