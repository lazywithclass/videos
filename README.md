## Videos I find interesting, plus bonus scripts!

Topics differ a lot, whatever captures my attention ends up here. Notes are written by me (click the ▶ to see them),
usually they sum up video contents, have a look to get a eagle eye view.

 * [Algorithms and data structures](#algorithms-and-data-structures)
 * [DIY](#diy)
 * [Functional programming](#functional-programming)
 * [Gaming](#gaming)
 * [Idris](#idris)
 * [miniKanren](#minikanren)
 * [Politics](#politics)
 * [Science](#science)
 * [Spacemacs](#spacemacs)
 * [Sports](#sports)
 * [TDD](#tdd)
 * [The craft](#the-craft)
 * [Types](#types)
 * [TypeScript](#typescript)

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
<a href="https://www.youtube.com/watch?v=jFBmYS0tME4">Making a 5 Shots Assassin's Creed Style Wrist Crossbow | Shooting (21:17)</a>
</summary>

I found the time lapse relaxing and full of little "ah-ha! that's how that's done!" moments.
</details>

### Functional programming
<details>
<summary>
<a href="https://www.youtube.com/watch?v=e-5obm1G_FY">Anjana Vakil: Learning Functional Programming with JavaScript - JSUnconf 2016 (29:56)</a>
</summary>

Anjana went to the [Recurse Center](https://www.recurse.com/) as me, this was already interesting enough to give her talk a go.
It's an introductory talk if you're approaching functional programming and want to know what it is about, with some examples
expecially on [map / reduce](https://youtu.be/e-5obm1G_FY?t=678) which instantly give you an idea.
Tough croud though, didn't really reacted in any way.
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=Wo0qiGPSV-s">Anjana Vakil - Immutable data structures for functional JS _ JSConf EU 2017 (26:32)</a>
</summary>

Because I've watched the previous one, and because she has the funny approach that reminds me so much of other
fellow Recurse Center alumni.
In half an hour or so she explains the theory behind immutable data structures.
Doesn't explain why though.
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=1qBHf8DrWR8">Keynote - Why Functional Programming Matters - John Hughes, Mary Sheeran (Lambda Days 2017) (1:03:01)</a>
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

Hire juniors. They inspire seniors to work better, they get trained and they can learn more than seniors usually do.
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
<a href="https://www.youtube.com/watch?v=E8I19uA-wGY">Functional programming design patterns by Scott Wlaschin (1:05:43)</a>
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
<a href="https://www.youtube.com/watch?v=9g5eWJ16Oeo">Clojure Remote - The Elements of a Functional Mindset (Eric Normand) (43:51)</a>
</summary>
"The purpose of abstraction is not to be vague, but to create a new semantic level in which one can be absolutely precise."

-- Edsger Dijkstra

You don't want to have side effects buried in the code, pull them out separating them calling the side effect function elsewhere and pass
the result.

Functions should not depend on internal structure of data, pull out a new function that knows how to access fields in the data structure.

Distinguish what you calculate and how you calculate that something, pull out the structure into one place.
</details>

<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/1-overview-of-functional-programming">LambdaCast 1: Overview Of Functional Programming (1:13:36)</a>
</summary>

The panelists go through the basics of functional programming explaining how they apply to real problems using
building blocks offered the paradigm:

 * immutability
 * higher order functions
 * purity
 * functions as first class citizens
 * etc

I liked the general idea of having more experienced people on the podcast, along with people that just started looking
into functional programming, that helps a lot in cover those things that might be take as granted when they shouldn't.
</details>
<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/2-overview-of-functional-programming-part-2">LambdaCast 2: Overview of Functional Programming part 2 (1:40:40)</a>
</summary>

In the first 30 minutes or so the panelists finish the topics of the previous episode.

A big part of the episode is about the ["Simple made easy"](https://www.youtube.com/watch?v=rI8tNMsozo0) talk from Rich Hickey,
and how that relates to functional programming, for examples not having to think about side effects, not dealing with changing parameters,
and so on. Pure functions, immutability, no side effects.

Distinction between side effects and effects.

Variables are such in a math sense.
</details>
<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/3-why-fp">LambdaCast 3: Why FP? (1:31:14)</a>
</summary>

`null` presence considered a smell.

All functions are a single expression in Haskell and PureScript, so whatever you have in the body that's returned from the function,
and that's completely different from you have in other languages.

Typesystems as a benefit and a friend rather than something you have to please to have your code work.

Good function: isolated, doing one thing, testable. Impure functions should have a small as possible surface area.
</details>
<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/4-higher-order-functions">LambdaCast 4: Higher-Order Functions (48:39)</a>
</summary>

I don't have much to say here, all previous 3 episodes covered concepts I'm kind of familiar with...
I didn't manage to extract much information.
</details>
<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/episode-5-immutability">LambdaCast 5: Immutability (59:38)</a>
</summary>

Referential transparency and explanation.

Immutability as a solution to multi threaded problems (locking, shared resources, ...), `ref` in Clojure seems a good
approach to this problem.

[Shallow copies and deep copies](https://stackoverflow.com/questions/184710/what-is-the-difference-between-a-deep-copy-and-a-shallow-copy).

In immutable lists if you add elements to the head then you can keep on doing so without impacting
anyone else that have a reference to the previous elements of the list. This passage is at [37:20](https://soundcloud.com/lambda-cast/episode-5-immutability#t=37:20).

So instead of "what does it mean to update and delete" we have "what does it mean to create a new state", we go from one
state to the other.
</details>
<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/6-null-and-friends">LambdaCast 6: Null And Friends (49:19)</a>
</summary>

Introduction of `Maybe`, along with `Either`, to solve the `null` problem. The latter could also help to replace exceptions or
chain stuff with lots of `andThen`s. It basically lifts types to a higher state in which they could be used without worrying
about them producing a `null`, because that's being taken care of.
</details>

<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/7-recursion">LambdaCast 7: Recursion (43:45)</a>
</summary>

In a recursive approach you just pass new objects each time, as opposed to what happens with the mutation that happens
in a `for` loop for example.
One downside could be that if you're not careful you could blow up the stack pretty easily.
</details>

<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/8-morphisms">LambdaCast 8: Morphisms (43:09)</a>
</summary>

Cathegory theory is the explanation of why and how math works. "Math of math".
A morhpism is a function that takes a type and gives back a type, all pure functions are morphisms

 * endomorphism is a function that takes a type `A` and returns a type `A`
 * isomorphism is a morphism that could be reversed, if you have `A` to `B` you could go back from `B` to `A`; it's more than
 just types, it's about the function inner structure, as some information could be loss when going in a direction. An example
 could going from a `Float` to an `Int`: you can't go back as you've lost some information
 * homomorphism does not change the struction of your thing
 * catamorphism goes from an algebra to another algebra, where an algebra is the set of operations you can do with your thing,
 an example is moving from logs to reports
</details>

<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/9-polymorphism-and-abstraction">LambdaCast 9: Polymorphism And Abstraction (1:23:51)</a>
</summary>

Introducing [type parameters](https://www.reddit.com/r/haskellquestions/comments/60dlsv/type_parameters_in_haskell/).

Introducing the concept of [lenses](https://docs.racket-lang.org/lens/index.html).

"The more we know about the type, the less we know about the function; the less we know about the type, the more we know
about the function".

Let's say we have a `List Int -> Int`, what we can say about the function? Well, almost nothing, it can do a lot of things.
This is what I think they meant with the previous sentence. They go through a few different function signatures asking
"what can we tell about this function just by looking at the signature?", it's a powerful discussion that underlines
the importance of having parameters as types.

It's important to know that we know that when they say `f` of `a` `f` is not a function, it's a type; it's not `f(a)`.

If we were to throw immutability and purity away we couldn't think about functions the same way just by looking at the types,
just because we won't have the same constraints.

Parametric polymorphism and polymorphism in object oriented are two separate concepts.

Introduced the concept of functor, which they explained as something that you could `map` over. `f` is mappable is the same
as `f` is a functor.

Reusability of functions and polymoprhic types enable functions reuse, because the type is less specific.

"The purpose of abstraction is not to be vague, but to create a new semantic level in which one can be absolutely precise."

-- Edsger Dijkstra
</details>

<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/10-partial-application">LambdaCast 10: Partial Application (1:09:51)</a>
</summary>

A function must be curried to be partially applied. In terms of parameter ordering you have what could configure the function
coming first, then in the last position you want the thing you will act upon, for example you could configure a function to
save an array to the database, the first parameter could be the connection, the second the query, and probably the last
will be the array.

In languages like Haskell you see a function declared as `add :: Integer -> Integer -> Integer`, one might read it as
"`add` is a function that takes two integers and return an integer", but what that actually means is "`add` is a function that
takes an integer that returns a function that takes an integer that returns an integer".

One could imagine a partially applied function as a screwdriver with a detachable head, so you have a function (the
 headless screwdriver) and then you have different heads you could attach to it (parameters) so it's configured for a specific
 task.

They then explain the difference between code that's dense and code that's complicated. Usually in FP you're doing multiple
things on one line, that's more dense for sure, but maybe not more complicated.
</details>

<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/12-monoids">LambdaCast 12: Monoids (1:05:33)</a>
</summary>

A semi-group is a data type that has an operation that takes two elements of that type and merge them together to give back an
element of that type. That operation is called append.
This operation obeys the law of associativity, so `a` combined with `b` and then combined with `c` is the same as `a` combined
with `c` and then combined with `b`.
Associativity is of particular help if you need to deal with a huge list for example, because you could use divide et impera.

Integers under addition are a semigroup, integers under multiplication are a semigroup.

A monoid is a semigroup with an identity value for that data type. So for addition it's `0`, for multiplication is `1`. For arrays
it could be `[]`.

By knowing this terminology problems could be lifted in a new space where everyone speaking could bring problems from their area of
expertise into the discussion.

A function that takes an `Integer` and returns an `Integer` is also a monoid, it's composable.

In the monoid of functions that go from `a` to `a` the identity function is the identity value. It doesn't change the thing you're
composing with.
</details>

<details>
<summary>
<a href="https://soundcloud.com/lambda-cast/14-dynamic-and-static-languages">LambdaCast 14: Dynamic and Static Languages (1:17:02)</a>
</summary>
In statically typed languages the type lives on the variable, in dinamically typed languages the type lives on the value.

Benefits of dynamic languages: a team of developers from Naught Dog used hot reloading to speed up development time, writing
a game on the PS. So the emphasis is on shorter development cycles.

The faster iteration could be seen as checking things in the REPL, really fast, with immediate feedback. 

People tend to have [fewer data structures with lots of functions acting upon them](https://stackoverflow.com/questions/6016271/why-is-it-better-to-have-100-functions-operate-on-one-data-structure-than-10-fun#6160116).

Benefit of static languages: a strong type system allows you to think about the type that you're wrtiing and building up
with those, helps you add more and more functionality with the guarantee that the application still works as you progress.

You write types, lots of them, and the implementation is trivial in the end, because the amount of detail that has been added
is so great that actually the compiler can even write portions of the implementation for you (Idris does this).

About abstractions: for a function that `A -> A`, the only thing you can say it's that is the identity function because you 
don't know how to construct an `A` and without side effects and global state there's no place you could pull that knowledge
from. So types helps you by restricting the amount of things a function can do.

The compiler is there to help, it's not anymore something that you have to keep happy, you want to leverage the help the 
compiler gives you.

As a final thought one might say that the time spent in the REPL in dynamic languages is somewhat "lost"; on the contrary time
spent building types remains in the code.
</details>


### Idris
<details>
<summary>
<a href="https://www.youtube.com/watch?v=zSsCLnLS1hg">Dependent Types in the Idris Programming Language 1 - Edwin Brady - OPLSS 2017 (1:17:25)</a>
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

### Gaming
<details>
<summary>
<a href="https://www.youtube.com/watch?v=_FQJEzJ_cQw">How is this speedrun possible? Super Mario Bros. World Record Explained (27:00)</a>
</summary>
Behind a world record speedrun there's more than just smashing on a controller, there's careful planning and knowledge
about how the game works almost at the code level. For example the current WR holder uses how the
 game stores the destination of where the pipes send Mario to its advantage [saving time](https://youtu.be/_FQJEzJ_cQw?t=342).
 
The explanation of [this part](https://youtu.be/_FQJEzJ_cQw?t=649) is incredible, tells you exactly how precise you have to be
not to lose a precious *frames*, and why. As I've understood it Mario the game has some optimisations that you exploit to 
move faster in time, looks to me that you can actually shrink space by jumping on the correct pixels.

[It's all about pixels](https://youtu.be/_FQJEzJ_cQw?t=1318) and when you're towards the end of a run, a pixel in difference
can ruin your whole run.
</details>


### miniKanren
<details>
<summary>
<a href="https://www.youtube.com/watch?v=a5p8DPbaokE">miniKanren Intro Series #1 (2:06:25)</a>
</summary>
I think it's safe to say that if you know a Lisp you could skip this first video.

miniKanren was originally written as an extension of Scheme, and allows for logic programming.

There's also [microKanren](https://github.com/jasonhemann/microKanren/blob/master/microKanren.scm) which is
a simplified version, 51 lines of Scheme!

The point is to have a very small language, built around 3 or 4 operations, much like Chess or Go, and from
there build new things and think about the system.

William then names the most used Lisp dialects, talks about the benefits of macros, and briefly explains the
history of Scheme and Racket.

What follows is an explanation of the basics that could be found in a Lisp dialect, and later in Scheme.

Meta circular interpreter, implementing Scheme in Scheme, is what we will do later on in this series.

`list?` is pronounced as "list-uh?".

One thing he pointed out is that you could have something like

```scheme
(cond
  [(= 1 0) 'a]
  [(= 0 0) 'b])
```

to highlight the clauses.
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=s8d8uhU-_SY">miniKanren Intro Series #2 (02:27:09)</a>
</summary>

If you went through [The Little Schemer](https://www.amazon.com/Little-Schemer-Daniel-P-Friedman/dp/0262560992) you're going to remember
some of the examples he makes.

Building up recursive functions following test cases is a helpful technique to help
yourself when your're stuck not really knowing how you're going to build up the
result, for example in `member` you could use

```scheme
(member 'x '()) ;; #f
(member 'x '(a x f x g)) ;; #t
(member 'foo '(a foo g)) ;; #t
```

and then build from there the base case (first line), the case in which you've found a thing you were looking
for (second line), and the recursive step or else (third line).
As William said earlier you could even pretend you have your function (whishful thinking) and then use
it to fill the gaps, only to go back later to actually code it, in the videos he names such functions as
`dans-member` if, for example, he was midway coding `member`; it's called `dans-` as in Dan's referring to
[Daniel Friedman](https://en.wikipedia.org/wiki/Daniel_P._Friedman).

He then talks about `map` and `filter`.

The discussion then changes to quotation, so:
 * quote `'`
 * quasiquote ``\`
 * unquote `,`
 * unquote-splicing `,@`

Another interesting point he makes is that

```scheme
(let ((x 7))
x)
```

is the same as

```scheme
((lambda (x) x)
  7)
```

Macros and `define-syntax` are next.

Small introduction to lambda calculus closes the video.
</details>

### Politics
<details>
<summary>
<a href="https://www.youtube.com/watch?v=AOz1-5do49o">Noam Chomsky on Democracy Now! April 4, 2017 (FULL Interview) (1:11:42)</a>
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
<a href="http://kingencyclopedia.stanford.edu/encyclopedia/documentsentry/doc_beyond_vietnam/">Martin Luther King – Beyond Vietnam: A Time to Break Silence (56:37)</a>
</summary>

The audio player found at the above link seems to work only on Chrome.

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
<a href="https://www.youtube.com/watch?v=yMRYZMv0jRE">Inside Black Holes | Leonard Susskind (1:10:32)</a>
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
<a href="https://www.youtube.com/watch?v=IJhgZBn-LHg">How Earth Moves (21:37)</a>
</summary>

Micheal (VSauce) explains the difference between a sidereal day and a solar day; this video is packed of information but a few
interesting things are clear without turning to Wikipedia, for example that the Earth follows an elliptical orbit around the Sun.
A clear explanation of seasons and leap day could be found in the video, but it's really the introduction of the Gregorian calendar
that seemed really interesting.
Phenomenal closing though about "THE ride of your life".
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=UjtOGPJ0URM">Why Alien Life Would be our Doom - The Great Filter (9:35)</a>
</summary>

Where they explain why it would be bad for us to discover ruins of a civilization on Mars.

They also offer a few answers on the [Fermi paradox](https://en.wikipedia.org/wiki/Fermi_paradox).
</details>


### Spacemacs
<details>
<summary>
<a href="https://www.youtube.com/watch?v=OjbkCEkboA8">C_C++ in Spacemacs (40:22)</a>
</summary>

I watched this video because I want to understand what the start of the art is when coding C++ in Spacemacs.

The tip to use C-u to speed up compile time looks great.

Indentation wise he speaks about cstyles, `C-c ,` asks for a style. He goes a lot talking about indentation, since
the team I'm in has its own, or I'm not sure which major one they adhere to, I just moved fast through this section.

For autocompletion there's clang, the de facto standard, which could easily be enabled in Spacemacs.

He skipped debugging and ctags, which I would've loved to hear about though.

NOTES FOR SELF:
 * command to compile
 * with c-u you can have more processes to compile, maybe use that to speed up compile time?
 * autocompletion is not working in your conf, check it
</details>

### Sports

<details>
<summary>
<a href="https://www.youtube.com/watch?v=IDbmG5KFnqc">Guillaume Néry: The exhilarating peace of freediving (19:14)</a>
</summary>

A poetic view of what both body and mind experience during a freedive towards 123 meters below the surface.
Give a few insights on how a freediver prepares for the descent and what they experience during it.

[Also.](https://www.youtube.com/watch?v=yzh0woiH7Jw)
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=odIXWv1m2a8">Tanya Streeter | TEDxAustin 2012 (16:58)</a>
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
<a href="https://www.youtube.com/watch?v=eXBZUee4EpY">How to Hold Your Breath Longer: a freediving tutorial from a professional freediver (10:20)</a>
</summary>
Tips on how to hold your breath and getting good at it, introduces training tables (CO2 tables or O2 tables).
Also explains how to get started towards the end of the video.
</details>

### TDD
<details>
<summary>
<a href="https://www.youtube.com/watch?v=AoIfc5NwRks">The Three Laws of TDD (1:06:08)</a>
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
<a href="https://www.youtube.com/watch?v=ecIWPzGEbFc">'Uncle' Bob Martin - 'The Future of Programming' (1:18:20)</a>
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
<a href="https://www.youtube.com/watch?v=1PhArSujR_A">John Carmack's keynote at Quakecon 2013 part 4 (29:59)</a>
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
<a href="https://www.youtube.com/watch?v=rI8tNMsozo0">Rails Conf 2012 Keynote: Simplicity Matters by Rich Hickey (36:52)</a>
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

<details>
<summary>
<a href="https://www.youtube.com/watch?v=2UJ5t2116lI">Mark Allen - The Sharp Edges of Leaky Abstraction (37:26)</a>
</summary>

[The Law of Leaky Abstractions](https://www.joelonsoftware.com/2002/11/11/the-law-of-leaky-abstractions/) by Joel Spolsky
mentioned in the video.

When is an abstraction leaking? What does it mean?

> Exposing internals.

> An example: a specification which is short and understandable but doesn't completely describe the behaviour of
> the software, and then you have a more complex one which "in this particular case it doesn't work like that", you have to
> do extra things to fix it up.
> When you have these two, and you want the simplest one but the second one is the one that's implemented that's the leak.

[Here's the moment in the video where this is explained](https://youtu.be/2UJ5t2116lI?t=615).

What things cause us to create leaky abstractions?
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=SdUewLCHWvU">GOTO 2017 • A Crystal Ball to Prioritize Technical Debt • Adam Tornhill (50:09)</a>
</summary>
 
Basically this talk gives you the tools necessary to answer the "Should I address technical debt? If so, where?".

Adam proposes a way to decide when and where to tackle technical debt. He talks about how git, thanks to its informations about
code changes over time, can point the developer to where an action is mostly needed.

[Here](https://www.youtube.com/watch?v=SdUewLCHWvU&feature=youtu.be&t=612) he shows an interesting pattern shared by three
radically different codebases.

He then speaks about [normalization of deviance](https://en.wikipedia.org/wiki/Normalization_%28sociology%29), or how people come
to accept what they experience in their every day lives.
</details>

### Types

<details>
<summary>
<a href="https://www.youtube.com/watch?v=yVuEPwNuCHw">Types, and why you should care (1:04:05)</a>
</summary>
 Speaker is [Yaron Minsky](https://github.com/yminsky), the one who brought OCaml into Jane Street.
 
 * values - data that flows around in your program
 * variables - a name that points to a value
 * expressions - a collection of syntax that has some meaning
 * types - cathegorisation system for values, grouping related values together
 
In untyped languages values have types, while in typed language values variables expressions have types.

```JS
var x = 5; // value has a type in JavaScript 
```

```Java
int x = 5; // variable and value have a type in Java
```

Statically typed languages, the code that you wrote (the text) has a meaning associated.

Types help communicating intentions and in detecting errors.

There's also [a discussion on HN](https://news.ycombinator.com/item?id=16622684) about this.
</details>

<details>
<summary>
<a href="https://www.youtube.com/watch?v=AJ-yQEfvdVc">Notes on Type Theory for beginners (48:26)</a>
</summary>
"What is a type system?"
 
In all la guages we have 
 * Data
 * Operations
Not all available operations make sense to all kinds of data. "If you use incompatible pieces of data for your operations 
you will get a representation error".

"Programming languages use a type system to look at a program and determine if a representation error will happen or not".

What strategies could we use to handle those representation errors?

Well you could:

 * perform a type check before running the code - Java - Strong
 * have unpredictable error set and implicit conversions - JavaScript - Weak
 * tag code and try to infer if the behaviour will be correct or not - Static
 * generate code to keep track of the data - Python - Dynamic


</details>

### TypeScript

<details>
<summary>
<a href="https://www.youtube.com/watch?v=0ChtcZmb3dI">What's New In TypeScript (1:00:36)</a>
</summary>
`.d.ts` files are called declaration files.
 
 TypeScript targets EcmaScript 5. So for example arrow functions are compiled into regular functions. But it's a
 configuration setting that could be changed int tsconfig.json.
 
 Exhaustiveness checking is introduced later on after some examples where he discusses a possible functional
 approach to the usual `Shape`, `Rectangle`, `Circle`, `Square` OOP scenario.
 
 Documentation pops automatically up when including a library and having its declaration files with type definitions.
</details>
