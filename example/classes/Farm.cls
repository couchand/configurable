public class Farm
{
    public static List<Animal> getAnimals()
    {
        return AnimalFactory.build([
            SELECT Id, Name,
                RecordType.DeveloperName,
                Color__c, Height__c,
                Lives_Remaining__c, Cuddliness__c,
                Hoove_Thickness__c, Beak_Length__c
            FROM Animal__c
        ]);
    }
}
