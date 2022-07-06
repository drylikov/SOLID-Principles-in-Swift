# Research

## SOLID

### Notes

#### S - Single Responsibility Principle

* "A class should have only one reason to change" - Robert C. Martin (WK)

* [E]very module or class should have responsibility over a single part of the functionality provided by the software, and that responsibility should be entirely encapsulated by the class. All its services should be narrowly aligned with that responsibility. (WK)

* The responsibility is defined as a charge assigned to a unique actor to signify its accountabilities concerning a unique business task. (WK)

##### Definitions

* responsibility: a charge assigned to a unique actor to signify its accountabilities concerning a unique business task (WK)

##### Examples

* As an example, consider a module that compiles and prints a report. Imagine such a module can be changed for two reasons. First, the content of the report could change. Second, the format of the report could change. These two things change for very different causes; one substantive, and one cosmetic. The single responsibility principle says that these two aspects of the problem are really two separate responsibilities, and should therefore be in separate classes or modules. It would be a bad design to couple two things that change for different reasons at different times.

#### O - Open/closed Principle


#### L - Liskov Substitution Principle

##### Examples

* A typical example that violates LSP is a Square class that derives from a Rectangle class, assuming getter and setter methods exist for both width and height. The Square class always assumes that the width is equal with the height. If a Square object is used in a context where a Rectangle is expected, unexpected behavior may occur because the dimensions of a Square cannot (or rather should not) be modified independently. This problem cannot be easily fixed: if we can modify the setter methods in the Square class so that they preserve the Square invariant (i.e., keep the dimensions equal), then these methods will weaken (violate) the postconditions for the Rectangle setters, which state that dimensions can be modified independently. Violations of LSP, like this one, may or may not be a problem in practice, depending on the postconditions or invariants that are actually expected by the code that uses classes violating LSP. Mutability is a key issue here. If Square and Rectangle had only getter methods (i.e., they were immutable objects), then no violation of LSP could occur. (WK)


### Resources

#### Wikipedia (WK https://en.wikipedia.org/wiki/SOLID_(object-oriented_design))

In computer programming, SOLID (Single responsibility, Open-closed, Liskov substitution, Interface segregation and Dependency inversion) is a mnemonic acronym introduced by Michael Feathers for the "first five principles" named by Robert C. Martin[1][2] in the early 2000s[3] that stands for five basic principles of object-oriented programming and design. The principles, when applied together, intend to make it more likely that a programmer will create a system that is easy to maintain and extend over time.[3]

