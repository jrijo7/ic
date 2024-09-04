## Neurips Times

### MCMC

#### Using RCPP:
- **Number of topics (K):** 10
  - **Iterations (n_iter):** 150
  - **Save interval (save_it):** 5
  - **Time taken:** 3.1811599 minutes

- **Number of topics (K):** 15
  - **Iterations (n_iter):** 150
  - **Save interval (save_it):** 5
  - **Time taken:** 4.210568 minutes

- **Number of topics (K):** 20
  - **Iterations (n_iter):** 150
  - **Save interval (save_it):** 5
  - **Time taken:** 12.37063 minutes

### CAVI:
- **Number of topics (K):** 10
  - **Iterations (n_iter):** 150
  - **Time taken:** 6.571822 seconds

- **Number of topics (K):** 15
  - **Iterations (n_iter):** 150
  - **Time taken:** 10.02719 seconds

- **Number of topics (K):** 20
  - **Iterations (n_iter):** 150
  - **Time taken:** 11.33301 seconds

## Topics Results by MCMC:

#### K = 15
1. Reinforcement learning
2. Neural activity
3. Speech recognition
4. Neural network structure/training
5. Neural networks applications in the context of electrical circuits (hardware?)
6. Neural networks applications for mechanical or movement-related tasks
7. Representation learning
8. Image recognition applications
9. Reinforcement learning in the context of robotics
10. Image data applications
11. Neural network inference/training
12. Neural network inference/training (similar to topic 11)
13. Neural network inference/training (similar to topic 11)
14. Stochastic modeling
15. General neural networks, possibly with applications in dynamic systems

#### K = 20
1. Artificial intelligence and neural networks
2. Data analysis and neural networks
3. Neural network training and performance evaluation
4. Neural network architecture
5. Functioning of the nervous system
6. Functioning of the nervous system
7. Possibly ensemble and mixture of experts
8. Speech processing and recognition
9. Computer vision and image recognition
10. Neural network training
11. Network architecture and training
12. Probabilistic models
13. Neural and electronic engineering
14. Machine learning models for classification
15. Neural networks for sound signal processing
16. Reinforcement learning and control systems
17. Mathematics and machine learning
18. Dynamics of systems and neural networks
19. Neural networks applied to image data
20. Linear algebra

## Topics Results

### MCMC Using RCPP

#### K = 10

| Tópico 1: Neural Networks | Tópico 2: Neurons | Tópico 3: Algorithms | Tópico 4: Machine Learning | Tópico 5: Recognition | Tópico 6: Training | Tópico 7: Images | Tópico 8: Data | Tópico 9: Models | Tópico 10: Functions |
|----------------------------|-------------------|----------------------|---------------------------|-----------------------|--------------------|------------------|----------------|-------------------|-----------------------|
| cell                       | network           | function             | learning                  | network               | learning           | image            | data           | model             | network               |
| model                      | neuron            | network              | action                    | word                  | network            | network          | model          | data              | unit                  |
| neuron                     | neural            | algorithm            | algorithm                 | input                 | model              | object           | classifier     | function          | learning              |
| input                      | input             | learning             | function                  | neural                | error              | model            | system         | distribution      | weight                |
| system                     | system            | neural               | model                     | training              | input              | unit             | set            | algorithm         | algorithm             |
| signal                     | circuit           | set                  | problem                   | recognition           | unit               | images           | network        | set               | training              |
| network                    | chip              | input                | system                    | set                   | weight             | visual           | training       | network           | input                 |
| response                   | output            | number               | policy                    | system                | training           | input            | problem        | parameter         | error                 |
| visual                     | analog            | result               | control                   | output                | neural             | system           | algorithm      | method            | set                   |
| activity                   | model             | weight               | reinforcement             | speech                | output             | representation   | neural         | gaussian          | function              |
| cell                       | network           | function             | learning                  | network               | learning           | image            | data           | model             | network               |
| model                      | neuron            | network              | action                    | word                  | network            | network          | model          | data              | unit                  |
| neuron                     | neural            | algorithm            | algorithm                 | input                 | model              | object           | classifier     | function          | learning              |
| input                      | input             | learning             | function                  | neural                | error              | model            | system         | distribution      | weight                |
| system                     | system            | neural               | model                     | training              | input              | unit             | set            | algorithm         | algorithm             |
| signal                     | circuit           | set                  | problem                   | recognition           | unit               | images           | network        | set               | training              |
| network                    | chip              | input                | system                    | set                   | weight             | visual           | training       | network           | input                 |
| response                   | output            | number               | policy                    | system                | training           | input            | problem        | parameter         | error                 |
| visual                     | analog            | result               | control                   | output                | neural             | system           | algorithm      | method            | set                   |
| activity                   | model             | weight               | reinforcement             | speech                | output             | representation   | neural         | gaussian          | function              |

