import java.util.ArrayList;
import java.util.List;

public class CatHerder implements Cats {

    static List<Cat> cats;

    public CatHerder() {
        if (cats == null)
            cats = new ArrayList<>();
        init();
    }

    public List<Cat> getAllCats() {
        return cats;
    }

    public Cat getCat(int id) {
        return cats.get(id);
    }

    public void addCat(Cat cat) {
        cats.add(cat);
    }

    public void addCat(String name, int age, String picture) {
        this.addCat(new Cat(name, age, picture));
    }

    public void updateCat(int id, Cat cat) {
        cats.set(id, cat);
    }

    public void updateCat(Cat cat) {
        cats.set(cat.getId(), cat);
    }

    public void humanelyEuthenize(int id) {
        cats.remove(this.getCat(id));
    }

    @Override
    public void humanelyEuthenize(Cat cat) {
        humanelyEuthenize(cat.getId());
    }

    private void init() {
        this.addCat(new Cat("Mace", 3, "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1199px-Cat03.jpg"));
        this.addCat(new Cat("Helen", 6, "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80"));
        this.addCat(new Cat("Lilou", 5, "https://vetstreet.brightspotcdn.com/dims4/default/a1a90c7/2147483647/thumbnail/180x180/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F0d%2Ff2e4c0b3a611e092fe0050568d634f%2Ffile%2Fhub-cats-senior.jpg"));
    }

//    void sortCats();
//    List<String> getCatNames();
//    double getAverageAge();
//    public Cat getCat(String name);
}
