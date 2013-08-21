public class Cow extends Animal
{
    public override Decimal evaluate()
    {
        return me.Height__c * HEIGHT_PRICE +
               me.Hoove_Thickness__c * HOOVE_THICKNESS_PRICE +
               colorValue.get( me.Color__c );
    }

    public static final Decimal HEIGHT_PRICE = 1.3;
    public static final Decimal HOOVE_THICKNESS_PRICE = 16.2;

    public static Map<String, Decimal> colorValue = new Map<String, Decimal>
    {
        'Black' => 32,
        'Brown' => 27,
        'Black and White' => 19,
        'White and Brown' => 21
    };
}
