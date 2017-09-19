## Utilities to use youtube-dl and the videos I watch

You will find notes under the videos (click the ▶), don't expect those to be complete or too accurate, they just
represent with sentences the parts I've found most interesting, you should skim through those and get
a feel if you could be interested too.

 * [Algorithms and data structures](#algorithms-and-data-structures)
 * [DIY](#diy)
 * [Functional programming](#functional-programming)
 * [Idris](#idris)
 * [Politics](#politics)
 * [Science](#science)
 * [Sports](#sports)
 * [TDD](#tdd)
 * [The craft](#the-craft)

### Algorithms and data structures
<details>
<summary>
<a href="https://www.youtube.com/watch?v=ZFjhkohHdAA&list=PLOtl7M3yp-DV69F32zdK7YJcNXpTunF2b">CSE373 2012 - Introduction to Algorithms</a>
</summary>
This is a course held by prof Skiena, it's a regular university course so it's pretty long, I've liked it as it gave me
some background on the matter, "some" because it's not an area I find particularly interesting, but if you do this might
be worth. Oh, and prepare to hear lots of "oooook"s and "any questions"s.
</details>

### DIY
<details>
<summary>
<a href="https://www.youtube.com/watch?v=jFBmYS0tME4">Making a 5 Shots Assassin's Creed Style Wrist Crossbow | Shooting</a>
</summary>

I found the time lapse relaxing and full of little "ah-ha! that's how that's done!" moments.
</details>

### Funtional programming
<details>
<summary>
<a href="https://www.youtube.com/watch?v=e-5obm1G_FY">Anjana Vakil: Learning Functional Programming with JavaScript - JSUnconf 2016</a>
</summary>

Anjana went to the [Recurse Center](https://www.recurse.com/) as me, this was already interesting enough to give her talk a go. 
It's an introductory talk if you're approaching functional programming and want to know what it is about, with some examples 
expecially on [map / reduce](https://youtu.be/e-5obm1G_FY?t=678) which instantly give you an idea.
Tough croud though, didn't really reacted in any way.
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=Wo0qiGPSV-s">Anjana Vakil - Immutable data structures for functional JS _ JSConf EU 2017</a>
</summary>

Because I've watched the previous one, and because she has the funny approach that reminds me so much of other
fellow Recurse Center alumni.
In half an hour or so she explains the theory behind immutable data structures.
Doesn't explain why though.
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=1qBHf8DrWR8">Keynote - Why Functional Programming Matters - John Hughes, Mary Sheeran (Lambda Days 2017)</a>
</summary>

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
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=bmFKEewRRQg">Rob Martin - Teaching functional programming to noobs in mobs (Lambda Days 2016)</a>
</summary>

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
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=E8I19uA-wGY">Functional programming design patterns by Scott Wlaschin</a>
</summary>

Whirlwind tour at high speed of several concepts.

Functions are things, not really attached to classes or objets, take something in and send something out.

Composition everywhere.

Types are not classes, they're just set of inputs and outputs to functions. A name given to a set of values.

Strive for totality: for every input there's a valid output.
For example in a function that divides `12` by the given input you could do this in two ways to avoid division by zero, and the dilemma
of having to throw exception or not:
 
 * restrict the input with a type like `NonZeroInteger` that has all integers except `0`
 * extend the output to be optional (`Maybe` monad)
 
Parameterise all the things.

I *loved* what follows, I really did, he basically started with interfaces, explained how they're a bit bloated and proposed types as substitutes.

Function types are interfaces, if you add the Single Responsibility Principle (only one reason to change) and the Interface Segregation Principle 
(don't contaminate interfaces with too many things) and you take that a bit to the extreme you get interfaces with just one function. But an interface
with a single function is just a funtion type, and any function that has the same signature is compatible with it, and you don't have to inherit anything,
it's automatic synce they share the signature!

Partial application, which is useful for dependency injection too allowing to bake in things like database connections.

Continuations, the Hollywood principle: don't call us we'll call you.
Let the caller decide what's going to happen, passing in functions for example to deal with the division by 0 from above.

How to combine a function that outputs two different types with one that accepts just one?
Bind all the things! (monadic bind)

Map allows you to stay in the world of options, so you could call functions on types that you're not sure what value they represent, think about
the result of an async call that returns a `Maybe`, most generic wrapped generic types have a `map`, use it! Functors are just mappable types.
</details>

<details>
<summary>
<a href="">Clojure Remote - The Elements of a Functional Mindset (Eric Normand)</a>
</summary>
"The purpose of abstraction is not to be vague, but to create a new semantic level in which one can be absolutely precise."

-- Edsger Dijkstra

You don't want to have side effects buried in the code, pull them out separating them calling the side effect function elsewhere and pass 
the result.

Functions should not depend on internal structure of data, pull out a new function that knows how to access fields in the data structure.

Distinguish what you calculate and how you calculate that something, pull out the structure into one place. 
</details>

### Idris

<details>
<summary>
<a href="https://www.youtube.com/watch?v=zSsCLnLS1hg">Dependent Types in the Idris Programming Language 1 - Edwin Brady - OPLSS 2017</a>
</summary>

Edwin introduces the concept of Type Driven Development, which he also explains in 
[Type Driven Development with Idris](https://www.manning.com/books/type-driven-development-with-idris); type define refine as opposed to
red green refactor.

One thing in common with Test Driven Development, it's about deciding what you're going to do before you do it.
Types are a mean by which you tell the machine "this is what we are going to work on together", it's a dialog with the machine.
Types are first class citizens as functions are in functional programming languages.

You define functions by recursively defined equations.

In type driven development you

 * write the type
 * add the definition
 * split case of the hole name

You coudl also search for a possibile implementation with the proper command.

"Just because you have types doesn't mean you can't add more tests, and you should add more tests."
 
Look at type holes for hints on how to proceed.

Build functions one bit at a time leveraging the compiler can help you with the types of your holes.

Lowercase letters in types are always implicitly bound.

As soon as you have something a bit hard to do, make another function to do that harder thing.
</details>

### Politics
<details>
<summary>
<a href="">Noam Chomsky on Democracy Now! April 4, 2017 (FULL Interview)</a>
</summary>

I love how Chomsky talks about what he calls the two tiered system: Bannon-Trump team dominates the headlines, 
so whatever they do that's what people look at, one crazy thing after the other make the headlines, and by the time
the new one arrived the old one is forgotten. And while this goes away things like the EPA slash could be safely
made behind the covers.

They proceed talking about Russia interfering with US elections, the Russian border, and North Korea tensions.

"Why are they developing nuclear weapons? It's a deterrent." North Korea will terminate its further development 
of nuclear weapons, in return the US should stop threatening maneuvers on the border. 
"If the US did decide to use force against North Korea, [...] Seul (confused) be wiped out by mass North Korean artillery". 

Nort Korea was destroyed by the most intensive bombing in history, they flattened the country, leaving no targets left.
Then they attacked the dams, which is a war crime of course. [On the subject](https://en.wikipedia.org/wiki/Attack_on_the_Sui-ho_Dam)

Doomsday clock set at 2min 30sec.

Nuclear weapons and Global Warming both are questions of survival and should be the main focus of attention, every Republican candidate
through the election either denied or said we shouldn't do anything about it.

The Sanders achievement, usually "You can pretty well predict electoral outcomes simply by campaign funding alone", is remarkable 
as it represents what could happen if just policies are presented, which meet the concerns of the population.

Trump is not going to bring back jobs, what happens then? Something has to be made to maintain control, so scape goating could be an option,
then an alledged terrorist attack, or a staged attack of minor kind. "It's very easy to terrify people".

Iran has very low military spending, even compared to the region standard (Saudi Arabia, Israel, ...) they want to deter attacks.
If they are developing nuclear weeapons is for their deterred strategy. 
"Who's concerned about a deterred? Those who want to use force. [...] So yes Iran is the greatest threat to world peace".

Mortality is increasing amongst low and middle class working class middle aged white americans, that's something unknown in developed 
society, it's something called Disease of Despair: there is no feeling of hope in the future or sense of dignity.
</details>

<details>
<summary>
<a href="http://kingencyclopedia.stanford.edu/encyclopedia/documentsentry/doc_beyond_vietnam/">Martin Luther King – Beyond Vietnam: A Time to Break Silence</a>
</summary>

"A time comes when silence is betrayal."

"For we are deeply in need of a new way beyond the darkness that seems so close around us", this is so in line with what's happening these days
(early September 2017) between North Korea and US (again).

"And I knew that America would never invest the necessary funds or energies in rehabilitation of its poor so long as adventures like 
Vietnam continued to draw men and skills and money like some demonic, destructive suction tube. So I was increasingly compelled to see the war 
as an enemy of the poor and to attack it as such." which is the same thing one asks themself when questioning Trump's actions these days, is being
so belligerant going to help Americans? Is being openly hostile towards people near US south border going to be any good in the long term?

"So we have been repeatedly faced with the cruel irony of watching Negro and white boys on TV screens as they kill and die together for a nation that has 
been unable to seat them together in the same schools. So we watch them in brutal solidarity burning the huts of a poor village, but we realize that 
they would hardly live on the same block in Chicago. I could not be silent in the face of such cruel manipulation of the poor."

"Those who make peaceful revolution impossible will make violent revolution inevitable." John F. Kennedy.

"One day we must come to see that the whole Jericho Road must be transformed so that men and women will not be constantly beaten and robbed as 
they make their journey on life’s highway. True compassion is more than flinging a coin to a beggar. It comes to see than an edifice which produces
beggars needs restructuring".
</details>

### Science
<details>
<summary>
<a href="https://www.netflix.com/watch/80004601">Cosmos - A Spacetime Odyssey</a>
</summary>

From Neil Degrasse Tyson, I love the series. It's not fun-oriented but they keep it interesting at every episode. Also 
Neil's voice is pretty calming. 
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=yMRYZMv0jRE">Inside Black Holes | Leonard Susskind</a>
</summary>

I am not sure why I watched this video, I think the title and the fact that it looked sciency prompted me to.
I didn't get most of it, but it's fascinating listening to someone talking about their craft.
It's particularly fascinating how he describes a black hole as seen by an external viewer, picturing it as 
layers and layers of sediments consisting of things that got attracted and never made it past the even horizon; and also
how it takes a finite amount of time to fall through the horizon for an in flowing observer and an infinite amount of
time as seen by the outside.
There's lots of information near the horizon!
One of the things I probably misunderstood the most is that distant Hawking could be a description of the interior of a black hole,
which sounds amazing.
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=IJhgZBn-LHg">How Earth Moves</a>
</summary>

Micheal (VSauce) explains the difference between a sidereal day and a solar day; this video is packed of information but a few
interesting things are clear without turning to Wikipedia, for example that the Earth follows an elliptical orbit around the Sun.
A clear explanation of seasons and leap day could be found in the video, but it's really the introduction of the Gregorian calendar
that seemed really interesting.
Phenomenal closing though about "THE ride of your life".
</details>

### Sports

<details>
<summary>
<a href="https://www.youtube.com/watch?v=IDbmG5KFnqc">Guillaume Néry: The exhilarating peace of freediving</a>
</summary>

A poetic view of what both body and mind experience during a freedive towards 123 meters below the surface.
Give a few insights on how a freediver prepares for the descent and what they experience during it.

[Also.](https://www.youtube.com/watch?v=yzh0woiH7Jw)
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=odIXWv1m2a8">Tanya Streeter | TEDxAustin 2012</a>
</summary>
I was fascinated by the previous one and impressed by the story of [Audrey Mestre](https://en.wikipedia.org/wiki/Audrey_Mestre)
I got to know after that, where Tanya appears briefly, so here I am with another video about the same sport.

She speaks how she beat women, and men, in this discipline.
The dive takes 3:30 minutes to 4:00 minutes.
She speaks about the "packing" technique, and how this led her to black out.
Narcosis still affects freedivers because of the rapid rate of descent and the extreme depths they go to. 

She then speaks about what happened with her daughter being born.

Then moves on talking about plastic and the sea, and about giving back to it. Referencing a film called "Plastic Ocean". 
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=eXBZUee4EpY">How to Hold Your Breath Longer: a freediving tutorial from a professional freediver</a>
</summary>
Tips on how to hold your breath and getting good at it, introduces training tables (CO2 tables or O2 tables).
Also explains how to get started towards the end of the video.
</details>

### TDD
<details>
<summary>
<a href="https://www.youtube.com/watch?v=AoIfc5NwRks">The Three Laws of TDD</a>
</summary>

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
</details>

### The craft
<details>
<summary>
<a href="https://www.youtube.com/watch?v=ecIWPzGEbFc">'Uncle' Bob Martin - 'The Future of Programming'</a>
</summary>

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
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=1PhArSujR_A">John Carmack's keynote at Quakecon 2013 part 4</a>
</summary>

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
</details>
 
<details>
<summary>
<a href="https://www.youtube.com/watch?v=rI8tNMsozo0">Rails Conf 2012 Keynote: Simplicity Matters by Rich Hickey</a>
</summary>

Simple - one fold / braid
Complex - combine together many things / braid them together
Easy - to lie near, at hand

Simple is about interleaving not cardinality: not one thing (ex interfaces with one function) but one role / task / concept / dimension.

Elephant of complexity represents the difficulty in maintaining your code.

Simplicity buys you opportunities, it dominates all other factors. 
Once your project reaches a certain size the complexity elephant dominates all other techniques you might be using, tests, agile, nothing
will help you pushing the elephant away.

Pursuing simplicity is about pursuing opportunity.

Examples of simplicity in context:

 • order should not matter
 • information is simple, don't put stuff around those, hashmaps are fine
 • take approaches from sub systems architecture and use them into code
 
Simplicity is a choice.
Requires vigilance, sensibilities, and care. "Did we entangle anything yesterday？ Did we complect anything yesterday?".
</details>
