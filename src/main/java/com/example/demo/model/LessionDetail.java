package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "LessionDetails")
public class LessionDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long lessiondetailId;
	@Column(columnDefinition = "bit not null")
	private boolean isActive;
	@Column(nullable = false)
	private int numberOfUses;
	@ManyToOne @JoinColumn(name = "vocabularyId")
	Vocabulary vocabulary;
	@ManyToOne @JoinColumn(name = "userId")
	User user;
}