#### K = 15

| Tópico 1: Learning | Tópico 2: Neurons | Tópico 3: Speech Recognition | Tópico 4: Neural Networks | Tópico 5: System | Tópico 6: Function | Tópico 7: Input | Tópico 8: Object | Tópico 9: Control | Tópico 10: Image | Tópico 11: Unit | Tópico 12: Algorithm | Tópico 13: Training | Tópico 14: Data | Tópico 15: Network |
|---------------------|-------------------|-----------------------------|--------------------------|------------------|--------------------|----------------|-------------------|-------------------|------------------|----------------|----------------------|---------------------|----------------|--------------------|
| learning            | neuron            | network                     | network                  | network          | model              | network        | network           | learning          | image            | network        | function             | network             | data           | network            |
| algorithm           | cell              | speech                      | function                 | neural           | control            | input          | object            | model             | network          | unit           | algorithm            | training            | model          | neural             |
| function            | model             | recognition                 | weight                   | weight           | network            | unit           | image             | system            | model            | input          | learning             | error               | algorithm      | function           |
| action              | input             | word                        | error                    | input            | neural             | learning       | unit              | robot             | data             | learning       | set                  | learning            | function       | input              |
| policy              | visual            | training                    | learning                 | chip             | function           | pattern        | input             | control           | set              | neural         | network              | model               | set            | unit               |
| problem             | system            | system                      | input                    | output           | learning           | representation | model             | action            | algorithm        | rules          | training             | function            | distribution   | system             |
| optimal             | network           | model                       | neural                   | system           | system             | model          | task              | data              | images           | weight         | examples             | weight              | gaussian       | point              |
| network             | response          | neural                      | result                   | analog           | point              | layer          | recognition       | network           | problem          | output         | error                | algorithm           | parameter      | model              |
| model               | signal            | output                      | model                    | circuit          | motor              | weight         | images            | reinforcement     | feature          | set            | bound                | set                 | method         | net                |
| system              | synaptic          | input                       | mean                     | signal           | movement           | map            | system            | task              | vector           | training       | number               | neural              | point          | pattern            |
| step                | activity          | set                         | set                      | function         | dynamic            | training       | view              | number            | result           | system         | result               | data                | vector         | dynamic            |
| reinforcement       | spike             | hmm                         | equation                 | problem          | trajectory         | function       | set               | goal              | neural           | component      | class                | unit                | space          | attractor          |
| method              | motion            | character                   | case                     | algorithm        | input              | neural         | features          | problem           | region           | algorithm      | problem              | input               | problem        | neuron             |
| result              | firing            | unit                        | number                   | neuron           | controller         | field          | representation    | environment       | learning         | rule           | data                 | hidden              | learning       | set                |
| states              | neural            | data                        | distribution             | layer            | output             | information    | training          | position          | object           | pattern        | loss                 | output              | network        | weight             |

### K = 20

