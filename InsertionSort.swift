func swap(array: inout[Int], index: Int, index2: Int ) {
    let indexElement = array[index]
    let indexElement2 = array[index2]

    array[index] = indexElement2
    array[index2] = indexElement
}



func insertion(array: [Int]) {
    var sortedArray = array

    var swaps = 0
    var swapCount = 0
    var passes = 0

    print("Pass: \(passes), Swaps: \(swaps)/\(swapCount), Array: \(sortedArray)")

    for i in 1..<sortedArray.count {
        var current = i
        swaps = 0
        while (sortedArray[current] < sortedArray[current - 1]) {

            swap(array: &sortedArray, index: current, index2: current - 1)

            swaps += 1
            swapCount += 1

            if current == 1 {
                break
            }
            current -= 1
        }
        passes += 1
        print("Pass: \(passes), Swaps: \(swaps)/\(swapCount), Array: \(sortedArray)")
    }
}

insertion(array: unsortedIntegers)