SRP - Single responsibility principle
a class should have only a single responsibility (i.e. only one potential change in the software's specification should be able to affect the specification of the class)

OCP - Open/closed principle
“software entities … should be open for extension, but closed for modification.”

LSP - Liskov substitution principle
“objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program.” See also design by contract.

ISP - Interface segregation principle
“many client-specific interfaces are better than one general-purpose interface.”[8]

DIP [9]	
Dependency inversion principle- one should “Depend upon Abstractions. Do not depend upon concretions.”[8]

##### S - Single Responsibility Principle

* "[E]very module or class should have responsibility over a single part of the functionality provided by the software, and that responsibility should be entirely encapsulated by the class. All its services should be narrowly aligned with that responsibility."

* "A class should have only one reason to change." - Robert C. Martin

* As an example, consider a module that compiles and prints a report. Imagine such a module can be changed for two reasons. First, the content of the report could change. Second, the format of the report could change. These two things change for very different causes; one substantive, and one cosmetic. The single responsibility principle says that these two aspects of the problem are really two separate responsibilities, and should therefore be in separate classes or modules. It would be a bad design to couple two things that change for different reasons at different times.

* The reason it is important to keep a class focused on a single concern is that it makes the class more robust. Continuing with the foregoing example, if there is a change to the report compilation process, there is greater danger that the printing code will break if it is part of the same class.

* The responsibility is defined as a charge assigned to a unique actor to signify its accountabilities concerning a unique business task.[6]

##### O - Open/closed Principle

* "[S]oftware entities (classes, modules, functions, etc.) should be open for extension, but closed for modification";[1] that is, such an entity can allow its behaviour to be extended without modifying its source code.

* 2 Types:
	1. Meyer's (Bertrand Meyer) open/closed principle: "A module will be said to be open if it is still available for extension. For example, it should be possible to add fields to the data structures it contains, or new elements to the set of functions it performs". "A module will be said to be closed if it is available for use by other modules. This assumes that the module has been given a well-defined, stable description (the interface in the sense of information hiding)".[3]; "A class is closed, since it may be compiled, stored in a library, baselined, and used by client classes. But it is also open, since any new class may use it as parent, adding new features. When a descendant class is defined, there is no need to change the original or to disturb its clients.[4]"
	2. Polymorphic open/closed principle: During the 1990s, the open/closed principle became popularly redefined to refer to the use of abstracted interfaces, where the implementations can be changed and multiple implementations could be created and polymorphically substituted for each other. In contrast to Meyer's usage, this definition advocates inheritance from abstract base classes. Interface specifications can be reused through inheritance but implementation need not be. The existing interface is closed to modifications and new implementations must, at a minimum, implement that interface.

##### L - Liskov Substitution Principle

* Substitutability...states that, in a computer program, if S is a subtype of T, then objects of type T may be replaced with objects of type S (i.e., objects of type S may substitute objects of type T) without altering any of the desirable properties of that program (correctness, task performed, etc.). More formally, the Liskov substitution principle (LSP) is a particular definition of a subtyping relation, called (strong) behavioral subtyping...It is a semantic rather than merely syntactic relation because it intends to guarantee semantic interoperability of types in a hierarchy, object types in particular.

* Behavioral subtyping is a stronger notion than typical subtyping of functions...Behavioral subtyping is trivially undecidable in general: if q is the property "method for x always terminates", then it is impossible for a program (e.g., a compiler) to verify that it holds true for some subtype S of T, even if q does hold for T. Nonetheless, the principle is useful in reasoning about the design of class hierarchies.

* Liskov's principle imposes some standard requirements on signatures...: 
	* Contravariance of method arguments in the subtype.

	i.e. "it is type safe to allow an overriding method to accept a more general argument than the method in the base class:"

	 ```class CatShelter extends AnimalShelter {
        void putAnimal(Object animal) {
           ...
        }
    }```

	* Covariance of return types in the subtype.

	i.e. "a derived class can override the getAnimalForAdoption method to return a more specific type:"

	```
	class CatShelter extends AnimalShelter {
        Cat getAnimalForAdoption() {
    	    return new Cat();
        }
    }
	```

	* No new exceptions should be thrown by methods of the subtype, except where those exceptions are themselves subtypes of exceptions thrown by the methods of the supertype.

* In addition to the signature requirements, the subtype must meet a number of behavioral conditions. These are detailed in a terminology resembling that of design by contract methodology, leading to some restrictions on how contracts can interact with inheritance:

	* Preconditions cannot be strengthened in a subtype.
	* Postconditions cannot be weakened in a subtype.
	* Invariants of the supertype must be preserved in a subtype.
	* History constraint (the "history rule"). Objects are regarded as being modifiable only through their methods (encapsulation). Since subtypes may introduce methods that are not present in the supertype, the introd...A violation of this constraint can be exemplified by defining a mutable point as a subtype of an immutable point. This is a violation of the history constraint, because in the history of the immutable point, the state is always the same after creation, so it cannot include the history of a mutable point in general. Fields added to the subtype may however be safely modified because they are not observable through the supertype methods. Thus, one can derive a circle with fixed center but mutable radius from immutable point without violating LSP.

* A typical example that violates LSP is a Square class that derives from a Rectangle class, assuming getter and setter methods exist for both width and height. The Square class always assumes that the width is equal with the height. If a Square object is used in a context where a Rectangle is expected, unexpected behavior may occur because the dimensions of a Square cannot (or rather should not) be modified independently. This problem cannot be easily fixed: if we can modify the setter methods in the Square class so that they preserve the Square invariant (i.e., keep the dimensions equal), then these methods will weaken (violate) the postconditions for the Rectangle setters, which state that dimensions can be modified independently. Violations of LSP, like this one, may or may not be a problem in practice, depending on the postconditions or invariants that are actually expected by the code that uses classes violating LSP. Mutability is a key issue here. If Square and Rectangle had only getter methods (i.e., they were immutable objects), then no violation of LSP could occur.

##### I - Interface Segregation Principle

* The interface-segregation principle (ISP) states that no client should be forced to depend on methods it does not use.[1] 

* ISP splits interfaces which are very large into smaller and more specific ones so that clients will only have to know about the methods that are of interest to them. Such shrunken interfaces are also called role interfaces.[2] 

* ISP is intended to keep a system decoupled and thus easier to refactor, change, and redeploy.

* [T]]he ATM Transaction example given in Agile Software Development: Principles, Patterns, and Practices [1] and in an article also written by Robert C. Martin specifically about the ISP.[5] This example is about an interface for the User Interface for an ATM, that handles all requests such as a deposit request, or a withdrawal request, and how this interface needs to be segregated into individual and more specific interfaces.

##### D - Dependency Inversion Principle

* ...[T]he dependency inversion principle refers to a specific form of decoupling software modules. When following this principle, the conventional dependency relationships established from high-level, policy-setting modules to low-level, dependency modules are reversed, thus rendering high-level modules independent of the low-level module implementation details.

* The principle inverts the way some people may think about object-oriented design, dictating that both high- and low-level objects must depend on the same abstraction.[2]

*  The principle states:
	A. High-level modules should not depend on low-level modules. Both should depend on abstractions.
	B. Abstractions should not depend on details. Details should depend on abstractions.

* In conventional application architecture, lower-level components are designed to be consumed by higher-level components which enable increasingly complex systems to be built. In this composition, higher-level components depend directly upon lower-level components to achieve some task. This dependency upon lower-level components limits the reuse opportunities of the higher-level components.[3]

POLICY LAYER    >>    MECHANISM LAYER    >>    UTILITY LAYER

With the addition of an abstract layer, both high- and lower-level layers avoid the traditional dependencies from top to bottom. Nevertheless the ″inversion″ concept does not mean that lower-level layers depend on higher-level layers. Both layers should depend on abstractions that draw the behavior needed by higher-level layers.

POLICY LAYER    >>    <Policy Service Interface>
                                 ^
                                 ^
                         MECHANISM LAYER    >>    <Mechanism Service Interface>
                                                                 ^
                                                                 ^
                                                           UTILITY LAYER
