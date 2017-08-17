## Utilities to use youtube-dl and the videos I watch

 * [The craft](#the-craft)
 * [Functional programming](#functional-programming)
 * [Algorithms and data structures](#algorithms-and-data-structures)
 * [Science](#science')
 * [TDD](#tdd)


### The craft

#### [https://www.youtube.com/watch?v=ecIWPzGEbFc]('Uncle' Bob Martin - 'The Future of Programming')

"Why is it that we programmers are never happy with our language?"
"Why is it that our industry is so incredibly male dominated?"

Number of developers doubles every 5 years, and there are not enough experienced people
to teach the new generations, this is because a great portion of the total is composed by young developers.
So it looks like we are doomed to repeat our errors over and over.

Bob Martin lived 22 orders of magnitude of growth in the hardware.
Software hasn't changed that much: you would recognise the code that Alan Turing wrote in the ACE machine,
you wouldn't like it, but you would recognise it.
You could bring a PDP8 programmer into the present and put them in front of Intellij to code Java.
Our advancement since 1945 is almost entirely about what not to do than what to do:

 * structured programming: don't use unrestrained GOTO
 * functional programming: don't use assignment
 * object programming: don't use pointers to functions
 
The last 15-20 minutes are particularly interesting, where Bob Martin explains how "we kill people" 
and how "we rule the world", and what we could do to limit problems.

#### [https://www.youtube.com/watch?v=1PhArSujR_A](John Carmack's keynote at Quakecon 2013 part 4)

John Carmack talks about a few concepts, particularly interesting for me were

 * functional programming - functional style allows for self contained code, because it's all about passing something
 in and getting something out, the advanteges of writing code in pure form are a big win especially in the long term
 * Haskell - brutal purity of Haskell [...] multi paradigm as if its a good thing, but it means you could always
do the bad thing if you feel you really need to, and programmers are extremely bad at doing sort of the time 
scale integration of the cost of doing something that they know is negative [...] how many times this little bad thing is going
to affect them
 * Lisp
 * Scheme
 * strong and weak typing - everything that's syntactically legal, and the compiler will accept, will eventually 
 wind up in your code base and that's why static typing is so valuable because it cuts down on what can make it past 
 

### [Funtional programming]

#### [https://www.youtube.com/watch?v=e-5obm1G_FY](Anjana Vakil: Learning Functional Programming with JavaScript - JSUnconf 2016)

Anjana went to the [Recurse Center](https://www.recurse.com/) as me, this was already interesting enough to give her talk a go. 
It's an introductory talk if you're approaching functional programming and want to know what it is about, with some examples 
expecially on [map / reduce](https://youtu.be/e-5obm1G_FY?t=678) which instantly give you an idea.
Tough croud though, didn't really reacted in any way.

#### [https://www.youtube.com/watch?v=Wo0qiGPSV-s](Anjana Vakil - Immutable data structures for functional JS _ JSConf EU 2017)

Because I've watched the previous one, and because she has the funny approach that reminds me so much of other
fellow Recurse Center alumni.
In half an hour or so she explains the theory behind immutable data structures.
Doesn't explain why though, TODO, get a video where they explain why should we use immutable data structures.

#### [https://www.youtube.com/watch?v=1qBHf8DrWR8](Keynote - Why Functional Programming Matters - John Hughes, Mary Sheeran (Lambda Days 2017))

This is one of those talks that give you lots of resources to expand the subject.
They speak about how you should structure your code with functions intended as consumers and producers.
What I've missed is examples, code examples you could start from to apply the concepts expressed in the talk.

You could "summarise" it like so:

 * whole values
 * combining forms
 * simple laws
 * functions as representations
 
If you don't know what that means you're not alone, this is what I meant when I said that this talk gives 
you lots of resources to expand your knowledge.

#### [https://www.youtube.com/watch?v=bmFKEewRRQg](Rob Martin - Teaching functional programming to noobs in mobs (Lambda Days 2016))

Hire uniors. They inspire seniors to work better, they get trained and they can learn more than seniors usually do.
Why learning functional programming? Because simplicity allows to:

 * reason about code
 * test code
 * prove our code
 * trust our code

Functional programming languages usually limit the power of the user, wink wink to Out Of The Tar Pit.
In functional programming our state is exposed, if it's too complex, it's there as a parameter, so it's much easier
to spot.
Do everything you can without side effects, don't mutate variables, don't handle state (your state should be just in 
the tests), compose your functions, then, once you're done introduce side effects. 
So our business logic almost never depends on other libraries, while our side effects logic almost exclusively libraries
so we don't have to run unit tests around them.
He also introduces the concept of mob programming.
I feel there's lots of wisdom pearls in how to manage a team.


### Algorithms and data structures

#### [CSE373 2012 - Introduction to Algorithms](https://www.youtube.com/watch?v=ZFjhkohHdAA&list=PLOtl7M3yp-DV69F32zdK7YJcNXpTunF2b)

This is a course held by prof Skiena, it's a regular university course so it's pretty long, I've liked it as it gave me
some background on the matter, "some" because it's not an area I find particularly interesting, but if you do this might
be worth. Oh, and prepare to hear lots of "oooook"s and "any questions"s.


### Science

#### [Cosmos - A Spacetime Odyssey](https://www.netflix.com/watch/80004601)

From Neil Degrasse Tyson, I love the series. It's not fun-oriented but they keep it interesting at every episode. Also 
Neil's voice is pretty calming. 

#### [Inside Black Holes | Leonard Susskind](https://www.youtube.com/watch?v=yMRYZMv0jRE)

I am not sure why I watched this video, I think the title and the fact that it looked sciency prompted me to.
I didn't get most of it, but it's fascinating listening to someone talking about their craft.
It's particularly fascinating how he describes a black hole as seen by an external viewer, picturing it as 
layers and layers of sediments consisting of things that got attracted and never made it past the even horizon; and also
how it takes a finite amount of time to fall through the horizon for an in flowing observer and an infinite amount of
time as seen by the outside.
There's lots of information near the horizon!
One of the things I probably misunderstood the most is that distant Hawking could be  a description of the interior of a black hole,
which sounds amazing.


### TDD

#### [The Three Laws of TDD](https://www.youtube.com/watch?v=AoIfc5NwRks)

It's an introduction to TDD, with some theory and some examples on how to use it.

 * You are not allowed to write any production code unless it is to make a failing unit test pass

Which means you have to write the test first.

 * You are not allowed to write any any more of a unit test than is sufficient to fail; ad compilation failures are failures
 * You are not allowed to write any any more production code than is sufficient to pass the one failing unit test
 
Unit tests as examples of how your code works.
If you write the tests first it's impossible to write a function that's hard to test, functions are written to be easy to test. 
The goal of TDD is to create a test suite such that when it passes you can deploy.
A reliable test suite that passes allows you to make decisions.

TDD is a way to incrementally derive solutions to problems.
