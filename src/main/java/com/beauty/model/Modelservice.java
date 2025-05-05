package com.beauty.model;

public class Modelservice {
	   private int id;
	    private String title;
	    private String name;
	    private double price;
	    private int durationHours;
	    private String category;
	    private String imagePath;
	public Modelservice() {
		// TODO Auto-generated constructor stub
	}
	 public Modelservice(int id, String title, String name, double price, 
             int durationHours, String category, String imagePath) {
   this.id = id;
   this.title = title;
   this.name = name;
   this.price = price;
   this.durationHours = durationHours;
   this.category = category;
   this.imagePath = imagePath;
}

// Getters and Setters
public int getId() {
   return id;
}

public void setId(int id) {
   this.id = id;
}

public String getTitle() {
   return title;
}

public void setTitle(String title) {
   this.title = title;
}

public String getName() {
   return name;
}

public void setName(String name) {
   this.name = name;
}

public double getPrice() {
   return price;
}

public void setPrice(double price) {
   this.price = price;
}

public int getDurationHours() {
   return durationHours;
}

public void setDurationHours(int durationHours) {
   this.durationHours = durationHours;
}

public String getCategory() {
   return category;
}

public void setCategory(String category) {
   this.category = category;
}

public String getImagePath() {
   return imagePath;
}

public void setImagePath(String imagePath) {
   this.imagePath = imagePath;
}

// Helper method
public String getFormattedPrice() {
   return String.format("₱%.2f", price);
}

@Override
public String toString() {
   return "Service [id=" + id + ", title=" + title + ", price=" + price + "]";
}
	   
}