| Tópico 1: Direction | Tópico 2: Function | Tópico 3: Error | Tópico 4: Network | Tópico 5: Cell | Tópico 6: Neuron | Tópico 7: Network | Tópico 8: Speech | Tópico 9: Object | Tópico 10: Network | Tópico 11: Function | Tópico 12: Model | Tópico 13: Network | Tópico 14: Classifier | Tópico 15: Network | Tópico 16: Learning | Tópico 17: Function | Tópico 18: Network | Tópico 19: Network | Tópico 20: Component |
|----------------------|--------------------|-----------------|------------------|----------------|------------------|------------------|------------------|------------------|--------------------|---------------------|-----------------|--------------------|----------------------|---------------------|---------------------|---------------------|---------------------|---------------------|-----------------------|
| direction            | function           | error           | network          | cell           | neuron           | network          | network          | object           | network            | network             | model           | network            | classifier           | network             | learning            | function            | network             | network             | component            |
| learning             | algorithm          | learning        | unit             | neuron         | network          | learning         | speech           | visual           | model              | function            | data            | circuit            | set                  | neural              | action              | network             | model               | image               | data                 |
| model                | network            | training        | input            | model          | model            | expert           | word             | motion           | learning           | model               | distribution    | chip               | model                | signal              | algorithm           | bound               | learning            | input               | signal               |
| head                 | problem            | network         | hidden           | input          | input            | rules            | training         | image            | neural             | learning            | parameter       | neural             | data                 | model               | system              | neural              | attractor           | system              | algorithm            |
| network              | data               | function        | learning         | spike          | neural           | model            | recognition      | model            | control            | error               | algorithm       | input              | training             | system              | model               | threshold           | system              | training            | function             |
| memory               | vector             | set             | output           | firing         | system           | rule             | system           | system           | training           | input               | network         | analog             | algorithm            | output              | function            | weight              | pattern             | neural              | information          |
| input                | set                | algorithm       | weight           | synaptic       | pattern          | input            | input            | view             | trajectory         | weight              | likelihood      | neuron             | network              | sound               | control             | result              | point               | features            | matrix               |
| system               | learning           | weight          | neural           | response       | output           | set              | neural           | images           | system             | neural              | probability     | current            | method               | input               | policy              | algorithm           | memory              | feature             | vector               |
| pattern              | space              | examples        | net              | stimulus       | oscillator       | neural           | set              | position         | input              | parameter           | mixture         | weight             | error                | auditory            | problem             | number              | dynamic             | output              | linear               |
| cell                 | training           | generalization  | training         | cortical       | activity         | unit             | output           | field            | output             | gaussian            | method          | output             | classification       | frequency           | reinforcement       | theorem             | neural              | set                 | independent          |
| rotation             | point              | data            | recurrent        | activity       | connection       | function         | character        | network          | data               | distribution        | set             | system             | learning             | channel             | optimal             | input               | function            | task                | pca                  |
| unit                 | number             | number          | layer            | cortex         | cell             | training         | model            | direction        | point              | equation            | variables       | voltage            | point                | filter              | states              | set                 | set                 | recognition         | noise                |
| weight               | error              | problem         | pattern          | visual         | function         | task             | speaker          | unit             | function           | set                 | gaussian        | function           | distance             | algorithm           | step                | linear              | result              | images              | network              |
| neural               | method             | result          | representation   | pattern        | synaptic         | examples         | learning         | recognition      | performance        | noise               | density         | learning           | vector               | problem             | network             | learning            | parameter           | information         | image                |
| representation       | neural             | method          | set              | orientation    | potential        | weight           | layer            | input            | set                | training            | mean            | vlsi               | problem              | result              | method              | case                | space               | representation      | analysis             |
| data                 | input              | vector          | problem          | network        | unit             | output           | performance      | eye              | dynamic            | mean                | log             | implementation      | pattern              | set                 | hmm                 | polynomial          | states              | data                | learning             |
| rat                  | model              | test            | system           | field          | phase            | system           | data             | map              | position           | data                | number          | problem            | class                | function            | task                | proof               | input               | word                | model                |
| vector               | result             | input           | activation       | function       | oscillation      | algorithm        | test             | location         | movement           | algorithm           | function        | synapse            | performance          | error               | result              | layer               | equation            | level               | images               |
| field                | unit               | neural          | connection       | correlation    | behavior         | data             | trained          | representation   | result             | vector              | learning        | bit                | function             | control             | dynamic             | dimension           | solution            | model               | output               |
| set                  | solution           | point           | number           | rate           | response         | generalization   | unit             | target           | problem            | method              | problem         | data               | neural               | performance         | set                 | net                 | number              | layer               | filter               |

