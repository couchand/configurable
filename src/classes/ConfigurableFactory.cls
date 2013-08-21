global class ConfigurableFactory
{
    global static Configurable build( sObject configuration )
    {
        return instantiate( configuration )
               .initialize( configuration );
    }

    public static List<Configurable> build( List<sObject> configurations )
    {
        List<Configurable> configurables = new List<Configurable>();

        for ( sObject configuration : configurations )
        {
            configurables.add( build( configuration ) );
        }

        return configurables;
    }

    private static Configurable instantiate( sObject configurable )
    {
        return (Configurable)getType( configurable ).newInstance();
    }

    private static Type getType( sObject configuration )
    {
        return Type.forName( (String)configuration.getSObject('RecordType').get('DeveloperName') );
    }
}
