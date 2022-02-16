# Statistics

# Table of Content
- [Descriptive Statistics](#descriptive-statistics)
  - [Central Tendency Indexes](#central-tendency-indexes) 
  - [Variability Measures](#variability-measures)
- [Inferential Statistics](#inferential-statistics)
  - [Probability](#probability)
  - [Random Variables](#random-variables)
    - [Distributions and Moments](#distributions-and-moments)
    - [Law of the Large Numbers](#law-of-the-large-numbers)
    - [Central Limit Theorem](#central-limit-theorem)
  - [Confidence Intervals](#confidence-intervals)
  - [Hypothesis Tests](#hypothesis-tests)
  - [Bivariate Analysis](#bivariate-analysis)
    - [ANOVA](#anova)
    - [Association](#association)
    - [Correlation](#correlation)
  - [Regression](#regression)
- [Formulary]


# <a id ="descriptive-statistics"></a>Descriptive Statistics
- Measurement: The task of gathering information that characterizes or represents a social phenomena.
- Unit of Analysis: The type of thing which we are collecting information about.
- Units and Scales:
  - Nominal

A nominal scale is a scale of measurement used to assign events or objects into discrete categories. This form of scale does not require the use of numeric values or categories ranked by class, but simply unique identifiers to label each distinct category.

Nominal scales involve categories that are:

    - Homogeneus
    - Mutually exclusive
    - Exhaustive
       
  - Ordinal

With ordinal scales, the order of the values is what’s important and significant, but the differences between each one is not really known.

Ordinal Scales don’t specify “distance” between categories.

Ordinal scales are:

    - Homogeneus
    - Mutually exclusive
    - Ordered

  - Interval 

Interval scales are numeric scales in which we know both the order and the exact differences between the values.

Interval scales may be “discrete” or “continuous”. Continuous measures can be measured with arbitrary precison; discrete measures can only take on specific values
(e.g., integers).

Interval scales are:

    - Homogeneus
    - Ordered
    - Measured in comparable units
   
- Validity: The degree to which a measurement captures what it is intended to.
- Reliability: The extent to which a measure produces consistent results.
- Collecting Data in a Study:
  - Sample survey: Sample people from a population and interview them.
  - Experiment: Compare responses of subjects under different conditions, with subjects assigned to the conditions.
- Randomization: The mechanism for achieving reliable data by reducing potential bias.
- Simple random sample: In a sample survey, each possible sample of size n has same chance of being selected.
This is an example of a probability sampling method – We can specify the probability any particular sample will be selected.
- Other probability sampling methods include systematic, stratified, cluster random sampling.
- Sampling error: The sampling error of a statistic equals the error that occurs when we use a sample statistic to predict the value of a population parameter.
- Bias:
  - Sampling bias (e.g., nonprobability sampling)
  - Response bias (e.g., poorly worded questions)
  - Nonresponse bias (undercoverage, missing data)
- Data is often organized in a spread sheet:
  – Rows contain all measurements on each case
  – Columns reflect sets of measurements or “variables”
- Lists: Values of a variable for all cases
- Frequency Lists: Tables that show how many cases take on a particular value  

![image](https://user-images.githubusercontent.com/75806093/124896946-24ea4a00-dfde-11eb-9bef-7781a3bb5874.png)

- Visual Representations:
  - Bar Chart: Essentially a visual representation of a frequency list; height of bars represent number of cases; for nominal & some ordinal variables only.
  - Pie Chart: Similar, but divides up a circle to show frequency.
  - Histogram: For continuous measures, use grouped data; height of bar represents number of cases within a given range of values. Histograms look very different
depending on how wide you set the intervals.

# <a id ="central-tendency-indexes"></a>Central Tendency Indexes
## - Mode

The value representing the largest number of cases - called the “Modal” value

Useful for Nominal, Ordinal variables (only useful for Continuous variables if you have grouped data into a histogram)

Two modal values -> Bimodal distribution

![image](https://user-images.githubusercontent.com/75806093/124897821-f456e000-dfde-11eb-8a16-de9a5531e437.png)

## - Median

The median of a variable is the modality that occupies the central position in the ordered distribution of the variable.

Can be used for ordinal, continuous variables. It cannot be calculated for nominal variables because they do not naturally possess an order; is a more informative than the Mode.

Not influenced by unusual peaks.

The Median = the value of the “middle case”

![image](https://user-images.githubusercontent.com/75806093/124898226-4992f180-dfdf-11eb-942e-f9cab96c3152.png)

![image](https://user-images.githubusercontent.com/75806093/124898294-56174a00-dfdf-11eb-98aa-27a95d1f2fb4.png)

## - Quantiles

Dividing cases up into fixed number of equal “bunches”.

  - 100 chunks = percentiles
  - 4 chunks = quartiles

Upper and lower bounds of quantiles are useful reference points that describe your data – The border of the 2nd and 3rd quartile is the median, the middle of your data.

![image](https://user-images.githubusercontent.com/75806093/124899987-f1f58580-dfe0-11eb-981c-2fe9da4a68c8.png)
3/4 for the third quartile

- Boxplots

pth percentile: p percent of observations below it, (100 - p)% above it.

    - p = 50: median
    - p = 25: lower quartile (LQ)
    - p = 75: upper quartile (UQ)

IQR - Interquartile Range

IQR = UQ - LQ

Box plots have box from LQ to UQ, with median marked. They portray a five-number summary of the data: Minimum, LQ, Median, UQ, Maximum; except for outliers identified separately.

Outlier = observation falling
  - below LQ – 1.5(IQR)
  - or above UQ + 1.5(IQR)

## - Mean

The most well-known way of assessing the “middle”.

Calculated by adding values of all cases, then dividing by the total number of cases.

Useful for continuous measures

Can be influenced by extreme values.

![image](https://user-images.githubusercontent.com/75806093/124900899-c921c000-dfe1-11eb-8c4f-95ac202e121c.png)

![image](https://user-images.githubusercontent.com/75806093/124900967-dfc81700-dfe1-11eb-915a-61a72509c2fb.png)
![image](https://user-images.githubusercontent.com/75806093/124900999-e8b8e880-dfe1-11eb-97a5-567ed1f237b0.png)

## - Skewness

Skewness refers to the symmetry of a distribution:

• A “tail” is referred to as “skewness”
• Tail on left = skewed to left = negative skew
• Tail on right = skewed to right = positive skew
• Perfectly symmetrical distributions have no skew

The side of the distribution with the tail has fewer cases.

![image](https://user-images.githubusercontent.com/75806093/124901285-26b60c80-dfe2-11eb-8077-56cba9663dce.png)

![image](https://user-images.githubusercontent.com/75806093/124901319-2e75b100-dfe2-11eb-9f16-d59b4165ec90.png)

![image](https://user-images.githubusercontent.com/75806093/124901353-3a617300-dfe2-11eb-850b-74cfa199911c.png)

![image](https://user-images.githubusercontent.com/75806093/124901387-43524480-dfe2-11eb-882d-7e3d6d4cdde2.png)

# <a id ="variability-measures"></a>Variability Measures

![image](https://user-images.githubusercontent.com/75806093/124903056-db046280-dfe3-11eb-87a9-802ff4c89c19.png)

Qualitative variables:

## - Heterogeneity or Impurity indexes

They are based on relative frequencies f(i) or percentage p(i)

• They consider nominal scales
• They can be applied for each type of variables
• They are always positive

![image](https://user-images.githubusercontent.com/75806093/124903362-2c145680-dfe4-11eb-8a4e-303671aca3c8.png)

![image](https://user-images.githubusercontent.com/75806093/124903394-36ceeb80-dfe4-11eb-8073-1fa9451546a4.png)

Quantitative variables:

## - Global variability

Interquartile range IQR = Q3-Q1 (UQ - LQ)

Minimum: the lowest value of a variable represented in your data.

Maximum: the highest value of a variable represented in your data.

The Range is calculated as the maximum minus the minimum

Range K= xmax - xmin

## - Measures of Dispersion
How “spread out” are the cases around the mean.

Some measures of dispersion:
– Average Absolute deviation
– Variance
– Standard deviation
– Coefficient of Variation

Deviation: How much a particular case differs from the mean of all cases.

Deviation of zero indicates the case has the same value as the mean of all cases
– Positive deviation: case has higher value than mean
– Negative deviation: case has lower value than mean

It is the distance from the mean (Y-bar).

- Average Absolute Deviation

Calculate the sum, divide by total N of cases

Gives the deviation of the average case

![image](https://user-images.githubusercontent.com/75806093/124905114-ff613e80-dfe5-11eb-97e2-cf445585b744.png)

- Variance

Variance = Average of “squared deviation”

Properties of the variance:
– Zero if all points cluster exactly on the mean
– Increases the further points lie from the mean
– Comparable across samples of different size

![image](https://user-images.githubusercontent.com/75806093/124905402-494a2480-dfe6-11eb-90ea-97163c7080f6.png)

![image](https://user-images.githubusercontent.com/75806093/124904369-3b47d400-dfe5-11eb-9310-060b3499cf23.png)

![image](https://user-images.githubusercontent.com/75806093/124904405-43077880-dfe5-11eb-8451-24ac5e17f55a.png)

![image](https://user-images.githubusercontent.com/75806093/124904437-4bf84a00-dfe5-11eb-9a9e-041a2574bca8.png)

- Standard Deviation

Take square root of Variance to shrink it back down.

![image](https://user-images.githubusercontent.com/75806093/124905426-4f400580-dfe6-11eb-8481-83e2b9bdd739.png)

- Coefficient of Variation

![image](https://user-images.githubusercontent.com/75806093/124905444-52d38c80-dfe6-11eb-9c63-feb73dafa631.png)

- Z-Score (Standardized Score)

You can convert any or all values of a variable to a common scale, running approximately from –3 to +3 , with mean = 0

Then you can easily compare across variables.

![image](https://user-images.githubusercontent.com/75806093/124905488-5ff07b80-dfe6-11eb-8a21-e3ffedb0c4b6.png)

![image](https://user-images.githubusercontent.com/75806093/124904598-7b0ebb80-dfe5-11eb-9f1a-a292804f583b.png)

# <a id="inferential-statistics"></a>Inferential Statistics

Inferential Statistics does not intend so much to describe what emerges from the observed manifestations (partial survey), but what would emerge if the survey were extended to all the manifestations of the phenomenon.

Statistical Inference: making statistical generalizations about a population from
evidence contained in a sample.

When is statistical inference likely to work?

1. When a sample is large
2. When a sample is representative of the entire population

Statistical inference involves two tasks:

1. Using information from a sample to estimate properties of the population
2. Using laws of statistics and information from the sample to determine how close
our estimate is likely to be

- Population

The entire set of persons, objects, or events that have at least one
common characteristic of interest to a researcher.

- Sample

A subset of a population.

- Random Samples

A sample chosen from a population such that each observation has an equal chance
of being selected

- Population and Sample Notation

Characteristics of populations are called parameters.
Characteristics of a sample are called statistics

To keep things straight, mathematicians use Greek letters to refer to populations and Roman letters to refer to samples.

Estimates of a population parameter based on information from a sample is
called a “point estimate

Formulas to estimate a population parameter from a sample are “estimators”

Mathematicians identify estimates of population parameters in formulas by placing a caret ( ^ ) over the parameter; the caret is called a “hat”.

• Population parameters (μ, σ) are constants (there is one true value, but it is unknown)

• Sample statistics (Y-bar, s) are variables

# <a id="probability"></a>Probability
The uncertainty that derives from the partiality of the survey it is dominated by the Theory of Probabilities.

- Events: entities characterized by randomness, something that can occur or not.

When an event occurs, a probability is associated.

![image](https://user-images.githubusercontent.com/75806093/124906177-118fac80-dfe7-11eb-931f-4819d15ed4f4.png)

![image](https://user-images.githubusercontent.com/75806093/124906211-19e7e780-dfe7-11eb-96e8-4e3bdbbbdf42.png)

![image](https://user-images.githubusercontent.com/75806093/124906240-22402280-dfe7-11eb-86ed-251a9bfff128.png)

- Elementary events: sets containing only one element

In general, the sample space is described in terms of elementary events.

- Conditional Probability

![image](https://user-images.githubusercontent.com/75806093/124906354-4439a500-dfe7-11eb-8c44-7b2958091148.png)

- Independent Events

Two events E1 and E2 will be said to be independent if the probability of the occurrence of one remains unchanged knowing that the other occurred, i.e.

![image](https://user-images.githubusercontent.com/75806093/124906451-5d425600-dfe7-11eb-80ba-fa7a627d8464.png)

- De Morgan laws

![image](https://user-images.githubusercontent.com/75806093/124906493-67645480-dfe7-11eb-8334-a09f6aa1b8c1.png)

- Sampling

![image](https://user-images.githubusercontent.com/75806093/124906571-7d721500-dfe7-11eb-8f4f-232d713a4386.png)

- Binomial coefficient

![image](https://user-images.githubusercontent.com/75806093/124906640-9084e500-dfe7-11eb-9625-a9a45b95be87.png)

- Law of Total Probability

![image](https://user-images.githubusercontent.com/75806093/124906726-a98d9600-dfe7-11eb-9e63-5814c82cc599.png)

- Bayes' Theorem (or Rule)

![image](https://user-images.githubusercontent.com/75806093/124906801-c0cc8380-dfe7-11eb-8787-a2bc69989114.png)

<a id="random-variables"></a>Random Variables
A random variable is a real function defined on an event space, so a function that associates a real number with elements of the space of events Omega.

Random variables can be divided in discrete and continuous.

- Discrete RV

The r.v. X is said to be discrete if it assumes a finite number or finite number of values x1, x2, ..xk

- Continuous RV

A continuous r.v is a function that can assume all values within a range (a, b)

- Bernoullian Experiment

It is random experiment consisting of a set of n repeated tests with the
following characteristics:
1. At every single test, there are only two possible outcomes, 'success' and 'failure’
2. The probability p of 'success' is constant
3. The trials are independent

n = 1 --> Bernoulli Random Variable
n > 1 --> Binomial Random Variable

- Bernoulli RV

Discrete random variable assuming only 2 values 0 and 1 with probabilities respectively (1-p) and p with 0 <p <1

![image](https://user-images.githubusercontent.com/75806093/124930544-b61ee800-e001-11eb-84d3-f5838060e5de.png)

- Binomial RV

The discrete random variables counting the number of successes in n bernoullian eperiments where p, 0 <p <1, is the probability of success in the single replication is called the Binomial random variable.

![image](https://user-images.githubusercontent.com/75806093/124930639-ccc53f00-e001-11eb-980c-43298cb939fb.png)

- Normal RV (or Gaussian)

It is a continuous random variable that assumes all real numbers

![image](https://user-images.githubusercontent.com/75806093/124930805-ed8d9480-e001-11eb-858d-a907ec9232c0.png)

![image](https://user-images.githubusercontent.com/75806093/124930863-f716fc80-e001-11eb-9c3c-dcedc5725d05.png)

- Z-score formula

![image](https://user-images.githubusercontent.com/75806093/124930969-0f871700-e002-11eb-8984-300bc388878c.png)

- Binomial to Normal RV

![image](https://user-images.githubusercontent.com/75806093/124931033-22015080-e002-11eb-8ead-0eb02e317157.png)

- Sample Random Variables

Estimators
![image](https://user-images.githubusercontent.com/75806093/124932299-401b8080-e003-11eb-8f0f-4f88ddf899aa.png)

Properties of Estimators:

    - Unbiasedness
    - Consistency
    - Relative efficiency
    
![image](https://user-images.githubusercontent.com/75806093/124932465-64775d00-e003-11eb-83be-83a1725ca9a7.png)

- RV Sample Mean

![image](https://user-images.githubusercontent.com/75806093/124932634-87a20c80-e003-11eb-8d07-8cc2fceb8b15.png)

![image](https://user-images.githubusercontent.com/75806093/124932676-9092de00-e003-11eb-8a85-9c5d3d653a88.png)

- RV Sample Variance

![image](https://user-images.githubusercontent.com/75806093/124932738-9dafcd00-e003-11eb-8132-b25cae5bbaf2.png)

- RV Sample Proportion

![image](https://user-images.githubusercontent.com/75806093/124932790-a6080800-e003-11eb-9a4d-14c4ba317d9d.png)

<a id="distributions-and-moments"></a>Distributions and Moments
A probability distribution is a statistical function that describes all the possible values and likelihoods that a random variable can take within a given range. This range will be bounded between the minimum and maximum possible values, but precisely where the possible value is likely to be plotted on the probability distribution depends on a number of factors. These factors include the distribution's mean (average), standard deviation, skewness, and kurtosis. 

- Normal
The graph of the normal distribution depends on two factors - the mean and the standard deviation. The mean of the distribution determines the location of the center of the graph, and the standard deviation determines the height and width of the graph.

All normal distributions look like a symmetric, bell-shaped curve, as shown below.

![image](https://user-images.githubusercontent.com/75806093/124967789-1c693200-e025-11eb-898c-14da49129668.png)

    - About 68% of the area under the curve falls within 1 standard deviation of the mean.
    - About 95% of the area under the curve falls within 2 standard deviations of the mean.
    - About 99.7% of the area under the curve falls within 3 standard deviations of the mean.

- T-student
The t distribution (aka, Student’s t-distribution) is a probability distribution that is used to estimate population parameters when the sample size is small and/or when the population variance is unknown.

There are actually many different t distributions. The particular form of the t distribution is determined by its degrees of freedom. The degrees of freedom refers to the number of independent observations in a set of data.

- Chi-square

The chi-square distribution is constructed so that the total area under the curve is equal to 1. The area under the curve between 0 and a particular chi-square value is a cumulative probability associated with that chi-square value. For example, in the figure below, the shaded area represents a cumulative probability associated with a chi-square statistic equal to A; that is, it is the probability that the value of a chi-square statistic will fall between 0 and A.

![image](https://user-images.githubusercontent.com/75806093/124968089-81248c80-e025-11eb-8e84-0029e12ecbfa.png)

- F
The distribution of all possible values of the f statistic is called an F distribution, with v1 = n1 - 1 and v2 = n2 - 1 degrees of freedom.

The curve of the F distribution depends on the degrees of freedom, v1 and v2.

<a id="law-of-the-large-numbers"></a>Law of the Large Numbers
The idea that the relative frequency of an event will converge on the probability of the event, as the number of trials increases, is called the law of large numbers.

<a id="central-limit-theorem"></a>Central Limit Theorem
The central limit theorem states that the sampling distribution of the mean of any independent, random variable will be normal or nearly normal, if the sample size is large enough.

How large is "large enough"? The answer depends on two factors.

    - Requirements for accuracy. The more closely the sampling distribution needs to resemble a normal distribution, the more sample points will be required.
    - The shape of the underlying population. The more closely the original population resembles a normal distribution, the fewer sample points will be required.
    
<a id="confidence-intervals"></a>Confidence Intervals
Probability that a confidence interval contains our unknown value.

![image](https://user-images.githubusercontent.com/75806093/124933040-da7bc400-e003-11eb-9409-689f6048adf4.png)

- For the Mean

![image](https://user-images.githubusercontent.com/75806093/124933160-f4b5a200-e003-11eb-9dbd-4846904957fd.png)

![image](https://user-images.githubusercontent.com/75806093/124933208-fed7a080-e003-11eb-9af4-6c0c844c2c79.png)

- For the Proportion

![image](https://user-images.githubusercontent.com/75806093/124933265-0bf48f80-e004-11eb-8d89-8fa07b2c218e.png)

<a id="hypothesis-tests"></a>Hypothesis Tests
A statistical hypothesis is an assumption about a parameter of a distribution of a
random variable.

The essay of a statistical hypothesis (null hypothesis H0) is based on demonstration by contradiction.

    The starting point is the assumption (Null hypothesis), logical arguments are made (application of a test), if the arguments do not confirm the starting assumption (result unlikely), then contradicts (Rejection of the Null Hypothesis)

Method:

![image](https://user-images.githubusercontent.com/75806093/124933741-67bf1880-e004-11eb-9a6b-ada989305bd3.png)

At the end of the procedure, a test always leads to two alternatives: either you reject the null hypothesis H0, or you accept it.

    If you reject the null hypothesis when it is false and if you do not refuse it when it is true, you will not make any mistakes.
    Since decisions are taken on the basis of a sample, it can happen to make mistakes: rejecting the null hypothesis when it is true (type I), do not reject the null hypothesis when it is false (type II)

As every time we deal with uncertainty, it is possible to define the probability of committing type I and type II errors, a and b:

![image](https://user-images.githubusercontent.com/75806093/124943981-40207e00-e00d-11eb-87ae-94d0e9e3323e.png)

- H test - for the Mean

![image](https://user-images.githubusercontent.com/75806093/124958418-6d275d80-e01a-11eb-8034-989a7d4ff975.png)

![image](https://user-images.githubusercontent.com/75806093/124958461-79131f80-e01a-11eb-83ea-65562edf807f.png)

![image](https://user-images.githubusercontent.com/75806093/124958521-88926880-e01a-11eb-858e-e350bc109452.png)

- H test - for the Proportion

![image](https://user-images.githubusercontent.com/75806093/124958574-99db7500-e01a-11eb-8ffe-fd1309d66065.png)

- H test - for the comparison of two Means

![image](https://user-images.githubusercontent.com/75806093/124958648-aa8beb00-e01a-11eb-9140-41278cae7d72.png)

- H test - for the comparison of two Proportions

![image](https://user-images.githubusercontent.com/75806093/124958703-bd062480-e01a-11eb-8a83-7bdf73610796.png)

- P-value

The p-value is the highest level of a we could have established that would have allowed us to reject the null hypothesis on the basis of the sample data.

The p-value is the evidence against a null hypothesis. The smaller the p-value, the strong the evidence that you should reject the null hypothesis.

![image](https://user-images.githubusercontent.com/75806093/124958792-d8712f80-e01a-11eb-8c6d-98892cfc93b1.png)

<a id="bivariate-analysis"></a>Bivariate Analysis
The aim of the BIVARIATE ANALYSIS is to find out if two statistical variables are independent or are linked.

![image](https://user-images.githubusercontent.com/75806093/124959473-87ae0680-e01b-11eb-9544-912b7b10108b.png)

<a id="anova"></a>ANOVA
- One-way ANOVA

The one-way analysis of variance is used to test the claim that three or more population means are equal

This is an extension of the two independent samples t-test

The response variable is the variable you’re comparing

The factor variable is the categorical variable being used to define the groups

The one-way is because each value is classified in exactly one way

![image](https://user-images.githubusercontent.com/75806093/124959752-d65ba080-e01b-11eb-8d50-4ec02af5d85b.png)

Components:

    - SS
    - df
    - MS
    - F
    - p

- SS - Sum of Squares

Sum of Squares is another name for variation

This is called the total variation, denoted SS(Total) for the total Sum of
Squares (variation)

This is called the between group variation, denoted SS(B) for Sum of Squares (variation) between the groups

This is called the within group variation, denoted SS(W) for Sum of Squares (variation) within the groups

- Grand Mean

The grand mean is the average of all the values when the factor is ignored

It is a weighted average of the individual sample means

- df - Degrees of Freedom

A degree of freedom occurs for each value that can vary before the rest of the values are predetermined

df(B): The between group df is one less than the number of groups

df(W): The within group df is the sum of the individual df’s of each group

df(Tot): The total df is one less than the sample size

- MS - Mean of Squares

The variances are also called the Mean of the Squares and abbreviated by MS, often with an accompanying variable MS(B) or MS(W)

They are an average squared deviation from the mean and are found by dividing the variation by the degrees of freedom

MS = SS / df

The MS(Within) is also known as the pooled estimate of the variance since it is a weighted average of the individual variances

- F test statistic

An F test statistic is the ratio of two sample variances

F = MS(B) / MS(W)

The F test is a right tail test

The F test statistic has an F distribution with df(B) numerator df and df(W) denominator df

The p-value is the area to the right of the test statistic

![image](https://user-images.githubusercontent.com/75806093/124961225-7d8d0780-e01d-11eb-8c99-08e2b947a782.png)

![image](https://user-images.githubusercontent.com/75806093/124961326-9a293f80-e01d-11eb-9153-1757104c1a8a.png)

![image](https://user-images.githubusercontent.com/75806093/124960274-6f8ab700-e01c-11eb-890f-6e631d839125.png)

<a id="association"></a>Association

## - Crosstabulation

A crosstabulation for two generic phenomena X and Y is a symbolic representation of a two-way entry table

![image](https://user-images.githubusercontent.com/75806093/124962739-47e91e00-e01f-11eb-98db-030cbfac9e83.png)

![image](https://user-images.githubusercontent.com/75806093/124962768-51728600-e01f-11eb-9eed-9de539329582.png)

![image](https://user-images.githubusercontent.com/75806093/124962833-62bb9280-e01f-11eb-8ca2-c1e6244e86dc.png)

![image](https://user-images.githubusercontent.com/75806093/124962877-6c44fa80-e01f-11eb-8b64-8aa1ecc579ca.png)

Relative Frequency

![image](https://user-images.githubusercontent.com/75806093/124962986-8d0d5000-e01f-11eb-9b7f-e0fdcfe259c3.png)

Conditional Distribution

![image](https://user-images.githubusercontent.com/75806093/124963352-fbeaa900-e01f-11eb-83d6-9b8f4d5765cf.png)

![image](https://user-images.githubusercontent.com/75806093/124963375-05741100-e020-11eb-8d0b-c6aeefd5159c.png)

- Independence

Given crosstabulation, the variables X and Y will be said to be independent if the modality in which X presents itself does not give information on the modality in which Y presents itself

- Association

We speak of association between two qualitative phenomena, indicating the existence of some link in the joint manifestation of the same phenomena

- Stochastic Independence

If all the conditional distributions are equal (by row and simultaneously by column) then the occurrence of a particular modality of a phenomenon is not affected by the occurrence of the other.

If all conditional distributions of X are equal, then they are necessarily equal to the marginal distribution of X.

If all conditional distributions of Y are equal, then they are necessarily equal to the marginal distribution of Y.

- Association measure

It must assume a value of 0 in the absence of association and gradually increasing values as the dependence between the two phenomena increases

![image](https://user-images.githubusercontent.com/75806093/124963741-774c5a80-e020-11eb-85bb-6082c2ef693c.png)

- Costingency

Distance between observed frequencies and expected frequencies.

![image](https://user-images.githubusercontent.com/75806093/124963881-a4007200-e020-11eb-9861-4465071b2826.png)

- Chi-square index

![image](https://user-images.githubusercontent.com/75806093/124963931-b67aab80-e020-11eb-884f-8991e53e0ab0.png)

![image](https://user-images.githubusercontent.com/75806093/124963975-c1cdd700-e020-11eb-9a94-daeb03f9028a.png)

    1. Expected Frequencies
    2. Contingencies
    3. Chi-square
    4. Sum of cells - Chi
    5. Normalization

- H-test to verify independence

![image](https://user-images.githubusercontent.com/75806093/124964206-078a9f80-e021-11eb-9b67-ea2fccce80d3.png)

<a id="correlation"></a>Correlation

- Scatter Diagram

To provide a graphical representation of the joint trend of the two variables, the scatter diagram is used.

![image](https://user-images.githubusercontent.com/75806093/124964402-43be0000-e021-11eb-97d3-6d2a26541413.png)

- Covariance

A synthetic indicator of the aptitude of two phenomena to be susceptible to concurrent variations

    - It measures the joint variability of two variables X and Y
    - It is a symmetrical index that expresses the direction sign
    - Affected by the size of variables
    - It is between the product of the two standard deviations

![image](https://user-images.githubusercontent.com/75806093/124964477-5df7de00-e021-11eb-9eba-00f8b4e31ada.png)

- Linear Correlation Coefficient (Pearson)

It is symmetrical, it is an index without a unit of measurement

It measures the intensity and the sign of the linear link between variables

It ranges between -1 and +1

    - = 1 perfect linear correlation (straight line with positive slope)
    - = 0 absence of linear correlation
    - = -1 perfect linear correlation (straight line with negative slope)
    
<a id="regression"></a>Regression
We are looking for a function that explains Y as a function of X

If we choose a linear function with equation Y = a + bX, we need to estimate the parameters a and b. That is to find, among all the possible lines, the one that best interpolates the point cloud

![image](https://user-images.githubusercontent.com/75806093/124965103-08700100-e022-11eb-9258-3d7c675662b8.png)

![image](https://user-images.githubusercontent.com/75806093/124965151-14f45980-e022-11eb-9d7e-b92f0cddf481.png)

- Least Square method

![image](https://user-images.githubusercontent.com/75806093/124965228-289fc000-e022-11eb-88f9-4defefbbdd69.png)

- Goodness of Fit

Fit index: measures how much of the total variability of Y the regression model can explain

![image](https://user-images.githubusercontent.com/75806093/124965746-c2676d00-e022-11eb-96b9-3a5b3f3fecad.png)

![image](https://user-images.githubusercontent.com/75806093/124965817-d3b07980-e022-11eb-85a4-68439e4cc4c8.png)

- Residual Analysis

![image](https://user-images.githubusercontent.com/75806093/124965914-ea56d080-e022-11eb-96ea-10f345bfb377.png)

- OLS Estimators

Properties:

    - Unbiased
    - With minimum variance
    
![image](https://user-images.githubusercontent.com/75806093/124965967-fcd10a00-e022-11eb-8152-1cf84099aca9.png)

![image](https://user-images.githubusercontent.com/75806093/124966045-15412480-e023-11eb-961d-85e8fad3bad7.png)

![image](https://user-images.githubusercontent.com/75806093/124966082-20945000-e023-11eb-8b49-d8bce13abdf9.png)

![image](https://user-images.githubusercontent.com/75806093/124966116-2f7b0280-e023-11eb-8e6d-451411c7650b.png)