## Using CAVI

### K = 10

|   [,1]       |   [,2]       |   [,3]          |   [,4]              |   [,5]           |   [,6]       |   [,7]         |   [,8]        |   [,9]        |   [,10]    |
|:-------------|:-------------|:----------------|:--------------------|:-----------------|:-------------|:---------------|:--------------|:--------------|:-----------|
| neuron       | algorithm    | parameter       | image               | function         | neural       | result         | model         | model         | error      |
| system       | network      | problem         | information         | learning         | network      | input          | cell          | likelihood    | data       |
| input        | learning     | set             | images              | unit             | data         | function       | circuit       | point         | network    |
| visual       | function     | method          | field               | action           | output       | training       | response      | bayesian      | learning   |
| control      | space        | weight          | object              | system           | set          | matrix         | stimulus      | mean          | number     |
| spike        | neural       | distribution    | representation      | policy           | number       | set            | channel       | data          | vector     |
| effect       | system       | probability     | pattern             | reinforcement    | noise        | kernel         | spatial       | system        | weight     |
| neural       | set          | input           | map                 | step             | point        | classifier     | pattern       | markov        | task       |
| synaptic     | point        | examples        | result              | set              | system       | recognition    | temporal      | signal        | training   |
| current      | training     | term            | linear              | reward           | rate         | vector         | direction     | function      | test       |

#### Feito o pós-processamento penalizando as palavras que aparecem muito em todos os tópicos

|   [,1]       |   [,2]         |   [,3]          |   [,4]           |   [,5]            |   [,6]        |   [,7]         |   [,8]          |   [,9]          |   [,10]     |
|:-------------|:---------------|:----------------|:-----------------|:------------------|:--------------|:---------------|:----------------|:----------------|:------------|
| neuron       | algorithm      | parameter       | image            | action            | neural        | result         | model           | model           | error       |
| spike        | network        | problem         | images           | function          | adaboost      | kernel         | cell            | likelihood      | learning    |
| ica          | learning       | examples        | svm              | learning          | network       | function       | stimulus        | bayesian        | data        |
| visual       | function       | bound           | belief           | reward            | number        | matrix         | spatial         | markov          | task        |
| control      | space          | weight          | object           | unit              | student       | classifier     | channel         | point           | number      |
| effect       | search         | probability     | latent           | reinforcement     | boosting      | feature        | circuit         | mean            | network     |
| system       | error          | distribution    | field            | policy            | factor        | recognition    | cortical        | conditional     | vector      |
| cortex       | estimation     | method          | information      | step              | output        | input          | response        | hmm             | weight      |
| synaptic     | case           | posterior       | representation   | policies          | rate          | regression     | temporal        | graph           | mixture     |
| chip         | cost           | set             | face             | sutton            | bound         | training       | orientation     | signal          | pomdp       |


### K = 15

|   [,1]       |   [,2]       |   [,3]         |   [,4]      |   [,5]      |   [,6]            |   [,7]         |   [,8]         |   [,9]       |   [,10]           |   [,11]    |   [,12]        |   [,13]         |   [,14]       |   [,15]         |
|:-------------|:-------------|:---------------|:------------|:------------|:------------------|:---------------|:---------------|:-------------|:------------------|:-----------|:---------------|:----------------|:--------------|:----------------|
| cell         | mean         | system         | model       | network     | data              | set            | network        | function     | word              | system     | action         | learning        | model         | algorithm       |
| function     | input        | visual         | parameter   | unit        | training          | model          | image          | network      | recognition       | neuron     | model          | vector          | cell          | learning        |
| response     | solution     | analysis       | function    | neural      | weight            | neural         | gaussian       | point        | speech            | input      | dynamic        | space           | synaptic      | problem         |
| model        | result       | information    | number      | learning    | output            | data           | images         | bound        | context           | signal     | target         | matrix          | spike         | performance     |
| activity     | number       | object         | error       | set         | classification    | belief         | distribution   | neural       | neural            | noise      | information    | step            | neuron        | set             |
| input        | network      | level          | system      | input       | method            | constraint     | number         | model        | task              | circuit    | point          | kernel          | output        | error           |
| neuron       | neuron       | orientation    | order       | svm         | tree              | network        | result         | prior        | test              | analog     | policy         | convergence     | voltage       | unit            |
| firing       | neural       | mdp            | set         | approach    | system            | equation       | likelihood     | linear       | representation    | chip       | system         | distribution    | ica           | prediction      |
| motion       | probability  | direction      | term        | position    | input             | filter         | classifier     | posterior    | result            | current    | environment    | regression      | stimulus      | step            |
| component    | weight       | trial          | method      | training    | approach          | result         | input          | algorithm    | features          | control    | movement       | memory          | direction     | distribution    |

