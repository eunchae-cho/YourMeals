package com.oijoa.service;

import java.util.List;
import com.oijoa.domain.Recipe;

public interface RecipeService {

  List<Recipe> list() throws Exception;
  int add (Recipe recipe) throws Exception;
  int update(Recipe recipe) throws Exception;
  Recipe get(int no) throws Exception;
}
