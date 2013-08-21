public abstract class Animal implements Configurable
{
    Animal__c record;

    public Configurable initialize( sObject configuration )
    {
        record = (Animal__c)configuration;
        return this;
    }
}
