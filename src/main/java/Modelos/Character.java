package Modelos;

public class Character {
	private int faction_id;
	private String faction_name,lore;
	//Builder
	public Character(int faction_id, String faction_name, String lore) {
		this.faction_id = faction_id;
		this.faction_name = faction_name;
		this.lore = lore;
	}
	//Getters
	public int getFaction_id() {
		return faction_id;
	}
	public String getFaction_name() {
		return faction_name;
	}
	public String getLore() {
		return lore;
	}
	//Setters
	public void setFaction_id(int faction_id) {
		this.faction_id = faction_id;
	}
	public void setFaction_name(String faction_name) {
		this.faction_name = faction_name;
	}
	public void setLore(String lore) {
		this.lore = lore;
	}
	//ToString
	@Override
	public String toString() {
		return "Character [faction_id=" + faction_id + ", faction_name=" + faction_name + ", lore=" + lore + "]";
	}

}
