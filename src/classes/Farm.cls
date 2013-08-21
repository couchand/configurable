public class Farm
{
    public static List<Animal> getAnimals()
    {
        List<Animal> animals = new List<Animal>();

        for ( Animal__c anAnimal : [SELECT Id, RecordType.DeveloperName FROM Animal__c])
        {
            animals.add( AnimalFactory.build( anAnimal ) );
        }

        return animals;
    }
}
