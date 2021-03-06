if (KP_liberation_civrep_debug > 0) then {diag_log format ["[KP LIBERATION] [CIVREP] Module initialising on: %1", debug_source];};

// Functions
// Get buildings count for sector
F_cr_getBuildings = compileFinal preprocessFileLineNumbers "scripts\server\civrep\fnc\f_kp_cr_getBuildings.sqf";
// Change CR value
F_cr_changeCR = compileFinal preprocessFileLineNumbers "scripts\server\civrep\fnc\f_kp_cr_changeCR.sqf";
// Reputation gain for liberating a sector
F_cr_liberatedSector = compileFinal preprocessFileLineNumbers "scripts\server\civrep\fnc\f_kp_cr_liberatedSector.sqf";

// Scripts
// Spawn wounded civilians in a sector
civrep_wounded_civs = compileFinal preprocessFileLineNumbers "scripts\server\civrep\wounded\civrep_wounded_civs.sqf";
// Count initial buildings on each city and bigtown
[] spawn compileFinal preprocessFileLineNumbers "scripts\server\civrep\init_buildings.sqf";


if (KP_liberation_civrep_debug > 0) then {diag_log format ["[KP LIBERATION] [CIVREP] Module initialised on: %1", debug_source];};
