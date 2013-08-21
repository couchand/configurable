configurable
============

a single-table inheritance lightweight ORM example on Force.com

 * introduction
 * documentation
 * more information

introduction
------------

This is a demonstration of a lightweight ORM featuring single-table
inheritance built on top of the Force.com platform.  This example
uses the record type of an `sObject` to determine the appropriate
Apex class to dynamically load.  In this way polymorphic Apex behavior
is mapped directly onto standard Force.com record type configuration.

documentation
------------

The data model for the example is simple; there is one object with
a few record types.

    Animal
      Record Types:
      - Cat
      - Dog
      - Cow
      - Pig
      - Chicken

A class diagram is somewhat more involved.

    Configurable
    ^
    |
    --- Animal
      A
      |
      |- Cat
      |- Dog
      |- Cow
      |- Pig
      -- Chicken

As you can see there is a subclass of `Animal` in Apex for each record
type on the sObject `Animal`.

Here the abstract base class `Animal` implements the `Configurable`
interface.  Use the `ConfigurableFactory` to load configurables.

Now, to load a particular `Animal` by `Id`:

    Cat igor = (Cat)ConfigurableFactory.build([
        SELECT Id, RecordType.DeveloperName FROM Animal WHERE Id = :searchId
    ]);

Or, if this suits you,

    Animal igor = AnimalFactory.build([
        SELECT Id, RecordType.DeveloperName FROM Animal WHERE Id = :searchId
    ]);

All the magic happens in `ConfigurableFactory` so that's where you
should look first.

### best practices

There are two levels on which you can extend this: adding more
subtypes to an existing type or adding a whole new type.

To add a *new _subtype_* to an existing type, you must:

 * create the Apex class for the subtype, extending the base type class
 * create a new record type on the corresponding sObject

It is probably a good idea to:

 * add subtype-specific functionality at the subtype level
 * keep type-general functionality at the type level
 * create a new page layout for the subtype record type

To create a *completely new _type_*, it's a little more involved.  Here's
the general idea:

 * create a new sObject for the type
 * create an abstract class for the type implementing `Configurable`
 * create a factory class for the type to automatically downcast
 * create the initial subtype implementations as described above

In all cases, the general rule seems to be that the type's sObject name
should be the same as the name of the abstract base class, and the
record type developer names should be the same as the concrete
implementation names.

more information
----------------

An engineer, a mathematician and a physicist were traveling together
and checked in to a hotel.  In the middle of the night, the physicist,
awoken by the smell of smoke, went into the hallway to find a fire.
Calculating wind resistance, ambient temperature and the fluid
dynamics he extinguished the fire with the least liquid needed.

A little while later, the engineer woke up and also discovered the
fire.  Noticing the hotel's fire extinguisher, she put out the fire
and returned to bed.

The punch line has been left as an exercise for the reader.
