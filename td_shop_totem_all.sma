#include <amxmodx>
#include <td>

new iItem;
public plugin_init()
{
	new id = register_plugin("TD: SHOP| Super totem", "1.0", "GT Team")
	iItem = td_shop_register_item("SUPER TOTEM", "+25 percent wszystkich statystyk", 400, 0, id)
}

public td_shop_item_selected(id, itemid)
{
	if(iItem == itemid)
	{
		if(td_turrets_get_player_totem(id))
		{
			client_print(id, print_center, "Masz juz totem!");
			return PLUGIN_HANDLED;
		}
		td_turrets_set_player_totem(id, TOTEM_ALL);
	}

	return PLUGIN_CONTINUE;
}
