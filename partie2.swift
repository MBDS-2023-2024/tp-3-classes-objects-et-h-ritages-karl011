import Foundation

protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

// Classe Rectangle
class Rectangle: Shape {
    // Attributs
    public var longueur: Double
    public var largeur: Double

    static var nbRectangles = 0

    // Initialisation
    init(longueur: Double, largeur: Double) {
        self.longueur = longueur
        self.largeur = largeur
        Rectangle.nbRectangles += 1
    }

    // Méthodes
    func perimeter() -> Double {
        return 2 * (longueur + largeur)
    }

    func area() -> Double {
        return longueur * largeur
    }
}

// Classe Triangle implémentant le protocole Shape
class Triangle: Shape {
    // Attributs
    public var base: Double
    public var hauteur: Double

    // Initialisation
    init(base: Double, hauteur: Double) {
        self.base = base
        self.hauteur = hauteur
    }

    // Méthodes
    func perimeter() -> Double {
        return base + 2 * sqrt(base * base / 4 + hauteur * hauteur)
    }

    func area() -> Double {
        return 0.5 * base * hauteur
    }
}

// Classe Circle implémentant le protocole Shape
class Circle: Shape {
    // Attribut
    public var rayon: Double

    // Initialisation
    init(rayon: Double) {
        self.rayon = rayon
    }

    // Méthodes
    func perimeter() -> Double {
        return 2 * Double.pi * rayon
    }

    func area() -> Double {
        return Double.pi * rayon * rayon
    }
}


// Liste de formes
var formes: [Shape] = []
formes.append(Circle(rayon: 2.0))
formes.append(Circle(rayon: 3.0))
formes.append(Circle(rayon: 5.0))
formes.append(Rectangle(longueur: 3.0, largeur: 4.0))
formes.append(Rectangle(longueur: 5.0, largeur: 2.0))
formes.append(Rectangle(longueur: 5.0, largeur: 5.0))

// Parcours de la liste et affichage des informations
for forme in formes {
    switch forme {
    case let cercle as Circle:
        print("Je suis un cercle, mon rayon est \(cercle.rayon), ma surface est \(cercle.area()) et mon périmètre est \(cercle.perimeter())")
    case let rectangle as Rectangle:
        print("Je suis un rectangle, ma longueur est \(rectangle.longueur), ma largeur est \(rectangle.largeur), ma surface est \(rectangle.area()) et mon périmètre est \(rectangle.perimeter())")
    case let triangle as Triangle:
        print("Je suis un triangle, ma base est \(triangle.base), ma hauteur est \(triangle.hauteur), ma surface est \(triangle.area()) et mon périmètre est \(triangle.perimeter())")
    default:
        print("Forme inconnue")
    }
}