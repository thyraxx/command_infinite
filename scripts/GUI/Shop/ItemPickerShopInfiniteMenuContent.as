class ItemPickerShopInfiniteMenuContent : ItemPickerShopMenuContent
{

	Upgrades::ItemPickerShopInfinite@ m_itemShopInfinite;

	ItemPickerShopInfiniteMenuContent(ShopMenu@ shopMenu, string id = "itempickershop")
	{
		super(shopMenu, id);

		@m_itemShopInfinite = cast<Upgrades::ItemPickerShopInfinite>(m_currentShop);
		if (m_itemShop is null)
			PrintError("\"" + id + "\" is not a itempickerinfinite shop!");
	}
}