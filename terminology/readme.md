
Some defined terms are listed in the [matlab offline neural analysis terminology document](https://github.com/NeuralStorm/MATLAB-offline-neural-analysis/blob/matt_docs/docs/terminology.md). These terms are not duplicated here.

---
## parameter
replaces: key, argument

used to refer to the names given to input values, used for command line arguments, json keys and function parameters when they are used as the input to the program

decision context: grf_python

rational:  
It really does not matter when someone in the past referred to parameters as keys. If someone had asked me, I would have said - do not do that. So please, replace any references to parameters that is called something else (e.g. keys but apparently there are a lot of different phases used) with 'parameters'. (Karen)

---
## assign
replaces: mapping

an abstract data type that stores a collection of (key, value) pairs, such that each possible key appears at most once in the collection.

when keys are of the category A and values of the category B it is described as "assigning B" and B is implied or "assigning B to A"

decision context: grf_python

rational:  
The word 'mapping' is inappropriate - please use the word 'assign'. It would be correct to say 'The program reads the data and assigns the column labels from the labels file.' (Karen)

---
## the format of the input file the program expects
replaces: column mapping

the description of the relationship between the column names of an input file and names understood by the program

decision context: grf_python

rational:  
Oh dear, what silliness. There is really no needs for new jargon to define the format of the input file that the program expects? Again, sounds like creating more jargon that just obscures clarity. Simple state, 'this is the format of the input file the program expects' This would be understandable to anyone. (Karen)

---
## wild card search
replaces: pattern

used to describe glob patterns, unclear if it applies to other pattern syntaxes such as regex

decision context: grf_python

rational:  
Not so common, obviously. It is jargon and does not belong in the manual. Please use 'wild card search' rather than 'patterns'. wild card search is common. (Karen)

---
---
---
# PROPOSED TERMINOLOGY

---
## time series format

Refers to the data after "parsing" but before slicing/windowing.

decision context: python offline neural analysis

rational:  
proposed by karen at codebase meeting

potential issues:  
it may be confusing that most of the data being worked with is time series data and "time series format" may be assumed to refer to other time series data such as the "multineuron time series" format

---

## multi time channel series (mtcs)

Similar to the mnts format but the channel and bins/time dimensions are swapped.

Dimensions: `(Trials * Chans) x Bins`

rational:  
The format is the same as the mnts format but with two dimensions swapped. Those dimensions are swapped in the name as well to mirror this change lexically. Neuron is changed to channel to make the acronym, mtcs, more visually distinct from mnts and avoid confusion in the case that mnts is mistyped as mtns (Matthew does this fairly frequently by his estimates)

---
