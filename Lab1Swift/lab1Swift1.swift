// Variables y constantes
"hola " + "Mundo"
20+5
var currentLoginAttempts = 10
let maximumNumberOfLogins = 28
var x = 0.0, y = 0.0, z = 0.0
var w = 123_456
var welcomeMessage: String = "Hola"
 x = "X" // error
var x = "X" // redefinir 
//Conversaciones
let etiqueta = "Ancho "
let ancho = 32
let etiquetaAncho = etiqueta + ancho //error de conversacion
let etiquetaAncho = etiqueta + String(ancho)
print(etiquetaAncho)
// Constante no puede modificarse
etiquetaAncho = "Swift" // error es inmutable
// Conversaciones
let minValue = UInt8.min
let maxValue = UInt8.max 
let tooBig: Int8.max + 1 //overflow
let connotBeNegative : UInt8 = -1 // negative not valid
let towThousand : UInt16 = 2_000
let pi = 3.1416
let intergerPi = Int(pi) // truncate

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
// Interpolar cadenas
let lenguageName = "Swift"
print ("El lenguaje que estamos usando es \(lenguageName)")
var name1 = "Javier"
var name2 = "Pedro"
var line = "Sandra"
print(name1,name2,separator: ":", terminator: "\n")

//Separar instrucciones en una misma linea
let cat = "Felix";print(cat)

//Literales numericas
0b1111 // binario
0o123 // octal
0123 // decimal
0x11 // hexadecimal

// Tuplas
let illusionist = (1, "Coming Soon")
let z = (404, "La pagina de Illusionist no esta activa", "Not Found")
// Transladar los valores de una tupla a variables/constantes
let (statusCode,statusMessage) = illusionist
print ("El codigo de status es : \(statusCode)")
print ("El codigo de status es : \(illusionist.0)") // 0 primer valor 1 segundo valor
let http200Status = (statusC: 200, descripcionC: "Ok")
print ("El codigo de status es : \(http200Status.statusC)")
let (statusCode,_) = illusionist

//Colecciones 
//Array
var shopping = ["vps","filter","domain"]
//Diccionario
var costs = ["vps":1,"filter":2,"domain":3]
// Leer datos
shopping [2]
costs["vps"]
shopping+=["Tea"] //arreglar al final del arreglo
//Otra forma de crear Arreglo vacio
var arregloVacio = [String]()
var diccionarioVacio = [String:Float]()
let emptyDic:Dictionary<Int,String> = [:]
let threeDoubles = Array(repeating: 0.0, count:3) //arreglo que guarda 0 3 veces :D

arregloVacio.append("Hola")
arregloVacio+=["Bye"]

diccionarioVacio["Dic1"] = 23.45
diccionarioVacio["Ene1"] = 233.46

//Iterar
for(code,name) in diccionarioVacio{
    print("\(code) : \(name)")
}
// checar si el arreglo esta vacio
if arregloVacio.isEmpty{
    print("El arreglo esta vacio")
}else {
    print("El arreglo tiene datos")
}

//Acceder a una celda que no existe
arregloVacio[3]. //ftal error: index out of range

// otras ormas de manipular el contenido de un arreglo
arregloVacio.append("See you")
arregloVacio.insert("Hasta la vista baby", at:1) // recorre los valores
arregloVacio[1...2] = ["N/A", "Unkown"] // sobreescribe los valores
arregloVacio.remove(at:1) // elimia valor
// Iterar un arreglo
for it in arregloVacio {
    print(it)
}
// Set
var letters = Set<Character>()
letters.insert("a")
var favoritesGenerates: Set<String> = ["Rock","Classical","Hip hop"]
favoritesGenerates.insert("NewAge")
favoritesGenerates.insert("Rock")
print("Numero de elementos del set \(favoritesGenerates.count)")
print("Vacio el set ? \(favoritesGenerates.isEmpty)" )
favoritesGenerates.sorted()
print("Buscar NewAge en el set \(favoritesGenerates.constains(NewAge))")
// Union
let a: Set = [1,3,5,7,9]
let b: Set = [0,2,3,10,11]
print(a.union(b))
print(a.intersection(b))
print(a.subtracting(b))

//Dictionaries
var airports = ["YXZ":"Toronto Pearson","DUB":"Dublin",]
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El valor anterior al update es: \(oldValue)")
} else {
    print("No encontro la llave en el diccionario")
}

airports["CUL"] = "Culiacan Airport"
airports["YXZ"] = nil // Esto hace que la llave se elimine

// Iterar en un diccionario, solo las llaves
for code in airports.keys{
    print(code)
}

// Iterar en un diccionario , solo los valores
for v in airports.values{
    print(v)
}

if let oldValue = airports.updateValue("CDMX Airport", forKey: "CDMX"){
    print("El valor anterior al update es: \(oldValue)")
} else {
    print("No encontro la llave en el diccionario")
}

// Opcionales - ?
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // convertir de cadena a int
let possibleNumber1 = "123a"
let convertedNumber1 = Int(possibleNumber1)

var possibleNumber2 = 123
var possibleNumber2 = nil // error no se puede asginar nil a un entero
var possibleNumber3: Int? = 123
possibleNumber3 = nil

var surveyAnswer1: String
var surveyAnswer: String?

var possibleNumber = "x"
if let actualNumber = Int(possibleNumber){
    print("possibleNumer es un entero")
} else {
    print("possibleNumber NO es un entero")
}

// Unpack
var opt:Int? = 1
opt == nil // falso
opt + 2 //error no son el mismo tipo
opt! + 2 //unwrap
opt! // fatal error checar si hay un nulo antes de hacer un unwrap

// Variable de tipo unwrap optional
var opt2:Int! = 2
opt2 + 3 // ok el unwrap lo realizo de manera automatica
opt2! // fatal error checar si hay un nulo antes de hacer un unwrap

// Coalesing
1 ?? 2
nil ?? 0

var costs = ["vps":1,"filter":2,"domain":3]
costs["Coffe"] ?? 0
costs["filter"] ?? 0

// Switch 

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is "

switch integerToDescribe {
    case 2,3,5,7,11,13,17,19:
    description += "A prime number, and also"
    fallthrough

   case 0:
   description = "0"

    default:
    description += " An integer."
}

//switch con where
let yetAnotherPoint  = (1, -1)
switch yetAnotherPoint {
    case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x==Y")
    case let (x, y) where x== -y:
    print("(\(x), \(y)) ")
}