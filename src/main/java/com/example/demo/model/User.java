	package com.example.demo.model;
	
	
	
	import java.util.List;
	
	import jakarta.persistence.Column;
	import jakarta.persistence.Entity;
	import jakarta.persistence.GeneratedValue;
	import jakarta.persistence.GenerationType;
	import jakarta.persistence.Id;
	import jakarta.persistence.OneToMany;
	import jakarta.persistence.Table;
	import jakarta.persistence.UniqueConstraint;
	import jakarta.validation.constraints.Email;
	import jakarta.validation.constraints.NotBlank;
	import lombok.AllArgsConstructor;
	import lombok.Data;
	import lombok.NoArgsConstructor;
	
	@Data
	@AllArgsConstructor
	@NoArgsConstructor
	@Entity
	@Table(name = "Users")
	public class User {
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private long userId;
		@Column(columnDefinition = "varchar(50) not null")
		private String username;
		@Column(columnDefinition = "nvarchar(20) not null")
		private String password;
		@Column(columnDefinition = "nvarchar(100) not null")
		private String email;
		@OneToMany(mappedBy = "user")
		List<LessionDetail> lessionDetails;
	}
