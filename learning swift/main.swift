import Foundation




let name = "Ret"
var age = 14
var car  = "Bugatti"


print(name)
print(age)
print(car)


func sayBye() {
    print("bye bye")
    
 }

sayBye()





func square(number: Int) {
    print(number * number)
}


square(number: 15)





// sign in
let email = true
let password = true


if email && password {
    print("welcome back elprogrm")
    
} else {
    print("could not find steam account")
    
}

//registratsiya
let metirka = false
let pasport = true


if metirka || pasport {
    print("come in")
    
} else {
    print("bring your pasport or metrka")
    
}

//emptyArrey
let emptyArrey : [String] = ["Bosh emas bu arrey !!!"]

print("Bu Arrey boshmi?",emptyArrey.isEmpty)

//Arrey

let fruits = ["olma", "banan" , "shaftoli" , "o'rik"]
let meva = fruits[3]
print(meva)



let array = [1, 2, 3]
let dictionary: [String: Int] = ["U": 20, "Sen": 14, "Anavu": 5]
let set: Set<Int> = [1, 2, 3, 4, 5]

array.forEach { item in
    print(item)
    
}

dictionary.forEach { key , value in  
    print("key : \(key)")
    print("value : \(value)")
}

set.forEach {i in
    print("i : \(i)")
     
}



var name1: String = "Elshodbek"
var lastname: String = "Turmatov"


var fullname: String {
    return "\(name1) \(lastname)"
}

print(fullname)




//enum mavzusi


enum colours {
    case kok
    case qizil
    case sariq

}



var myfavoritecolours = colours.sariq


//switch bilan ishlash enumda



switch myfavoritecolours {
    case .kok: print("Yoshligimda shu rangni yaxshi ko'rganman")
    case .qizil: print("O'tgan yili shu rangni tanlagan edim")
    case .sariq: print("Hozirda shu rangni yaxshi ko'raman")
 default: break

}


//bugun 18 dars 12:45 nci secundan boshlayman @SWIFTGENIUS



enum Language: String {
    case spain = "SP"
    case portugal = "PR"
    case france = "FR"
}


let langu = Language.france

print(langu)
print("Rawvalue:", langu.rawValue)


//APPSection

enum APPSection: String, CaseIterable {
    case Bosh = "Home"
    case profile = "Profil"
    case sozlamalar = "Sattings" 
}

let allCases = APPSection.allCases

allCases.forEach { section in
    print("Saction value : ", section.rawValue)
    
}


//Advanced Enum #1
enum Message {
    case text(String)
    case image(imageName: String)
    case video(videoName: String, duration: Int)
}

let mes1 = Message.text("Is this yours?")
let mes2 = Message.image(imageName: "I thought it's not good image")
let mes3 = Message.video(videoName: "Stranger Things", duration: 50)

switch mes1 {
case .text(let message):
    print("This message: -> \(message)")

case let .image(imageName):
    print("This is image: -> \(imageName)")

case .video(let videoName, let duration):
    print("Video name: \(videoName), duration: \(duration)")
}


//Meni boshqa enum boyicha misolim

enum Kinolar {
    case avtobotlar(String)
    case strangerThings(String)
}

let kino1 = Kinolar.avtobotlar("Mening yaxshi ko'rganim eskisi")
let kino2 = Kinolar.strangerThings("Mening hozirgi yaxshi ko'radiganim")

switch kino2 {

case .avtobotlar(let name1):
    print("Avtobotlar: \(name1)")

case .strangerThings(let name2):
    print("Stranger Things: \(name2)")
}


//where bilan ishlash
enum ExamResult {
    case passed(score: Int)
    case failed(score: Int)
}

let result = ExamResult.failed(score: 10)

switch result {
case .passed(let score) where score > 80:
    print("Alo baho A \(score)")
case .failed(let score):
    print("Yomon baho F \(score)")
case .passed(score: let score):
    print("Siz o'rtacha bal oldingiz \(score)")
}

//enum ichida compyuter proprty yoki function
enum Telephones {
    case iphone, redmi, samsung
    
    var smartphones: String {
        switch self {
        case .iphone: return "Mening svimli telefonim"
        case .redmi: return "Hozirgi telefonim"
        case .samsung: return "Menga umuman yoqmaydigan telefon"
        }
    }
    var type: String {
        switch self {
        case .iphone:
            return "Zo'r"
        case .redmi:
           return "Yomon"
        case .samsung:
           return "Zo'r lekin yoqmaydi"
            
        }
    
        
    }

