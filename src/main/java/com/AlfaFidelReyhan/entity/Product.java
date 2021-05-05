package com.AlfaFidelReyhan.entity;



	import javax.persistence.*;
	import javax.validation.constraints.NotBlank;
	import javax.validation.constraints.NotNull;


	@Entity
	@Table(name = "product")
	public class Product {

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private long id;
		
		@NotBlank(message = "Name is mandatory")
		private String name;
		
		@NotBlank(message = "Brand is mandatory")
		private String brand;
		
		@NotBlank(message = "Madein is mandatory")
		private String madein;
		
		@NotNull(message = "Price is mandatory")
		private Float price;
		
		public Product () {
			
		}

		public Product(long id, @NotBlank(message = "Name is mandatory") String name,
				@NotBlank(message = "Brand is mandatory") String brand,
				@NotBlank(message = "Madein is mandatory") String madein,
				@NotNull(message = "Price is mandatory") Float price) {
			super();
			this.id = id;
			this.name = name;
			this.brand = brand;
			this.madein = madein;
			this.price = price;
		}

		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getBrand() {
			return brand;
		}

		public void setBrand(String brand) {
			this.brand = brand;
		}

		public String getMadein() {
			return madein;
		}

		public void setMadein(String madein) {
			this.madein = madein;
		}

		public Float getPrice() {
			return price;
		}

		public void setPrice(Float price) {
			this.price = price;
		}
}
