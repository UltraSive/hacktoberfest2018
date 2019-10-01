func swap(array: inout[Int], index: Int, index2: Int ) {
    let indexElement = array[index]
    let indexElement2 = array[index2]

    array[index] = indexElement2
    array[index2] = indexElement
}


func selection(array: [Int]) {
    var sortedArray = array

    var swaps = 0
    var swapCount = 0
    var passes = 0

    print("Pass: \(passes), Swaps: \(swaps)/\(swapCount), Array: \(sortedArray)")

    for pointer in 0 ..< sortedArray.count - 1 {
        swaps = 0
        var lowest = pointer
        for i in pointer ..< sortedArray.count {
            if sortedArray[lowest] > sortedArray[i] {
                lowest = i
            }
        }

        swap(array: &sortedArray, index: pointer, index2: lowest)

        swaps += 1
        swapCount += 1
        passes += 1

        print("Pass: \(passes), Swaps: \(swaps)/\(swapCount), Array: \(sortedArray)")
    }
}

selection(array: unsortedIntegers)
