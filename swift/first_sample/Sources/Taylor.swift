import Glibc

class QuadraticEquation
{
	let a : Double
	let b : Double
	let c : Double
	
	init(a : Double, b : Double, c : Double)
	{
		self.a = a
		self.b = b
		self.c = c		
	}
	
	func getRoots() -> (root1 : String, root2 : String)
	{
		let b2minus4ac = b * b - 4 * a * c
		let isImaginary : Bool = (b2minus4ac < 0)
		if (!isImaginary) {
			let posRoot = (-1 * b + sqrt(b2minus4ac)) / (2 * a)
			let negRoot = (-1 * b - sqrt(b2minus4ac)) / (2 * a)
			return ("\(posRoot)", "\(negRoot)")
		}
		let rootReal = (-1 * b) / (2 * a)
		let rootImag = sqrt(-b2minus4ac) / (2 * a)
		let posRootS = "\(rootReal) + i \(rootImag)"
		let negRootS = "\(rootReal) - i \(rootImag)"
		return (posRootS, negRootS)
	}
}
