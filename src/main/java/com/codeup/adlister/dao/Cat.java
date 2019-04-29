package com.codeup.adlister.dao;

import java.util.List;

public interface Cat {

    List<Cat> all();
    Long insert(Cat cat);
    List<Cat> search(Cat cat);
    void updateCat(Cat cat);

}


