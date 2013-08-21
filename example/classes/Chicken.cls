public class Chicken extends Animal
{
    public override Decimal evaluate()
    {
        return me.Beak_Length__c * BEAK_LENGTH_PRICE +
               colorValue.get( me.Color__c );
    }

    public static final Decimal BEAK_LENGTH_PRICE = 15.2;

    public static Map<String, Decimal> colorValue = new Map<String, Decimal>
    {
        'Black' => 35,
        'Brown' => 38,
        'White' => 11,
        'Grey' => 36,
        'Black and White' => 34,
        'White and Brown' => 31
    };
}
