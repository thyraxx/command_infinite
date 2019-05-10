class ItemPickerItemInfinite : ItemPickerItem
{

	ItemPickerItemInfinite(UnitPtr unit, SValue& params)
	{
		super(unit, params);
	}
	
	void Use(PlayerBase@ player) override
	{
		m_unit.Destroy();
		GiveItemImplInfinite(m_item);
	}
}

void GiveItemImplInfinite(ActorItem@ item)
{
	auto gm = cast<Campaign>(g_gameMode);

	if (item.quality == ActorItemQuality::Common)
		gm.m_shopMenu.Show(ItemPickerShopInfiniteMenuContent(gm.m_shopMenu), 1);
	else if (item.quality == ActorItemQuality::Uncommon)
		gm.m_shopMenu.Show(ItemPickerShopInfiniteMenuContent(gm.m_shopMenu), 2);
	else if (item.quality == ActorItemQuality::Rare)
		gm.m_shopMenu.Show(ItemPickerShopInfiniteMenuContent(gm.m_shopMenu), 3);
	else if (item.quality == ActorItemQuality::Epic)
		gm.m_shopMenu.Show(ItemPickerShopInfiniteMenuContent(gm.m_shopMenu), 4);
	else if (item.quality == ActorItemQuality::Legendary)
		gm.m_shopMenu.Show(ItemPickerShopInfiniteMenuContent(gm.m_shopMenu), 5);
}
