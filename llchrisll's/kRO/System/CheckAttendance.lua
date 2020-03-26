-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: CheckAttendance.lub 

-- params : ...
-- function num : 0
Config = {StartDate = 20200205, EndDate = 20200303}
Reward = {
{1, 22979, 1}
, 
{2, 6316, 1}
, 
{3, 12265, 5}
, 
{4, 23047, 5}
, 
{5, 23038, 1}
, 
{6, 23043, 1}
, 
{7, 23340, 3}
, 
{8, 12516, 5}
, 
{9, 23307, 5}
, 
{10, 23899, 3}
, 
{11, 14533, 2}
, 
{12, 23012, 3}
, 
{13, 23048, 5}
, 
{14, 12264, 5}
, 
{15, 23046, 5}
, 
{16, 12515, 5}
, 
{17, 12522, 5}
, 
{18, 12523, 5}
, 
{19, 25464, 10}
, 
{20, 25791, 1}
}
main = function()
  -- function num : 0_0
  result = InsertCheckAttendanceConfig(Config.EvendOnOff, Config.StartDate, Config.EndDate)
  if not result then
    return false, msg
  end
  for k,rewardtbl in pairs(Reward) do
    result = InsertCheckAttendanceReward(rewardtbl[1], rewardtbl[2], rewardtbl[3])
    if not result then
      return false, msg
    end
  end
  return true, "success"
end


