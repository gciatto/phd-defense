## Candidate Presentation

- Bachelor in software engineering

- Master in computer science and engineering

- PhD in Data Science and Computation
    + with a focus on AI

- Currently:
    + research fellow at DISI (UniBo)
    + WP-leader of the EXPECTATION project

## Motivation, Context, and Goals

### Context

- Era of data-driven AI
    - major availability of data and computational resources
    - exploitation in science and in the industry
    - fundings to AI-oriented research lines

- But AI, before that, has involved several other disciplines
    + e.g. computational logic 

- Following a "classical" perspective, we distinguish among 
    - symbolic AI ~ CL vs. sub-symbolic ~ ML / DS
    - the two branches of AI were developed concurrently

### Motivation

- Symbolic and sub-symbolic have several complementarities

- The combination of the two approaches may bring benefit to AI as a whole

- Long-standing interest in integrating the two approaches 

- Interest in spotting any obstacle towards unification
    * either at the theoretical or technological level

### Goals

Quite foundational goals:

1. comparing DS and CL along 4 major dimensions:
    - representation
    - acquisition (aka learning)
    - inference (aka reasoning)
    - explanation

2. elicit synergies and complementarities, and frictions w.r.t. integration

3. assess the technological gap among the two
    - possibly helping in filling the holes

### Organization of the Thesis

- Computational perspective
    * with a focus on _what_ aspects of DS and CL can be integrated
    * actual goals
        1. understanding the analogies and differences among CL and DS, hence looking
        for possible synergies and complementarities;

        2. derive a conceptual framework through which bridges among CL and DS can
        be described and designed, along the 4 main dimensions;


- Technological perspective
    * with a focus on _how to_ integrate such aspects
    * actual goals:
        3. evaluate the current state of the art of AI technologies, w.r.t. their capability
        to support the realisation of those bridges;

        4. propose the notion of logic ecosystem as the new conceptual, architectural,
        and technological solution supporting the incremental integration of symbolic and sub-symbolic AI;

        5. discuss how our notion of logic ecosystem can be (i) reified into actual soft-
        ware technology and (ii) extended to support the joint exploitation of DS
        and CL in practice.

## Background

### Data Science

- Novel discipline laying at the intersection among CS, Statistics, AI, and software engineering

- Focus on modelling the world following a data-driven approach
    + possibly, by leveraging machine learning or data mining techniques

- Pros/cons:
    + adherence to reality, thanks to data
    + exploitation of scalable algorithms for learning
    * flexibility w.r.t. errors in the data or in the model
    - reliance on poorly interpretable models
    - simple, "intuitive" form of inference

### Computational Logic

- Well-established discipline laying at the intersection among CS, logic, and mathematics

- Focus on using formal logics as a means for computing
    + hence, on making software systems able to reason

- Pros/cons:
    + powerful, "rational" form of inference
    + reliance on machine- and human-interpretable representations
    * crisp and exact representation and decisions
    - reliance on poorly scalable, often untractable, or undecidable algorithms
    - top-down approach to knowledge, possibly detached from reality

### Historical Perspective on AI

???

## Computational Perspective (What)

- Research questions being addressed

- Overview: four major "contact points" among DS and CL: representation, learning, reasoning, and explaining

### Representation

How is information encoded and made available to 
- computers for processing
- humans for HCI

- Symbolic vs. sub-symbolic / distributed representation

- DS leverages on sub-symbolic representations
    - data -> numeric datasets of fixed size
    - knowledge -> opaque models mimicing functions of real numbers
    - issues may arise from recursive, or unlimited concepts
    - representations may easily become unintelligible

- CL leverages on the language of logic
    - several logic formalisms available
        - which logic? Depends on the expressivity--tractability trade-off
        - good trade-off provided by Horn clauses
    - both human- and machine-interpretable
    - support for intensional representations
    - support for recursive / structured information
    - coherent representation of both data and knowledge via relations

### Learning

How is novel re-usable knowledge distillied from data

- Similar formulation:
    - search the best hypothesis in an hypothesis space
    - human-in-the-loop required to tune the hypothesis space
    - automatic procedures for exploring the hypothesis space
    - learning as non-deterministic (possibly stochastic) process

- Different implementations:
    - DS -> numeric data -> differentiable hypothesis space -> gradient descent
        - fuzzy constraints, fuzzy outcomes
        - support for hardware acceleration via GPGPU
    - CL -> symbolic knowledge bases -> discrete search space -> ILP / SLR
        - crisp constraints, consistent outcomes
        - virtual support for concurrency

- Different results:
    - DS learns numeric functions
    - CL learns symbolic relations, aka logic programs

### Inference

How are predictions drawn from distilled knowledge

- DS just feeds trained models with unseen data
    - models are black-box functions
    - quick and (possibly) dirty predictions

- CL applies inference rules in a principled way
    - deduction, induction, abduction, probabilistic reasoning, etc.
    - rational predictions, which may require computational time/space
    - users may either observe the result or the reasoning process
    - plenty of inference algorithms, different decidability/tractability properties
    - very relevant SLD resolution principle, supporting deduction over Horn Clauses
        - basis of the Prolog programming language

### Explaining

How is distilled information transferred to another (possibly human) agent?

- recent problem, mostly due to the sub-symbolic nature of DS

- current focus of the XAI research area
    - trained sub-symbolic models are black-boxes => issue in responsability-critical scenarios
    - need to support explanations data-driven AI systems

- symbolic systems are inherently interpretable
    - as symbols are meant to carry meaning for users
    - insight: convert sub-symbolic models into symbolic ones

- develop abstract framework for XAI
    - key point: explanation != interpretation
    - explanation by creating a more-interpretable (aka symbolic) model

- symbolic knowledge extraction as the key element for explaining DS
    - made possible by CL: extracted knowledge should be logically represented
        - logic knowledge can be read by humans and simply "loaded" by computers

## Technological Perspective (How)

- Research questions being addressed

- Overview: survey of the state of technologies, proposal of the logic based ecosystem

### Current State of Technology

- Small amount of mature technologies, many proof of concepts

- Technological Silos

- Prolog as the most prominent LBT

### 2P-Kt the logic based ecosystem for (symbolic) AI

1. Project map, relevance of the library approach, relevance of multi-platform and multi-paradigm

2. Support for knowledge representation (:core)

3. Support for learning (:ml-lib, :induce)
    1. support for inductive logic programming via MIL
    2. support for logic based API for ML

4. Support for inference (:solve, :solve-*)
    1. primitives API and streams
    2. unified API for logic solvers
    3. support for Prolog like resolution 
    4. support for Probabilistic resolution
    5. support for concurrent resolution

5. Support for explanations via SKE (:psyke)
    1. extraction of Prolog programs from ML predictors
    2. overview on extraction algorithms (decompositional vs. pedagogical)

## Conclusions and future works

### Conclusions

### Future Works

1. Concurrent logic programming

1. Inductive Logic Programming
    - provide actual technological support
    - exploit sub-symbolic ML behind the scenes to speedup the process
    - combination with symbolic logic programming

2. Graph neural networks

3. Symbolic knowledge injection