     func getOrder() -> Bool {
        switch self {
        case .iphone:
            return true
        case .redmi:
            return false
        case .samsung:
            return true
        }
     }

}

let typee = Telephones.iphone
let phones = Telephones.samsung
let order = Telephones.redmi 

print(phones.smartphones)
print(typee.type)
print(order.getOrder())


//Enum Advnced ga yana bir misol

enum NetworkStatus {
    case sucsess(date: String)
    case loadning
    case failure(error: String)
}

func handle (status: NetworkStatus)  {
    switch status {
    case .loadning:
        print("Yuklanmoqda...")
    case .sucsess(let date):
        print("Muvaffaqatli: \(date)")
    case .failure(let error):
        print("Xatolik yuz berdi: \(error)")
        
        
    }
}

let request = NetworkStatus.failure(error: "404 ERROR")
handle(status: request)

//Ozimdan misol enum advanced

enum Noutbook {
    case Macbook (MUAH: String)
    case Victus (Boladi: String)
    case MSI (zor: String)
}

func handle(Manashuni: Noutbook) {
    switch Manashuni {
    case .Macbook (let MUAH):
        print("Yoqimli: \(MUAH)")
    case .Victus (let Boladi):
        print("Tez qiziydi: \(Boladi)")
    case .MSI (let zor):
        print("Gaming minusi yo'q: \(zor)")
        
    }
}

let qaysiniTavsiyaQilasiz = Noutbook.MSI(zor:"Gamingga vashe kayf")
handle(Manashuni: qaysiniTavsiyaQilasiz)

//opitional mavzusi !!!
var iphonee: String? = nil

iphonee = "orginal"

if let orginal = iphonee {
    print("iphone \(orginal) ekan yess !!!")
}else {
    print("Iphone padelka ekan exx! ")
    
}

func checkiphonee(iphonee: String?)  {
    guard let orginal = iphonee else {
        print("Iphone padleka ekan exx !!!")
        return
    }
    print("Iphone \(orginal)ekan yess !!!")
    
}

checkiphonee(iphonee: iphonee)

//    ?? zaxira qiymat

let natija = iphonee ?? "Aldaganim uchun uzur"
print(natija)

//opitional mavzusi bo'yicha takrorlash .Soat mexanikami yoki yo'qmi? 
var soat: String? = nil

soat = "mexanika"

if let mexanika = soat {
    print("soat \(mexanika) ekan !!!")
    
}else {
    print("soat elektron soat  ekan bruhh")
    
}

func checkwatch(soat:String?) {
    guard let mexanika = soat else {
        print("soat tufta ekan shuncha pul ketdi !!!")
        return
    }
    print("soat\(mexanika) ekan aufff")
    
}
checkwatch(soat:soat)

let resul = soat ?? "Ustidan yozaman bu iflosni"
print(resul)

// Struck beginer darsi 22 dars !!!
struct Person {
    let name: String
    let age: Int
    let isMale: Bool
    let hasCar: Bool

    init(name: String, age: Int, hasCar: Bool, isMale: Bool) {
        self.name = name
        self.age = age
        self.hasCar = hasCar
        self.isMale = isMale
    }
}

let shahriyor = Person(
    name: "Asilbek",
    age: 15,
    hasCar: false,
    isMale: true
)

print(shahriyor.name)
print(shahriyor.hasCar)
print(shahriyor.isMale)

//Struck advancd darajadagi darslik

struct User {
 var name: String
 var age: Int
 var haslaptop: Bool
}

let User1 = User(name:"Doston", age: 15, haslaptop:false)
var User2 = User1
User2.name = "Qodirxon"
User2.haslaptop = true

print(User1.age)
print(User2.name)
print(User2.haslaptop)

// About extension (struck advanced 23-lesson)

struct Hp {
    var name : String
    var whatColor : String
    var islaptop : Bool
}

extension Hp {
    func turnOn () {
       print(whatColor, name, "turn on")
       
    }
    
}

extension Hp {
   func turnOf () {
    print(whatColor, name, islaptop, "turn of")
    
   }
    
}

