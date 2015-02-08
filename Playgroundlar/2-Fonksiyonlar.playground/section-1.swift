// Playground - noun: a place where people can play

import UIKit


///////////////////////////////////////////////////////////
// 1. Fonksiyon
// Ekrana Merhaba! yazdirir
func merhabaDe() {
    println("Merhaba!")
}

merhabaDe()




///////////////////////////////////////////////////////////
// 2. Fonksiyon
// Arguman olarak verilen isimle birlikte merhaba yazdirir
func merhabaDe(isim:String) {
    println("Merhaba \(isim)")
}

// merhabaDe("Suleyman")

var isim = "Ahmet"
merhabaDe(isim)





///////////////////////////////////////////////////////////
// 3. Fonksiyon
// Soyleyecegi ifadeyi ve kisiyi arguman olarak alan
// ve bunlari birlestirerek ekrana yazdiran fonksiyon
func birseySoyle(cumle:String , isim:String) {
    println(cumle + " " + isim)
}


birseySoyle("Selam", "Mehmet")





///////////////////////////////////////////////////////////
// 4. Fonksiyon
// 2 sayi alan ve bunlarin toplamini geri donen fonksiyon
func topla(sayi1:Int, sayi2:Int) -> Int {
    let toplam = sayi1 + sayi2
    return toplam
}


var toplam = topla(123, 234)






///////////////////////////////////////////////////////////
// 5. Fonksiyon
// Bir sayi alip 2'ye bolup, bolum ve kalan degerlerini tuple
// olarak geriye donen fonksiyon
func ikiyeBol(sayi:Int) -> (Int,Int) {
    
    let bolum = sayi / 2
    let kalan = sayi % 2
    
    return (bolum,kalan)
}


var bolumVeKalan = ikiyeBol(100)
bolumVeKalan.0
bolumVeKalan.1


var (bolum,kalan) = ikiyeBol(101)
bolum
kalan

















