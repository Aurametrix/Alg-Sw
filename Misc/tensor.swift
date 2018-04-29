// `Tensor` examples.
var matrix = Tensor<Float>(shape: [2, 2], scalars: [1, 2, 3, 4])
var matrix: Tensor<Float> = [[1, 2], [3, 4]]
// `matrix` represents [[1, 2], [3, 4]].

// Arithmetic operations, using TensorFlow.
let sum = matrix + matrix
let sqrt = sqrt(matrix)
let matrixProduct = matrix.dot(matrix)
// `sum` represents [[2.0, 4.0], [6.0, 8.0]].
// `sqrt` represents [[1.0, 1.41421], [1.73205, 2.0]].
// `matrixProduct` represents [[7.0, 10.0], [15.0, 22.0]].

// Convert `Tensor` to `ShapedArray`.
let array2D = ShapedArray(matrix)
// `array2D` is stored on the host.
// `ShapedArray` examples.
var matrix = ShapedArray(shape: [3, 2], scalars: [1, 2, 0, 0, 5, 6])
// `matrix` represents [[1, 2], [0, 0], [5, 6]].

let element = matrix[0]
// `element` is a `ShapedArraySlice` with shape [2], representing [1, 2].

matrix[1] = ShapedArraySlice(shape: [2], scalars: [3, 4])
// The second element in `matrix` has been mutated.
// `matrix` now represents [[1, 2], [3, 4], [5, 6]].

let zeros = ShapedArray(shape: [3, 2], repeating: 0)
let subarray = matrix.prefix(2)
// `subarray` is a `ShapedArraySlice` with shape [2, 2], representing [[1, 2], [3, 4]].
matrix[0..<2] = zeros.prefix(2)
// The first 2 elements in `matrix` have been modified.
// `matrix` now represents [[0, 0], [0, 0], [5, 6]].

// Convert `ShapedArray` to `Tensor`.
let tensor2D = Tensor(matrix)
// It's now possible to perform TensorFlow operations on `tensor2D`.
