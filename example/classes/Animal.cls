public abstract class Animal implements Configurable
{
    protected Animal__c me;

    public Configurable initialize( sObject configuration )
    {
        me = (Animal__c)configuration;
        return this;
    }

    public String getName()
    {
        return me.Name;
    }

    public String getSpecies()
    {
        return me.RecordType.DeveloperName;
    }

    public Decimal value
    {
        get
        {
            if ( value == null )
            {
                value = evaluate();
            }

            return value;
        }
        protected set;
    }

    public abstract Decimal evaluate();
}
