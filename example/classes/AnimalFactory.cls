public class AnimalFactory
{
    public static Animal build( sObject configuration )
    {
        return (Animal)ConfigurableFactory.build( configuration );
    }

    public static List<Animal> build( List<sObject> configurations )
    {
        List<Animal> animals = new List<Animal>();

        for ( sObject configuration : configurations )
        {
            animals.add( build( configuration ) );
        }

        return animals;
    }

    public static Cat buildCat( sObject configuration )
    {
        return (Cat)AnimalFactory.build( configuration );
    }

    public static Dog buildDog( sObject configuration )
    {
        return (Dog)AnimalFactory.build( configuration );
    }

    public static Cow buildCow( sObject configuration )
    {
        return (Cow)AnimalFactory.build( configuration );
    }

    public static Pig buildPig( sObject configuration )
    {
        return (Pig)AnimalFactory.build( configuration );
    }

    public static Chicken buildChicken( sObject configuration )
    {
        return (Chicken)AnimalFactory.build( configuration );
    }
}
