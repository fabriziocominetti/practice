# Google - Machine Learning crash course

### Framing

**Key ML Terminology**

ML systems learn how to combine input to produce useful predictions on never-before-seen data.

- Label: a label is the thing we're predicting
- Feature: a feature is an input variable; a simple machine learning project might use a single feature, while a more sophisticated machine learning project could use millions of features
- Example: an example is a particular instance of data, x. We break examples into two categories: labeled examples and unlabeled examples
- Labeled example: a labeled example includes both feature(s) and the label. Use labeled examples to train the model.
- Unlabeled example: an unlabeled example contains features but not the label
- Models: a model defines the relationship between features and label
- Training means creating or learning the model
- Inference means applying the trained model to unlabeled examples
- A regression model predicts continuous values
- A classification model predicts discrete values

### Descending into ML

**Linear Regression**

Linear relationship: y = mx + b

where:
- y | the value we're trying to predict
- m | the slope of the line
- x | the value of our input feature
- b | the y-intercept

By convention in machine learning, you'll write the equation for a model slightly differently: y' = b + w_1 x_1

where:
- y' | is the predicted label (a desired output)
- b | is the bias (the y-intercept), sometimes referred to as w_0
- w_1 | is the weight of feature 1. Weight is the same concept as the "slope" m in the traditional equation of a line
- x_1 is a feature (a known input)

Although this model uses only one feature, a more sophisticated model might rely on multiple features, each having a separate weight (w_1, w_2, etc.). For example, a model that relies on three features might look as follows: y' = b + w_1 x_1 + w_2 x_2 + w_3 x_3

**Training and Loss**

Training a model simply means learning (determining) good values for all the weights and the bias from labeled examples. In supervised learning, a machine learning algorithm builds a model by examining many examples and attempting to find a model that minimizes loss; this process is called empirical risk minimization.

Loss is the penalty for a bad prediction. That is, loss is a number indicating how bad the model's prediction was on a single example. If the model's prediction is perfect, the loss is zero; otherwise, the loss is greater. The goal of training a model is to find a set of weights and biases that have low loss, on average, across all examples.

The linear regression models we'll examine here use a loss function called squared loss (also known as L_2 loss). The squared loss for a single example is as follows:

```
the square of the difference between the label and the prediction = (observation - prediction(x))^2 = (y - y')^2
```

Mean square error (MSE) is the average squared loss per example over the whole dataset. To calculate MSE, sum up all the squared losses for individual examples and then divide by the number of examples:

```latex
MSE = \frac{1}{N}\sum (y - prediction(x))^2
```

where:
- (x, y) is an example in which
  - x is the set of features that the model uses to make predictions
  - y is the example's label
- prediction(x) is a function of the weights and bias in combination with the set of features x
- D is a data set containing many labeled examples, which are (x, y) pairs
- N is the number of examples in D

### Reducing Loss

**An Iterative Approach**

![Trial-Error](2022-03-02-10-18-33.png)

Usually, you iterate until overall loss stops changing or at least changes extremely slowly. When that happens, we say that the model has converged.

**Gradient Descent**

Suppose we had the time and the computing resources to calculate the loss for all possible values of w_1. For the kind of regression problems we've been examining, the resulting plot of loss vs. w_1 will always be convex. In other words, the plot will always be bowl-shaped, kind of like this:

![Convex-plot](2022-03-02-10-21-10.png)

Convex problems have only one minimum; that is, only one place where the slope is exactly 0. That minimum is where the loss function converges.

The first stage in gradient descent is to pick a starting value (a starting point) for w_1. The starting point doesn't matter much; therefore, many algorithms simply set w_1 to 0 or pick a random value.

The gradient descent algorithm then calculates the gradient of the loss curve at the starting point.

Note that a gradient is a vector, so it has both of the following characteristics:
- a direction
- a magnitude

The gradient always points in the direction of steepest increase in the loss function. The gradient descent algorithm takes a step in the direction of the negative gradient in order to reduce loss as quickly as possible.

To determine the next point along the loss function curve, the gradient descent algorithm adds some fraction of the gradient's magnitude to the starting point as shown in the following figure:

![Loss-curve](2022-03-02-10-23-14.png)

The gradient descent then repeats this process, edging ever closer to the minimum.

**Learning Rate**

As noted, the gradient vector has both a direction and a magnitude. Gradient descent algorithms multiply the gradient by a scalar known as the learning rate (also sometimes called step size) to determine the next point.

Hyperparameters are the knobs that programmers tweak in machine learning algorithms. Most machine learning programmers spend a fair amount of time tuning the learning rate.

**Optimizing Learning Rate**

ex

**Stochastic Gradient Descent**

In gradient descent, a batch is the total number of examples you use to calculate the gradient in a single iteration.

By choosing examples at random from our data set, we could estimate (albeit, noisily) a big average from a much smaller one. Stochastic gradient descent (SGD) takes this idea to the extreme--it uses only a single example (a batch size of 1) per iteration. Given enough iterations, SGD works but is very noisy. The term "stochastic" indicates that the one example comprising each batch is chosen at random.