var hp = Hp(name: "Hp", whatColor: "Blue", islaptop: true)
hp.turnOn()
hp.turnOf()
//class 24 dars bu code chatgptdan olingan 1#
class Student {
    var name: String

    init(name: String) {
        self.name = name
        print("\(name) yaratildi")
    }
}

let st = Student(name: "Ali")
//bu meni o'zm yozgan class misolim 
class Exam {
    var nameee = ""
    
    init(nameee: String) {
        print("\(nameee) qachon bo'lish anniq bo'di")
        self.nameee = nameee
    }
}

let whenexam = Exam(nameee: "Vocebulary exam")
print(whenexam.nameee)

//class mavzusi 25-dars #2 inharitence
class cars {
 let color: String
 let type: String
 let year: Int
 let name: String
 
 init(color: String, type: String, year:Int, name: String ) {
   self.color = color
   self.type = type
   self.year = year
   self.name = name
 }
 func whenYear() {
    print(year)
    
 }
}

class cobolt: cars{
  override func whenYear() {
    print("\(name) \(year) yilniki \(color) rangda turi esa \(type)")
    
  }
}

    

let acobalt = cobolt(color:"oq", type:"sedan", year:2021, name:"cobalt")

acobalt.whenYear()

//o'zimdan misol class ga

class Friands {
   let name: String
   let charakter: String
   let type: String
   let age: Int

  init(name:String, charakter:String, type:String, age:Int) {
    self.name = name
    self.charakter = charakter
    self.type = type
    self.age = age
  }
  
   func who() {
    print(name,charakter,type)
   }
} 

    class Aslbek: Friands{
      override func who() {
        print("\(name) is \(charakter) and \(type) and \(age)")
    
      }
    }
  

    class Doston: Friands {
      override func who() {
            print("\(name) is \(charakter) and \(type) and\(age)")
      }
    }
    class Qodirxon: Friands {
        override func who() {
            print("\(name) is \(charakter) and \(type) and \(age)")
        }
    }
    class Shahriyor: Friands {
        override func who() {
         print("\(name) is \(charakter) and \(type) and \(age)")
        }
    }
    class Olmos: Friands {
        override func who() {
         print("\(name) is \(charakter) and \(type) and \(age)")
        }
    }


let aAslbek = Friands(name:"Aslbek is ", charakter:"strong , smart", type:"Strong", age:15)
let aDoston = Friands(name:"Doston is ", charakter:"smart,happy", type:"Happy", age:15)
let aQodirxon = Friands(name:"Qodirxon is ", charakter:"smart, happy", type:"Inalagent", age:15)
let aShahriyor = Friands(name:"Shahtyor is ", charakter:"Smart , same with me", type:"Inalagent", age:15)
let aOlmos = Friands(name:"Olmos is ", charakter:"strong, boxer", type:"boxer", age:15)

aAslbek.who()
aDoston.who()
aQodirxon.who()
aShahriyor.who()
aOlmos.who()

//deinit mavzusi 26-dars @SwiftGenius kanali class Advansed #3


class MyHouse {

    var timer: Timer?

    init() {

        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            self?.timerBlog()
        }

        print("Init MyHouse will be huge and nice")
    }

    func timerBlog() {
        print("Timer Blog is working")
    }

    deinit {
        
        print("Deinit MyHouse will be huge and  nice")
    }
}

// ARC - Automatic Reference Counting

var myHouse: MyHouse? = MyHouse() // count = 1
var myBHouse = myHouse            // count = 2
var myCHouse = myBHouse           // count = 3

myBHouse = nil                    // count = 2
myCHouse = nil                    // count = 1
myHouse = nil                     // count = 0
//keyingi dars 26 ni 20 daqiqasida


//protocol 1 dars 
protocol MyProtocol {
    func goschool()
    func how()
    
}

class Anavu: MyProtocol {
    
    func goschool() {
        print("everyday")
    }
   
    func how() {
        print("by bus")
        
    }
}


class Men: MyProtocol {
    func goschool() {
        print("sometime")
    }
    func how() {
        print("by bus")
        
    }
}


class U: MyProtocol {
    func goschool() {
        print("really")
    }
    
    func how() {
        print("by bus")
        
    }
}

let anavu = Anavu()
let men = Men()
let u = U()

