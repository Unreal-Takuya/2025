
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/Characters }

increase_sheild_health_device := class(creative_device):

    @editable ShieldBtn:button_device=button_device{}
    @editable HealthBtn:button_device=button_device{}


    OnBegin<override>()<suspends>:void=
        ShieldBtn.InteractedWithEvent.Subscribe(IncMaxShield)
        HealthBtn.InteractedWithEvent.Subscribe(IncMaxHealth)

    #Health Up
    IncMaxHealth(Agent: agent): void=
        if (FortChar:= Agent.GetFortCharacter[]):
            FortChar.SetMaxHealth(200.0)
            FortChar.SetHealth(200.0)


    #Shield Up
    IncMaxShield(Agent: agent): void=
        if (FortChar:= Agent.GetFortCharacter[]):
            FortChar.SetMaxShield(150.0)
            FortChar.SetShield(150.0)