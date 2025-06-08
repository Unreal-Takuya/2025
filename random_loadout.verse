using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

random_loadout := class(creative_device):

    @editable ItemRemover: item_remover_device=item_remover_device{}
    @editable BTN: button_device=button_device{}

    @editable Granter_Assult: item_granter_device=item_granter_device{}
    @editable Granter_Sniper: item_granter_device=item_granter_device{}
    @editable Granter_ShotGun: item_granter_device=item_granter_device{}
    @editable Granter_Item: item_granter_device=item_granter_device{}
    @editable Granter_Sword: item_granter_device=item_granter_device{}

    OnBegin<override>()<suspends>:void=
        BTN.InteractedWithEvent.Subscribe(RandomLoadout)

    RandomLoadout(Agent:agent):void=
        ItemRemover.Remove(Agent)
        Granter_Assult.CycleToRandomItem(Agent)
        Granter_Sniper.CycleToRandomItem(Agent)
        Granter_ShotGun.CycleToRandomItem(Agent)
        Granter_Item.CycleToRandomItem(Agent)
        Granter_Sword.CycleToRandomItem(Agent)
