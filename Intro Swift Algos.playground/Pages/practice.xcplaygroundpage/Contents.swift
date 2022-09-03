

var data_set = [1,3,6,2,4,5]
var last_position = data_set.count - 1
var swap = true
while swap == true {
    swap = false
    for i in 0..<last_position {
        if data_set[i] > data_set[i + 1] {
            let temp = data_set [i + 1]
            data_set [i + 1] = data_set[i]
            data_set[i] = temp
            
            swap = true
        }
    }
}

print (data_set)
