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

### Training Data
- ensure trained model reflects real-world data
- diversity in data

Common issues
- unbiased or unbalanced data
- discrepancy in trained and real world data
- mislabeled data
- insufficient data

Transfer learning
- using and storing knowledge from trained network to a similar use case and adapt to new use case
- neural network capable of retaining learnings from previously trained data

Automated ML
Steps
1. Take n layers of the original neural network (usually all but the last layer)
2. Copy layers and retain weights, activation functions and architecture
3. Attach new layers to replace old ones
4. Retrain to tune last layers

*Fine tuning: retraining previously copied layers

Neural architectural search
- determines the best architecture for data types

| Automated ML | Custom modelling |
| :---------------------: | :----------------------------------: |
| easier to get started | expensive |
| difficult to extend | full customisability |
| robust enterprise support | limited means of external support |
