public class Cat extends Animal
{
    public override Decimal evaluate()
    {
        return me.Lives_Remaining__c * LIFE_PRICE +
               me.Cuddliness__c * CUDDLINESS_PRICE +
               colorValue.get( me.Color__c );
    }

    public static final Decimal LIFE_PRICE = 5;
    public static final Decimal CUDDLINESS_PRICE = 0.4;

    public static Map<String, Decimal> colorValue = new Map<String, Decimal>
    {
        'Black' => 36,
        'Brown' => 42,
        'White' => 30,
        'Grey' => 18,
        'Black and White' => 31,
        'Black and Brown' => 35,
        'White and Brown' => 32
    };
}
