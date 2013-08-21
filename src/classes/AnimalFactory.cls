public class AnimalFactory
{
    public static Animal build( sObject configuration )
    {
        return (Animal)ConfigurableFactory.build( configuration );
    }
}
