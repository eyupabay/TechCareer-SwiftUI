

//1) Ekrana 10 kez “Hello World!” yazdır.
for item in 1...10{
    print("Hello World!")
}
//2) 43 sayısına kadar olan TEK sayıları print et
for item in 1...43{
    if item % 2 != 0{
        print(item)
    }
}

//3) Dışarıdan aldığı metnin soluna “TR-” ekleyip döndüren metot
func trEkle(metin:String){
    let yeniMetin = "TR-" + metin
    print(yeniMetin)
}
print(trEkle(metin: "Istanbul"))
//4) Dışarıdan girilen bir sayının rakamları toplamını bulan program. ( Örneğin kullanıcı 431 girdiğinde sonuç: 8 olacak)

func rakamTopla(sayi: Int)->Int{
    var rakam : Int = sayi%10
    var rakam2 : Int = (sayi%100 - rakam)/10
    var rakam3 : Int = sayi/100
    return rakam+rakam2+rakam3
}
print(rakamTopla(sayi: 431))

//5) *** Doğduğum günden bugüne kaç gün geçtiğini gösteren metot? Dışarıdan date alacak int dönüyor.

//6) Dışarıdan girilen üç sayıdan en büyüğünü bulan metot.

func maksSayi(sayi1: Int, sayi2:Int, sayi3:Int) -> Int{
    var maksDeger : Int
    if(sayi1 > sayi2 && sayi1 > sayi3){
        maksDeger = sayi1
    }
    else if(sayi2 > sayi1 && sayi2 > sayi3){
        maksDeger = sayi2
    }
    else{
        maksDeger = sayi3
    }
    return maksDeger
}
print(maksSayi(sayi1: 3, sayi2: 4, sayi3: 5))

//7) Çarpma işlemini kullanmadan dışarıdan girilen iki sayının çarpımını bulan metot.

func carpma(sayi1: Int, sayi2: Int)->Int{
    var sonuc : Int = 0
    for x in 1...sayi1{
        sonuc = sonuc + sayi2
    }
    return sonuc
}
print(carpma(sayi1: 2, sayi2: 5))
//8) Dışarıdan bir metin alan aldığı metnin sadece ilk üç harfini döndüren fonksiyon.

func ilkUcHarf(metin: String)-> String{
    var ilkUcharf: String = String(metin.prefix(3))
    return ilkUcharf
}
print(ilkUcHarf(metin: "EyupAbay"))

//9) Dışarıdan bir isim dizisi alan ve isimleri tek tek print eden fonksiyon

func diziPrintle(isimListesi : [String]){
    for item in isimListesi{
        print(item)
    }
}
print(diziPrintle(isimListesi: ["Istanbul","Ankara","Bursa","İzmir","Antalya"]))

//10) Dışarıdan bir isim dizisi alan, ismin uzunluğu 4 den büyükse print eden fonksiyon.

func uzunDiziPrintle(diziListesi : [String]){
    for item in diziListesi{
        var sayici : Int = item.count
        if(sayici > 3){
            print(item)
        }else{
            continue
        }
    }
}
//11) Dışarıdan bir metin alan ve aldığı metinde kaç adet "e" harfi olduğunu söyleyen fonksiyon.

func harfBul(metin: String){
    
}

//12) Dışarıdan bir metin alan aldığı metnin sadece ilk harfini büyük diğer harflerini küçük yazacak şekilde yeni bir metin oluşturarak dönen fonksiyon.

func buyukHarf(metin: String)->String{
    var yeniMetin : String = metin.capitalized
    return yeniMetin
}
// Code inside modules can be shared between pages and other source files.
