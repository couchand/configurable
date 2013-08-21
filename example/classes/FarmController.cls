public class FarmController
{
    public List<Animal> animals
    {
        get
        {
            if ( animals == null )
            {
                animals = Farm.getAnimals();
            }
            return animals;
        }
        private set;
    }
}
