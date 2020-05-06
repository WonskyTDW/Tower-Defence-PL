#include <amxmodx>
#include <td>

new iItem;
public plugin_init(){
	new id = register_plugin("TD: SHOP| Frozen Nade", "1.0", "GT Team")
	
	iItem = td_shop_register_item("Lodowy granat", "Otrzymujesz Lodowy granat spowalniajacy potwory", 30, 0, id)
}

public td_shop_item_selected(id, itemid)
{
	if(iItem == itemid)
	{
		if(td_give_user_frozen_grenade(id) == 0)
		{
			client_print(id, print_center, "Osiagnales limit Lodowych granatow");

			return PLUGIN_HANDLED;
		}
	}

	return PLUGIN_CONTINUE;
}
