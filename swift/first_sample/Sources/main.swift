if (Process.arguments.count < 3) {
	print("Need three arguments: a, b, c")
}else{
	let av : Double = Double(Process.arguments[1])!
	let bv : Double = Double(Process.arguments[2])!
	let cv : Double = Double(Process.arguments[3])!
	var eq = QuadraticEquation(a : av, b : bv, c : cv)
	let (root1, root2) = eq.getRoots()
	print("Root 1: \(root1)\n")
	print("Root 2: \(root2)\n")
}
