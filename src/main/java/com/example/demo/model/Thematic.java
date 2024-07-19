package com.example.demo.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Thematics")

public class Thematic {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long thematicsId;
	@Column(columnDefinition = "nvarchar(100)")
    private String thematicsName;
	@Column(columnDefinition = "nvarchar(max)")
    private String thematicsImage;
	@OneToMany(mappedBy = "thematic")
	List<Vocabulary> vocabularies;
}
