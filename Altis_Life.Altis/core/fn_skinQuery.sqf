/*
	Author: TheTotenkopf
	File: fn_skinQuery.sqf
*/

// Medic

// Uniformen Texturen
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_HeliPilotCoveralls"};
        player setObjectTextureGlobal [0,"skins\human\medic\adac_uniform.jpg"];
        waitUntil {uniform player != "U_B_HeliPilotCoveralls"};
    };
};
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_O_OfficerUniform_ocamo"};
        player setObjectTextureGlobal [0,"skins\human\medic\medic_uniform.jpg"];
        waitUntil {uniform player != "U_O_OfficerUniform_ocamo"};
    };
};
// ADAC Backpack Texture
[] spawn
{
while {true} do
    {
        waitUntil {backpack player == "B_Kitbag_cbr"};
        (unitBackpack player) setObjectTextureGlobal [0,"skins\human\medic\adac_backpack.jpg"];
        waitUntil {backpack player != "B_Kitbag_cbr"};
    };
};
// Medic Backpack Texture
[] spawn
{
while {true} do
    {
        waitUntil {backpack player == "B_Kitbag_sgg"};
        (unitBackpack player) setObjectTextureGlobal [0,"skins\human\medic\medic_backpack.jpg"];
        waitUntil {backpack player != "B_Kitbag_sgg"};
    };
};


// COP

//Skins und Backpacks für Cops
// CopLevel 1
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_Rangemaster"};
        player setObjectTextureGlobal [0,"skins\human\cop\rekrut.jpg"];
        waitUntil {uniform player != "U_Rangemaster"};
    };
};
// CopLevel 2
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_CombatUniform_mcam_vest"};
        player setObjectTextureGlobal [0,"skins\human\cop\polizei_uniform.jpg"];
        waitUntil {uniform player != "U_B_CombatUniform_mcam_vest"};
    };
};
// CopLevel 3+4
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_SpecopsUniform_sgg"};
        player setObjectTextureGlobal [0,"skins\human\cop\polizei2.jpg"];
        waitUntil {uniform player != "U_B_SpecopsUniform_sgg"};
	};
};
// CopLevel 5
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_CombatUniform_mcam"};
        player setObjectTextureGlobal [0,"skins\human\cop\sek.jpg"];
        waitUntil {uniform player != "U_B_CombatUniform_mcam"};
    };
};
// CopLevel 6
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
        player setObjectTextureGlobal [0,"skins\human\cop\gsg9.paa"];
        waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
	};
};
//End CLothes


// CIV

//Skins für Zivis
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_C_Poloshirt_stripped"};
        player setObjectTextureGlobal [0,"skins\tshirt.jpg"];
        waitUntil {uniform player != "U_C_Poloshirt_stripped"};
    };
};
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_C_Poor_2"};
        player setObjectTextureGlobal [0,"skins\human\civ\kitty.jpg"];
        waitUntil {uniform player != "U_C_Poor_2"};
    };
};