public class Dog extends Animal
{
    public override Decimal evaluate()
    {
        return me.Height__c * HEIGHT_PRICE +
               me.Cuddliness__c * CUDDLINESS_PRICE +
               colorValue.get( me.Color__c );
    }

    public static final Decimal HEIGHT_PRICE = 1.5;
    public static final Decimal CUDDLINESS_PRICE = 0.3;

    public static Map<String, Decimal> colorValue = new Map<String, Decimal>
    {
        'Black' => 32,
        'Brown' => 25,
        'White' => 39,
        'Grey' => 24,
        'Black and White' => 16,
        'Black and Brown' => 37,
        'White and Brown' => 33
    };
}
