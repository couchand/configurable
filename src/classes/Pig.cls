public class Pig extends Animal
{
    public override Decimal evaluate()
    {
        return me.Height__c * HEIGHT_PRICE +
               me.Hoove_Thickness__c * HOOVE_THICKNESS_PRICE +
               colorValue.get( me.Color__c );
    }

    public static final Decimal HEIGHT_PRICE = 1.9;
    public static final Decimal HOOVE_THICKNESS_PRICE = 6.2;

    public static Map<String, Decimal> colorValue = new Map<String, Decimal>
    {
        'Black' => 32,
        'Pink' => 17,
        'Grey' => 26
    };
}