anavu.goschool()
men.goschool()
u.goschool()
anavu.how()
men.how()
u.how()

//protocol advanced
protocol Click {

    func pay(amount: Double)
}

class Cash: Click {

    func pay(amount: Double) {
        print("Coustumer cash \(amount) UZS")
        
    }
}

class Card: Click {

    func pay(amount: Double) {
        print("Costumer card \(amount) UZS")
        
    }
}

class cllick: Click{

    func pay(amount: Double) {
        print("Costumer click \(amount) UZS")
        
    }
}

var clicck: Click
clicck = Cash()
clicck.pay(amount:100000)
clicck = Card()
clicck.pay(amount:150000)
clicck = cllick()
clicck.pay(amount:170000)

// SwiftGenius course have done congutulation!!!
// Endi faqat ozimda @takrorlash sifatida 15 kun chalange ketdi oxirdan boshiga qarab 
// 1 - Kun Protocol 


protocol music {

    func whichtypeofmusic()
    func nameofmusic()
}

class Mushuk: music {

    func whichtypeofmusic() {
        print("None becouse cats don't listen to music")
        
    }
   
    func nameofmusic() {
        print("None becouse cats don't listen to music")
    
    }
}

class Elshodbeek: music {
   
   func whichtypeofmusic() {
       print("Men Clasical musiqalari eshitishni yaxshi ko'raman")
    
    }
   
   func nameofmusic() {
       print("Men ga hozirda yoqadigan musiqa nomi Homage")
    
    }
}


let cats = Mushuk()
let menn = Elshodbeek()

cats.whichtypeofmusic()
cats.nameofmusic()
menn.whichtypeofmusic()
menn.nameofmusic()


//deinit mavzusi  @takrorlash

class Mishka {
    let mishka: String
    let rangi: String
    let ogirligi: Int

    init(mishka: String, rangi: String, ogirligi:Int) {
       self.mishka = mishka
       self.rangi = rangi
       self.ogirligi = ogirligi
    }



    deinit {
        print("\(mishka) xotiradan o'chirlidi")
       
    }
    
}   


let mmishka = Mishka(mishka:"metoo" , rangi:"qora" , ogirligi: 23)

print(mmishka.mishka)
print(mmishka.rangi)
print(mmishka.ogirligi)



// Extansion mavzusida dars @takrorlash

struct myTelphone {

    var name: String
    var wwhatcoloris: String
    var isfiveg: Bool
}

extension myTelphone {

    func unblockphone() {
        print(wwhatcoloris, name, "password is correct may to use your phone sir")
        
    }
}

extension myTelphone {

    func blockphone() {
        print(wwhatcoloris, name, "the password is incorrect don't may to use while you open the password")
        
    }
}

var myphone = myTelphone(name: "Redmi note 12", wwhatcoloris: "black", isfiveg: false)
myphone.unblockphone()
myphone.blockphone()


//Struck advanced @takrorlash

struct myCat {

    var name: String
    var whhatcoloris: String
    var isalwayshungry: Bool

}

let mycat1 = myCat(name: "йожик", whhatcoloris:"color mix", isalwayshungry: true)
var mycat2 = mycat1
mycat2.name = "opog'oy"
mycat2.isalwayshungry = true

print(mycat1.whhatcoloris)
print(mycat2.name)
print(mycat2.isalwayshungry)

//opitional @takrorlash

var duhi: String? = nil

duhi = "ascendant"

if let ascendant = duhi {
    print("Furqat ustoszni duhisi nomi \(ascendant)")
}else {
    print("Furqat ustozga bu duhi yoqmayda")
    
}

func checkparfum(duhi:String?) {
    guard let ascendant = duhi else {
        print("Furqat ustozga bu duxi yoqmadi")
        return
    }
    print("Vanihoyat ustozga \(ascendant) duhisi yoqdi")
    
}
checkparfum(duhi:duhi)

let reesul = duhi ?? "Bu do'kon bo'las ekan boshqasiga boramiz yurin"
print(reesul)

//Enum @takrorlash bir necha misol bilan
enum app {

    case vscode(String)
    case xcode(xccode: String)
    case py(pyy: String)
}
let Vscode = app.vscode("For windows, macbook and other")
let Xcode = app.xcode(xccode: "Only macbook and ipad")
let Py = app.py(pyy: "For windows and mac if linux but i don't know")

