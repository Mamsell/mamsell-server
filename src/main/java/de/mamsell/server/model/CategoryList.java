package de.mamsell.server.model;

import java.util.ArrayList;
import java.util.List;

public class CategoryList {

	List<String> categories;

	// Constructor will be filled dynamically later on
	public CategoryList() {
		this.categories = new ArrayList<String>();
		categories.add("Food");
		categories.add("Cleaning");
		categories.add("Cosmetics");
		categories.add("Going out");
	}

	public List<String> getCategories() {
		return this.categories;
	}

	public void setCategories(List<String> categories) {
		this.categories = categories;
	}
}
