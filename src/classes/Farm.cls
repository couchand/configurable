public class Farm
{
    public static List<Animal> getAnimals()
    {
        List<Animal> animals = new List<Animal>();

        List<Animal__c> records = [
            SELECT Id, Name,
                RecordType.DeveloperName,
                Color__c, Height__c,
                Lives_Remaining__c, Cuddliness__c,
                Hoove_Thickness__c, Beak_Length__c
            FROM Animal__c
        ];

        for ( Animal__c anAnimal : records )
        {
            animals.add( AnimalFactory.build( anAnimal ) );
        }

        return animals;
    }
}
