## Course 3: Build a model

### Types of Functions
Activation Functions
- decision boundaries to pass on information
- for continuous values

Sigmoid Functions
- returns a value from 0 to 1

ReLU (rectified linear unit)
- simplifies to linear equation
- don't pay much attention to negative values

Leaky ReLU
- ReLU and includes negative values

### Bulding out the model
1. Substitute decision threshold activation -> sigmoid
2. arbitrary weights filled in later on

Result: configurable node (perceptron)
Given input, give machine desired output. Node updates weights accordingly (backpropagation).

### Purpose-built Models
Multilayer perceptron
- basic percpetron model for simple data types

Conviolutional Neural Network
- convolution and pooling, common in computer vision

LSTM
- saves internal state, common in NLP
