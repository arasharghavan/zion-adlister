import java.io.Serializable;

public class Cat implements Serializable {
//    private static int id = 0;

    private int id;
    private String name;
    private int age;
    private String picture;

    public Cat() {
    }

    protected Cat(String name, int age, String picture) {
//        this.id = id++;
        this.name = name;
        this.age = age;
        this.picture = picture;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
