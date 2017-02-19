_G._savedEnv = getfenv()
module( "mode_retreat_generic", package.seeall )

function GetDesire()
  return 0
end

for k,v in pairs( mode_retreat_generic ) do _G._savedEnv[k] = v end
