package com.hana7.springdemo.jpa.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.ForeignKey;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
public class OrderItem {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "orders",
		foreignKey = @ForeignKey(name = "fk_OrderItem_orders",
			foreignKeyDefinition = """
					foreign key (orders) 
					references Orders(id)
					on delete cascade
				"""))
	private Orders orders;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "item",
		foreignKey = @ForeignKey(name = "fk_OrderItem_item",
			foreignKeyDefinition = """
					foreign key (item) 
					references Item(id)
					on delete cascade
				"""))
	private Item item;

	private int cnt;
	private int amt;

	public int getAverage() {
		if (cnt == 0)
			return 0;
		return (int)Math.round((double)amt / cnt);
	}
}
