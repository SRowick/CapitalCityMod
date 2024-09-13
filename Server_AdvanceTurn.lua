require('Utilities');

function Server_AdvanceTurn_Order(game, order, result, skipThisOrder, addNewOrder)
    print("1")
    if (order.proxyType == 'GameOrderAttackTransfer') then
        print("2")
        -- Check if the order involves special units and skip the order if it does
        print("3")
        if NotTableEmpty(order.NumArmies.SpecialUnits) then
            print("4")
            skipThisOrder(WL.ModOrderControl.Skip)
            print("5")
        end
        print("6")
    end
    print("7")
end

function NotTableEmpty(List)
	for a,b in pairs(List) do
		return true
	end
	return false
end