#### Feito o pós-processamento penalizando as palavras que aparecem muito em todos os tópicos

|   [,1]       |   [,2]        |   [,3]        |   [,4]        |   [,5]       |   [,6]          |   [,7]        |   [,8]        |   [,9]       |   [,10]      |   [,11]   |   [,12]        |   [,13]         |   [,14]       |   [,15]        |
|:-------------|:--------------|:--------------|:--------------|:-------------|:----------------|:--------------|:--------------|:-------------|:-------------|:----------|:---------------|:----------------|:--------------|:---------------|
| cell         | pca           | visual        | model         | network      | data            | belief        | image         | function     | word         | circuit   | action         | learning        | cell          | algorithm      |
| response     | solution      | mdp           | parameter     | svm          | training        | set           | images        | posterior    | speech       | analog    | dynamic        | kernel          | spike         | learning       |
| firing       | mean          | system        | function      | unit         | tree            | dataset       | gaussian      | bound        | recognition  | chip      | model          | regression      | model         | problem        |
| motion       | number        | object        | number        | latent       | classification  | model         | classifier    | bayesian     | context      | neuron    | motor          | reward          | ica           | performance    |
| activity     | risk          | information   | kernel        | neural       | weight          | constraint    | likelihood    | prior        | adaboost     | pomdp     | movement       | vector          | synaptic      | error          |
| function     | neuron        | analysis      | error         | recurrent    | output          | mixture       | distribution  | theorem      | test         | noise     | policy         | convergence     | voltage       | set            |
| neuron       | information   | orientation   | validation    | learning     | classes         | eeg           | number        | point        | face         | system    | target         | step            | neuron        | prediction     |
| component    | component     | mlp           | experiment    | set          | class           | filter        | network       | network      | task         | signal    | environment    | memory          | stimulus      | mixture        |
| stimulus     | online        | mixture       | component     | position     | pruning         | data          | feature       | boosting     | jaakkola     | vlsi      | agent          | reinforcement   | responses     | step           |
| contrast     | probability   | trial         | system        | hidden       | expert          | noise         | hidden        | proof        | acoustic     | sensor    | trajectory     | space           | synapses      | predictor      |


### K = 20

