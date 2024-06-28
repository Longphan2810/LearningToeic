package com.example.demo.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
@Entity
@Table(name = "Vocabularies")
public class Vocabulary {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private long vocabularyId;
@Column(columnDefinition = "varchar(max) not null")
private String englishVerion;
@Column(columnDefinition = "nvarchar(max) not null")
private String vietnameseVersion;
@Column(columnDefinition = "varchar(50) not null")
private String vocabularyType;
@ManyToOne @JoinColumn(name = "thematicsId")
Thematic thematic;

}