Mini-batch stochastic gradient descent (mini-batch SGD) is a compromise between full-batch iteration and SGD. A mini-batch is typically between 10 and 1,000 examples, chosen at random. Mini-batch SGD reduces the amount of noise in SGD but is still more efficient than full-batch.

### First Steps with TF

TensorFlow is an end-to-end open source platform for machine learning. TensorFlow is a rich system for managing all aspects of a machine learning system; however, this class focuses on using a particular TensorFlow API to develop and train machine learning models.

TensorFlow APIs are arranged hierarchically, with the high-level APIs built on the low-level APIs. Machine learning researchers use the low-level APIs to create and explore new machine learning algorithms.

The following figure shows the hierarchy of TensorFlow toolkits:

![TF](2022-03-02-10-32-14.png)

**Summary of hyperparameter tuning**

Most machine learning problems require a lot of hyperparameter tuning. Unfortunately, we can't provide concrete tuning rules for every model. Lowering the learning rate can help one model converge efficiently but make another model converge much too slowly. You must experiment to find the best set of hyperparameters for your dataset. That said, here are a few rules of thumb:

- Training loss should steadily decrease, steeply at first, and then more slowly until the slope of the curve reaches or approaches zero.
- If the training loss does not converge, train for more epochs.
- If the training loss decreases too slowly, increase the learning rate. Note that setting the learning rate too high may also prevent training loss from converging.
- If the training loss varies wildly (that is, the training loss jumps around), decrease the learning rate.
- Lowering the learning rate while increasing the number of epochs or the batch size is often a good combination.
- Setting the batch size to a very small batch number can also cause instability. First, try large batch size values. Then, decrease the batch size until you see degradation.
- For real-world datasets consisting of a very large number of examples, the entire dataset might not fit into memory. In such cases, you'll need to reduce the batch size to enable a batch to fit into memory.

Remember: the ideal combination of hyperparameters is data dependent, so you must always experiment and verify.

### Generalization

**Peril of Overfitting**

An overfit model gets a low loss during training but does a poor job predicting new data.

The fundamental tension of machine learning is between fitting our data well, but also fitting the data as simply as possible.

Machine learning's goal is to predict well on new data drawn from a (hidden) true probability distribution. Unfortunately, the model can't see the whole truth; the model can only sample from a training data set.

William of Ockham, a 14th century friar and philosopher, loved simplicity. He believed that scientists should prefer simpler formulas or theories over more complex ones. To put Ockham's razor in machine learning terms:
The less complex an ML model, the more likely that a good empirical result is not just due to the peculiarities of the sample.

In modern times, we've formalized Ockham's razor into the fields of statistical learning theory and computational learning theory. These fields have developed generalization bounds--a statistical description of a model's ability to generalize to new data based on factors such as:
- the complexity of the model
- the model's performance on training data

A machine learning model aims to make good predictions on new, previously unseen data. But if you are building a model from your data set, how would you get the previously unseen data? Well, one way is to divide your data set into two subsets:
- training set — a subset to train a model
- test set — a subset to test the model

Good performance on the test set is a useful indicator of good performance on the new data in general, assuming that:
- the test set is large enough
- you don't cheat by using the same test set over and over

The following three basic assumptions guide generalization:

- We draw examples independently and identically (i.i.d) at random from the distribution. In other words, examples don't influence each other. (An alternate explanation: i.i.d. is a way of referring to the randomness of variables.)
- The distribution is stationary; that is the distribution doesn't change within the data set
- We draw examples from partitions from the same distribution

### Training and Test Sets

**Splitting Data**

Make sure that your test set meets the following two conditions:

- is large enough to yield statistically meaningful results
- is representative of the data set as a whole. In other words, don't pick a test set with different characteristics than the training set.

Assuming that your test set meets the preceding two conditions, your goal is to create a model that generalizes well to new data. Our test set serves as a proxy for new data.

Never train on test data. If you are seeing surprisingly good results on your evaluation metrics, it might be a sign that you are accidentally training on the test set.

### Validation Set

Partitioning a data set into a training set and test set lets you judge whether a given model will generalize well to new data. However, using only two partitions may be insufficient when doing many rounds of hyperparameter tuning.

With two partitions, the workflow could look as follows:

![Tr-Te](2022-03-02-11-09-24.png)

You can greatly reduce your chances of overfitting by partitioning the data set into the three subsets shown in the following figure:

![Tr-Va-Te](2022-03-02-11-09-51.png)

Use the validation set to evaluate results from the training set. Then, use the test set to double-check your evaluation after the model has "passed" the validation set. The following figure shows this new workflow:

![Tr-Va-Te](2022-03-02-11-10-17.png)

In this improved workflow:

1. Pick the model that does best on the validation set
2. Double-check that model against the test set

