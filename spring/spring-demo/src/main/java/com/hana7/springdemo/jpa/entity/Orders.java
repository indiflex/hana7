package com.hana7.springdemo.jpa.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.ForeignKey;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Orders extends BaseEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "member",
		foreignKey = @ForeignKey(
			name = "fk_Orders_member",
			foreignKeyDefinition = """
					foreign key (member)
					   references Member(id)
					    on DELETE cascade
				"""
		)
	)
	private Member member;

	@OneToMany(mappedBy = "orders", cascade = CascadeType.ALL)
	private List<OrderItem> orderItems;

	public int getAmt() {
		if (orderItems == null)
			return 0;
		return orderItems.stream().mapToInt(OrderItem::getAmt).sum();
	}
}
