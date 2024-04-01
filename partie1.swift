class Rectangle {
    // Attributs
    private var longueur: Double
    private var largeur: Double

    // Compteur de rectangles créés
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

// Liste de rectangles
var rectangles: [Rectangle] = []
rectangles.append(Rectangle(longueur: 3.0, largeur: 4.0))
rectangles.append(Rectangle(longueur: 5.0, largeur: 2.0))
rectangles.append(Rectangle(longueur: 4.0, largeur: 3.0))

// Tri par surface et affichage de la surface du premier rectangle
rectangles.sort(by: { $0.area() < $1.area() })
print("Surface du premier rectangle : \(rectangles[0].area())")

// Tri par périmètre et affichage du périmètre du deuxième rectangle
rectangles.sort(by: { $0.perimeter() < $1.perimeter() })
print("Périmètre du deuxième rectangle : \(rectangles[1].perimeter())")

// Affichage du nombre de rectangles créés
print("Nombre de rectangles créés : \(Rectangle.nbRectangles)")
