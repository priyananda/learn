class Number
{
	init(numAsString : String)
	{
		self.valueOf = 0
		let converted : Int? = Int(numAsString)
		if (converted != nil) {
			self.valueOf = converted!
		}
	}
	
	init(numAsInt : Int)
	{
		self.valueOf = numAsInt
	}

	func Add(other : Number) -> Number
	{
		let sum : Int = self.valueOf + other.valueOf;
		let result = Number(numAsInt: sum)
		return result;
	}
	
	func ToString() -> String
	{
		return String(self.valueOf)
	}

	var valueOf : Int
}

func addStrings(num1 : String, num2 : String) -> String
{
	let number1 = Number(numAsString : num1)
	let number2 = Number(numAsString : num2)
	let numberAdd = number1.Add(number2)
	return numberAdd.ToString();
}