switch Py {
    case .vscode(let app):
    print("I need install vscode for my windows")
    
    case .xcode(let xccode):
    print("I need install \(xccode) for my mac")
    
    case .py(let ppy):
    print("I need install \(ppy) for my linux")
    
}

//Enum 2 @takrorlash
enum stol {

    case rangi(String)
    case nimauchun(String)
}

let Rangi = stol.rangi("Jigarang")
let Nimauchun = stol.nimauchun("PC uchun edi lekin hozir laptop")

switch Rangi {
    case .nimauchun(let whatfor):
        print("Stol \(whatfor)")
    case .rangi(let whatcolor):
        print("Stol \(whatcolor)ingda")
        
}




//enum qaramasdan @takrorlash

enum stoll {

    case rangii(String)
    case nimauchunn(String)
}

let Rangii = stoll.rangii("qaramsdan ukash")
let Nimauchunn = stoll.nimauchunn("rostan bratan")

switch Nimauchunn {
    case .rangii(let forwhat):
    print("Malades lekin")
    case .nimauchunn(let whatcolorr):
    print("Qoyil qoyil 5 ketdim")
    
    
}

// chatgpt bergan misol @takrorlash
//Men seni tekshirish uchun bitta kichik challenge beraman:

/*enum Transport {
    case car(String)
    case bus(Int)
    case bicycle
}

Shundan:

let vehicle = Transport.bus(25)

yaratib, switch orqali:

Busda 25 ta odam bor*/

enum Transport {
    case car(String)
    case bus(Int)
    case bicycle
}
let vehicle = Transport.bus(25)
switch vehicle {
    case .bus(let misol):
    print("avtobus da\(misol) ta odam bor")
    case .car:
    print("moshina")
    case .bicycle:
    print("velosiped")
    
}

//Chatgpt bergan chalange opitonal @takrorlash
/*Challenge 😎

Quyidagi structni yarat:

struct Student {
    let name: String
    let phone: String?
}

Keyin:

let student = Student(
    name: "Elshodbek",
    phone: nil
)

yarat.

if let yoki guard ishlatib:

telefon bo'lsa → chiqar
telefon bo'lmasa → "Telefon raqami mavjud emas" deb chiqar*/

/*
struct Studeent {
    let name: String
    let phone: String?
}

var phone: String? = nil
phone = "phone"

if let ihave = phone {
    print("i have \(phone)")
    
}else {
    print("i don't have \(phone)")
    
}
*/

struct Studeent {
    let name: String
    let phone: String?
}

var phone: String? = nil
phone = "number"

func checkphone(phone:String?) {
    guard let number = phone else {
        print("I don't have telphoe number")
        return
    }
    print("I have telephone number +998950068007")
    
}

checkphone(phone: phone)

//Chatgpt bergan chalange 2 @takrorlash



func greet() {
    print("Hello, Bro")
    
}


greet()

//n2 chalange
enum Phone {
    case model(String)
    case telephonee(String)
}

let phonee = Phone.model("Iphone 15 pro max")
let Telephonee = Phone.telephonee("Redmi")

switch phonee {

case .model(let phone1):
    print("I have \(phone1)")
case .telephonee(let phone2):
    print("i dont have \(phone2)")
    
    
    
}

//chalange2
struct Book {
    let name: String
    let pages: Int

    init(name: String , pages: Int) {
     self.name = name
     self.pages = pages
    }
}

let swiftBook = Book(
    name: "Swift book",
    pages: 450
)

print(swiftBook.name)
print(swiftBook.pages)


//Chatgpt chalange 3 @takrorlash

struct Laptop {
    var brand: String
}

var laptop: Laptop? = Laptop(brand: "MacBook")
print(laptop?.brand)

//Chatgpt bergan chalange 3 @takrorlash part 2 

struct Userr {
    var naame: String?
}

let user = Userr(naame: nil)


print(user.naame ?? "Guest")


struct Circle {
    var radius: Double

    var diameter: Double {
        return radius
    }
}

let circle = Circle(radius: 7)

print(circle.diameter)

// chalange 4 @takrorlash


let student = Student(math: 80, english: 90)

print(student.average)

struct Square {
    var side: Double

    var perimeter: Double {
       return side * 2
    }
}

let square = Square(side: 6)

print(square.perimeter)