|   col1           |   col2       |   col3        |   col4        |   col5        |   col6       |   col7         |   col8        |   col9        |   col10       |   col11       |   col12           |   col13          |   col14      |   col15           |   col16        |   col17     |   col18        |   col19        |   col20       |
|:-----------------|:-------------|:--------------|:--------------|:--------------|:-------------|:---------------|:--------------|:--------------|:--------------|:--------------|:------------------|:-----------------|:-------------|:------------------|:---------------|:------------|:---------------|:---------------|:--------------|
| learning         | neuron       | function      | network       | dynamic       | model        | data           | model         | spike         | system        | noise         | representation    | distribution     | cell         | set               | function       | model       | network        | orientation    | channel       |
| action           | neural       | number        | unit          | equation      | activity     | neural         | data          | input         | object        | gaussian      | word              | gaussian         | model        | classifier        | algorithm      | point       | error          | fig            | circuit       |
| control          | network      | algorithm     | data          | function      | pattern      | space          | recognition   | ica           | network       | component     | weight            | linear           | motion       | classification    | method         | method      | problem        | cluster        | signal        |
| robot            | system       | distribution  | task          | field         | control      | mixture        | solution      | response      | model         | model         | set               | error            | direction    | test              | learning       | error       | unit           | output         | input         |
| reinforcement    | parameter    | bound         | states        | connection    | visual       | input          | unit          | character     | information   | signal        | expert            | order            | field        | kernel            | result         | local       | training       | constraint     | current       |
| dynamic          | pattern      | learning      | experiment    | network       | spatial      | prediction     | markov        | information   | features      | density       | input             | matrix           | visual       | training          | input          | image       | set            | computation    | frequency     |
| neural           | result       | problem       | hidden        | present       | sound        | problem        | parameter     | document      | human         | input         | probability       | policy           | location     | nodes             | model          | vector      | performance    | map            | low           |
| path             | problem      | examples      | parameter     | model         | response     | svm            | hmm           | cortical      | recognition   | belief        | data              | optimal          | stimulus     | number            | data           | data        | algorithm      | evidence       | voltage       |
| environment      | analog       | theorem       | test          | correlation   | input        | approximation  | mean          | rate          | approach      | training      | pattern           | term             | system       | learning          | network        | linear      | weight         | feature        | network       |
| stochastic       | simulation   | vector        | output        | attractor     | excitatory   | mean           | information   | experiment    | images        | detection     | entropy           | system           | temporal     | decision          | output         | parameter   | hidden         | images         | output        |

#### Feito o pós-processamento penalizando as palavras que aparecem muito em todos os tópicos

|   col1           |   col2        |   col3         |   col4       |   col5         |   col6        |   col7            |   col8         |   col9       |   col10        |   col11        |   col12            |   col13         |   col14      |   col15           |   col16        |   col17     |   col18        |   col19         |   col20      |
|:-----------------|:--------------|:---------------|:-------------|:---------------|:--------------|:------------------|:---------------|:-------------|:---------------|:---------------|:-------------------|:----------------|:-------------|:------------------|:---------------|:------------|:---------------|:----------------|:-------------|
| learning         | neuron        | bound          | unit         | dynamic        | activity      | data              | model          | spike        | object         | noise          | word               | policy          | cell         | classifier        | function       | point       | error          | orientation     | circuit      |
| action           | neural        | function       | network      | equation       | sound         | mixture           | hmm            | ica          | system         | gaussian       | representation     | distribution    | motion       | set               | algorithm      | model       | unit           | cluster         | channel      |
| robot            | system        | distribution   | states       | connection     | spatial       | svm               | data           | document     | human          | belief         | expert             | gaussian        | direction    | kernel            | method         | method      | problem        | fig             | pomdp        |
| agent            | network       | number         | task         | attractor      | excitatory    | prediction        | recognition    | character    | features       | density        | entropy            | optimal         | model        | classification    | blind          | error       | network        | routing         | voltage      |
| reinforcement    | circuit       | algorithm      | adaboost     | field          | visual        | space             | markov         | response     | reward         | signal         | weight             | error           | visual       | mixtures          | regression     | image       | training       | traffic         | signal       |
| trajectory       | analog        | theorem        | data         | function       | eye           | neural            | solution       | som          | module         | component      | probability        | matrix          | field        | bayes             | learning       | variance    | performance    | preference      | frequency    |
| path             | parameter     | examples       | hidden       | energy         | critic        | approximation     | mdp            | spikes       | information    | detection      | generative         | linear          | motor        | nodes             | nonlinear      | local       | weight         | cortex          | current      |
| control          | simulation    | proof          | www          | neuron         | cue           | neal              | likelihood     | cortical     | network        | variational    | likelihood         | policies        | movement     | test              | probability    | map         | set            | evidence        | chip         |
| singh            | chip          | loss           | validation   | tree           | auditory      | manifold          | unit           | iiii         | recognition    | posterior      | probabilities      | pca             | firing       | search            | data           | covariance  | algorithm      | constraint      | synapse      |
| environment      | winnow        | margin         | http         | cell           | response      | pca               | bayesian       | input        | video          | densities      | rule               | monte           | location     | decision          | product        | vector      | jaakkola       | rotation        | low          |
