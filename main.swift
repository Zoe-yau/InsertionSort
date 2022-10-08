
var words = [String]()

var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    line = readLine()
}

//for word in words.reversed() {
//    print(word)
//}

var tmpArray = words

var numOfPasses = 0
var numOfSwaps = 0
var totalSwaps = 0


func Swap(words: inout [String], firstIndex: Int, secondIndex: Int) {
    let firstWord = words[firstIndex]
    let secondWord = words[secondIndex]

    words[firstIndex] = secondWord
    words[secondIndex] = firstWord
    
    numOfSwaps += 1
     
}


func insert(words: inout [String]) {

    for index in 0..<words.count {
 
        var swapIndex = index

         numOfSwaps = 0

        while swapIndex > 0 {
            if words[swapIndex] < words[swapIndex - 1] {
                Swap(words: &words, firstIndex: swapIndex, secondIndex: swapIndex - 1)

                swapIndex -= 1
                totalSwaps += 1
                
            } else {

                break
            }

        }

        print("Pass: \(numOfPasses), Swaps: \(numOfSwaps)/\(totalSwaps), Array: \(words)")

        numOfPasses += 1
    }

}

insert(words: &tmpArray)


