func swap(array: inout[Int], index: Int, index2: Int ) {
    let indexElement = array[index]
    let indexElement2 = array[index2]

    array[index] = indexElement2
    array[index2] = indexElement
}



func bubble(array: [Int]) {
    var sortedArray = array

    var swaps = 0
    var swapCount = 0
    var passes = 0

    print("Pass: \(passes), Swaps: \(swaps)/\(swapCount), Array: \(sortedArray)")

    repeat {
        swaps = 0
        for i in 0 ..< array.count - 1 {
            if (sortedArray[i] > sortedArray[i + 1]) {
                swap(array: &sortedArray, index: i, index2: i + 1)

                swaps += 1
                swapCount += 1
            }
        }
        passes += 1
        print("Pass: \(passes), Swaps: \(swaps)/\(swapCount), Array: \(sortedArray)")
    } while(swaps != 0)
}

bubble(array: unsortedIntegers)
