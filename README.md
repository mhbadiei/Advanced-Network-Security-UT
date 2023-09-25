# Advanced-Network-Security-UT

## Exercise 1: Cryptography and Security Analysis

This exercise explores concepts related to hash functions and their collision resistance properties. It questions the validity of a statement regarding the uniqueness of hash values for distinct inputs.

Using the birthday paradox, this part aims to prove the strength of a strong collision-resistant hash function, illustrating the number of attempts needed to find colliding hashes with a given probability.

This section involves probability calculations related to permutations in the context of DES (Data Encryption Standard) and the likelihood of a permutation having no fixed points.

This part delves into the analysis of a block cipher and the probability that two different keys result in distinct mappings for a set of plaintext-ciphertext pairs.

These questions revolve around number theory and Fermat's Little Theorem, addressing topics related to prime numbers, modular arithmetic, and their applications in cryptography.

## Exercise 2: Cryptographic Protocols

Exercise 2 begins with a request to prove the verification process of ElGamal's signature scheme, a widely-used public-key cryptography algorithm.

This part extends the analysis to RSA, another popular public-key encryption system, even when the greatest common divisor of the plaintext and the modulus is not equal to 1.

The exercise shifts focus to biometric authentication systems, discussing false-accepts and false-rejects, and calculating the probability of locking out valid users or granting access to invalid ones.

The protocol described in this part involves key agreement between A and B, with a potential vulnerability when an attacker intercepts the communication. It explores the consequences of such an attack and proposes a solution.

A protocol for key distribution is presented, and the exercise questions include explanations of the protocol's steps, possible attacks, and countermeasures.

## Exercise 3: Network Security and Modeling

This exercise begins with a mathematical analysis of an excessive degree distribution, comparing it to fully-mixed models and discussing associated problems.

It involves modeling a virus outbreak in a network using differential equations, analyzing the number of susceptible nodes, infection duration, and other related parameters.

The exercise introduces Support Vector Machine (SVM) classifiers and guides the learner through manual calculations for a simple SVM problem.

It discusses the Crowds anonymizing algorithm, addressing the average number of forwards and the probability of malicious nodes revealing the destination.

This part presents a network security protocol and seeks to identify possible attacks, potential vulnerabilities, and countermeasures.

## Research Assignment #1 and Assignment #2

These sections appear to contain detailed simulations and analyses of network security scenarios. It focuses on SI Models and virus spread.

## Prpject: Reverse Engineering of Neural Networks
In this project, we explore the fascinating world of reverse engineering neural networks, an emerging field in the realm of machine learning and artificial intelligence. Neural networks are powerful tools used for tasks like classification and regression, with applications spanning from image recognition to natural language processing. However, understanding and extracting the inner workings of these models can be challenging, especially when they are treated as black-box systems.

Our project focuses on the extraction of critical information from these black-box neural network models without the need for retraining. We delve into various extraction attacks, including weight and sign extraction, which aim to unveil the hidden architecture, layer configurations, weights, neurons, and activation functions of these networks.

To achieve this, we review and analyze five key articles that delve into different aspects of extraction attacks. These methods range from equation-solving attacks that aim to find model parameters by querying the network with random inputs to decision tree path finding attacks that seek to identify the paths taken by the network's decision-making process. We also explore online model extraction attacks against platforms like BigML and Amazon and examine techniques for extraction given only class labels.

Additionally, we delve into the world of model reconstruction from model explanations, where we seek to recover classifiers identical to an unknown model using gradient queries. This approach allows us to explore the extraction of parameters and functionalities from neural networks in-depth.

Throughout our exploration, we confront challenges related to accuracy, efficiency, and the number of queries required for successful extraction. We investigate the trade-offs between different extraction methods and discuss their practical implications in real-world scenarios.
