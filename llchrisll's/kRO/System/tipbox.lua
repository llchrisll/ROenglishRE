-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: tipbox.lub 

-- params : ...
-- function num : 0
tbl = {
[1] = {Title = "팁박스", Search = 1, Image = "유저인터페이스\\tipbox\\tip00001", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"/tip, Alt+D 또는 팁박스 아이콘을 클릭하여 팁박스를 열 수 있습니다.\\n팁박스에서는 게임을 즐기는데 유용한 정보를 얻을 수 있습니다.\\n더 많은 정보를 얻고 싶다면 ^3b488c검색창^000000에 검색어를 입력해 보세요.\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 0, Twinkle = 1, StartX = 160, StartY = 105, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[2] = {Title = "help: 명령어 일람", Search = 1, Image = "유저인터페이스\\tipbox\\tip00002", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"/h를 입력하여 라그나로크에서 사용되는 유용한 명령어들을 볼 수 있습니다.\\n/가 붙은 명령어들은 ^3b488c채팅창에 입력^000000하여 사용할 수 있습니다.\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[3] = {Title = "캐릭터: HP", Search = 1, Image = "유저인터페이스\\tipbox\\tip00003", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"캐릭터의 체력을 나타냅니다.\\n^ff0000HP가 0이 되면 전투불능 상태가 됩니다. 장소에 따라 경험치가 하락^000000할 수 있으므로 HP관리에 주의하시기 바랍니다.\\n\tAlt + END 키를 눌러 캐릭터 하단의 HP/SP게이지를 ON/OFF 할 수 있습니다.\n\t\t<TIPBOX>▶캐릭터: SP<INFO>4</INFO></TIPBOX>\n\t\t<TIPBOX>▶자동회복<INFO>12</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 3, Twinkle = 1, StartX = 100, StartY = 60, DistX = 0, DistY = 0, MoveTime = 0}
, 
{EffectNum = 3, Twinkle = 1, StartX = 120, StartY = 265, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[4] = {Title = "캐릭터: SP", Search = 1, Image = "유저인터페이스\\tipbox\\tip00003", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"캐릭터의 정신력을 나타냅니다.\\nSP는 ^3b488c스킬을 사용하면 소모^000000 됩니다. SP가 0이 되면 스킬을 사용할 수 없으니 SP관리에 주의하시기 바랍니다.\\nAlt + END 키를 눌러 캐릭터 하단의 HP/SP게이지를 ON/OFF 할 수 있습니다.\n\t\t<TIPBOX>▶캐릭터: HP<INFO>3</INFO></TIPBOX>\n\t\t<TIPBOX>▶자동회복<INFO>12</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 0, Twinkle = 1, StartX = 100, StartY = 105, DistX = 0, DistY = 0, MoveTime = 0}
, 
{EffectNum = 0, Twinkle = 1, StartX = 120, StartY = 305, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[5] = {Title = "캐릭터: 레벨업", Search = 1, Image = "유저인터페이스\\tipbox\\tip00005", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"몬스터를 사냥하거나 퀘스트를 완료하여 경험치를 얻으면 레벨업을 할 수 있습니다.\\nEXP를 얻어 베이스 레벨을 올리면 캐릭터의 기본적인 능력을 결정하는 ^3b488c스테이터스 포인트^000000를 얻을 수 있습니다.\\nJOBEXP를 얻어 잡 레벨을 올리면 캐릭터의 스킬을 올릴 수 있는 ^3b488c스킬 포인트^000000를 얻을 수 있습니다.\n\t\t<TIPBOX>▶전투: 경험치<INFO>16</INFO></TIPBOX>\n\t\t<TIPBOX>▶캐릭터: 스테이터스<INFO>6</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 3, Twinkle = 1, StartX = 10, StartY = 265, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[6] = {Title = "스테이터스: STR(힘)#스탯스텟", Search = 1, Image = "유저인터페이스\\tipbox\\tip00006", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"캐릭터의 ^3b488c근접 물리 공격력^000000에 직접적인 영향을 미쳐 기본 공격 데미지가 올라갑니다.\\n또, ^3b488c소지한계량(Weight)^000000이 늘어나 보다 많은 아이템을 가지고 다닐 수 있게 됩니다.\n\t\t<TIPBOX>▶스테이터스: AGI(민첩)<INFO>7</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: VIT(체력)<INFO>8</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: INT(지력)<INFO>9</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: DEX(재주)<INFO>10</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: LUK(운)<INFO>11</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 5, Twinkle = 1, StartX = 12, StartY = 210, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[7] = {Title = "스테이터스: AGI(민첩)#스탯스텟", Search = 1, Image = "유저인터페이스\\tipbox\\tip00006", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"캐릭터의 속도에 직접적인 영향을 미쳐 ^3b488c공격속도^000000와 ^3b488c회피율^000000이 올라갑니다.\\n또, ^3b488c물리 방어력^000000에도 영향을 줍니다.\n\t\t<TIPBOX>▶스테이터스: STR(힘)<INFO>6</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: VIT(체력)<INFO>8</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: INT(지력)<INFO>9</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: DEX(재주)<INFO>10</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: LUK(운)<INFO>11</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 5, Twinkle = 1, StartX = 12, StartY = 223, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[8] = {Title = "스테이터스: VIT(체력)#스탯스텟", Search = 1, Image = "유저인터페이스\\tipbox\\tip00006", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"캐릭터의 체력에 직접적인 영향을 미쳐 ^3b488c최대 HP^000000가 올라갑니다.\\n또, ^3b488c물리 방어력^000000과 ^3b488c마법 방어력^000000을 올려주고 ^3b488cHP자동 회복^000000에도 영향을 줍니다.\n\t\t<TIPBOX>▶스테이터스: STR(힘)<INFO>6</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: AGI(민첩)<INFO>7</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: INT(지력)<INFO>9</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: DEX(재주)<INFO>10</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: LUK(운)<INFO>11</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 5, Twinkle = 1, StartX = 12, StartY = 236, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[9] = {Title = "스테이터스: INT(지력)#스탯스텟", Search = 1, Image = "유저인터페이스\\tipbox\\tip00006", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"캐릭터의 ^3b488c마법 공격력^000000에 직접적인 영향을 미쳐 ^3b488c마법 데미지^000000가 올라갑니다.\\n또, ^3b488c캐스팅 시간^000000을 단축시키고 ^3b488c마법 방어력^000000을 올려주며 ^3b488c최대SP량^000000을 늘려 마법을 더 많이 쓸 수 있게 해줍니다.\n\t\t<TIPBOX>▶스테이터스: STR(힘)<INFO>6</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: AGI(민첩)<INFO>7</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: VIT(체력)<INFO>8</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: DEX(재주)<INFO>10</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: LUK(운)<INFO>11</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 5, Twinkle = 1, StartX = 12, StartY = 250, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[10] = {Title = "스테이터스: DEX(재주)#스탯스텟", Search = 1, Image = "유저인터페이스\\tipbox\\tip00006", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"캐릭터의 ^3b488c원거리물리 공격력^000000에 직접적인 영향을 미쳐 ^3b488c원거리 공격 데미지^000000가 올라갑니다.\\n또, ^3b488c명중률^000000을 올려줘 공격이 성공할 확률이 높아지고 ^3b488c캐스팅 시간^000000을 단축시키며 ^3b488c마법 공격력^000000을 올려줍니다.\n\t\t<TIPBOX>▶스테이터스: STR(힘)<INFO>6</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: AGI(민첩)<INFO>7</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: VIT(체력)<INFO>8</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: INT(지력)<INFO>9</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: LUK(운)<INFO>11</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 5, Twinkle = 1, StartX = 12, StartY = 263, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[11] = {Title = "스테이터스: LUK(운)#스탯스텟", Search = 1, Image = "유저인터페이스\\tipbox\\tip00006", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"캐릭터의 ^3b488c치명타율^000000에 직접적인 영향을 미쳐 몬스터에게 ^3b488c크리티컬 데미지^000000를 줄 확률이 올라갑니다.\\n또, ^3b488c명중률, 회피율, 물리 공격력, 마법 공격력^000000등에 영향을 주지만 ^ff0000효율이 다른 스테이터스에 비해 낮으므로 포인트를 투자할 때 주의가 필요합니다.^000000\n\t\t<TIPBOX>▶스테이터스: STR(힘)<INFO>6</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: AGI(민첩)<INFO>7</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: VIT(체력)<INFO>8</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: INT(지력)<INFO>9</INFO></TIPBOX>\n\t\t<TIPBOX>▶스테이터스: DEX(재주)<INFO>10</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 5, Twinkle = 1, StartX = 12, StartY = 276, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[12] = {Title = "자동회복", Search = 1, Image = "유저인터페이스\\tipbox\\tip00012", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"아무런 행동도 하지 않고 제자리에 가만히 서 있으면 플레이어의 ^3b488cHP와 SP가 조금씩 회복^000000 됩니다. 앉아 있을 경우 2배로 회복됩니다.\\n^ff0000무게가 70% 이상일 경우는 회복되지 않습니다.^000000\n\t\t<TIPBOX>▶캐릭터: Weight(무게)<INFO>13</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[13] = {Title = "캐릭터: Weight(무게)", Search = 1, Image = "유저인터페이스\\tipbox\\tip00012", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"캐릭터가 지닐 수 있는 무게와 현재 지닌 아이템의 무게를 나타냅니다.\\nWeight만큼 아이템을 지닐 수 있으며 ^ff0000아이템의 무게가 한계치를 넘으면 더 이상 아이템을 가질 수 없습니다.\\nWeight 의 수치가 70%이상이면 HP 와 SP가 자동으로 회복 되지않습니다. 또한 90% 이상 넘게 되면 플레이어는 공격을 하거나 스킬을 사용할 수 없습니다.^000000\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 0, Twinkle = 1, StartX = 100, StartY = 185, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[14] = {Title = "전투: 공격", Search = 1, Image = "유저인터페이스\\tipbox\\tip00014", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"몬스터 위에 마우스 커서를 가져가면 커서가 칼 모양으로 바뀌게 됩니다.\\n이때, ^3b488c클릭^000000으로 공격할 수 있습니다.\n\t\t<TIPBOX>▶락 온 모드: 자동공격<INFO>15</INFO></TIPBOX>\n\t\t<TIPBOX>▶전투: 경험치<INFO>16</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[15] = {Title = "락 온 모드: 자동공격", Search = 1, Image = "유저인터페이스\\tipbox\\tip00014", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"Ctrl 키를 누른 상태에서 몬스터를 공격하면 몬스터를 처치할 때까지 ^3b488c자동으로 공격^000000하게 되며 다른 곳을 클릭하면 해제할 수 있습니다.\\n또, ^3b488c/noctrl를 입력하면 Ctrl을 누르지않아도 자동공격이 되는 상태가 됩니다.\\n자동공격이 기본인 상태에서 /noctrl을 다시 입력하면 자동공격 모드를 해제할 수 있습니다.^000000\n\t\t<TIPBOX>▶전투: 공격<INFO>14</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[16] = {Title = "전투: 경험치", Search = 1, Image = "유저인터페이스\\tipbox\\tip00016", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"몬스터를 사냥하면 ^3b488c경험치^000000를 얻을 수 있습니다.\\n몬스터에게 얻는 경험치는 몬스터에게 준 피해와 비례하지만 같은 피해를 주었다 하더라도 맨 처음에 몬스터를 공격한 사람이 경험치를 더 많이 받게 됩니다.\n\t\t<TIPBOX>▶전투: 공격<INFO>14</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[17] = {Title = "아이템", Search = 1, Image = "유저인터페이스\\tipbox\\tip00017", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"바닥에 떨어진 아이템은 마우스를 아이템에 가져간 후 ^3b488c왼쪽 클릭^000000을 하면 주울 수 있습니다.\\n주운 아이템은 ^3b488c인벤토리-소지아이템^000000에 들어가게 됩니다.\n\t\t<TIPBOX>▶인벤토리: 소지아이템<INFO>64</INFO></TIPBOX>\n\t\t<TIPBOX>▶아이템: 돋보기<INFO>18</INFO></TIPBOX>\n\t\t<TIPBOX>▶아이템: 확성기<INFO>7000</INFO></TIPBOX>\n\t\t<TIPBOX>▶아이템 제조 안내<INFO>7036</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 5, Twinkle = 1, StartX = 150, StartY = 250, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[18] = {Title = "아이템: 돋보기", Search = 1, Image = "유저인터페이스\\tipbox\\tip00018", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"몬스터에게서 얻은 장비용 아이템들은 아이템 효과가 확인되어있지 않을 수 있습니다. 미감정 아이템은 도구상점에서 파는 <ITEM>돋보기<INFO>611 돋보기</INFO></ITEM> 아이템을 사용하여 확인할 수 있습니다.\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 5, Twinkle = 1, StartX = 100, StartY = 88, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[19] = {Title = "채팅: 대화", Search = 1, Image = "유저인터페이스\\tipbox\\tip00019", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"엔터키로 채팅창을 활성화 시킬 수 있습니다. 하고 싶은 말을 쓰고 다시 엔터키를 누르면 대화가 전송 됩니다.\n\t\t<TIPBOX>▶채팅: 채팅방<INFO>20</INFO></TIPBOX>\n\t\t<TIPBOX>▶채팅: 귓속말<INFO>21</INFO></TIPBOX>\n\t\t<TIPBOX>▶채팅: 파티<INFO>22</INFO></TIPBOX>\n\t\t<TIPBOX>▶채팅: 길드<INFO>23</INFO></TIPBOX>\n\t\t<TIPBOX>▶채팅: 채팅창<INFO>25</INFO></TIPBOX>\n\t\t<TIPBOX>▶채팅: 내용표시<INFO>26</INFO></TIPBOX>\n\t\t<TIPBOX>▶차단<INFO>28</INFO></TIPBOX>\n\t\t<TIPBOX>▶이모션<INFO>27</INFO></TIPBOX>\n\t\t<TIPBOX>▶채팅: 대화내용 저장<INFO>24</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 3, Twinkle = 1, StartX = 100, StartY = 280, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[20] = {Title = "채팅: 채팅방", Search = 1, Image = "유저인터페이스\\tipbox\\tip00020", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"/채팅방 또는 /chat으로 ^3b488c채팅방^000000을 만드는 창을 띄울 수 있습니다. 또 /q 명령으로 채팅방을 나갈 수 있습니다.\n\t\t<TIPBOX>▶채팅: 대화<INFO>19</INFO></TIPBOX>\n\t\t<TIPBOX>▶채팅: 대화내용 저장<INFO>24</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[21] = {Title = "채팅: 귓속말", Search = 1, Image = "유저인터페이스\\tipbox\\tip00021", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"채팅창 왼쪽 입력란에 캐릭터이름을 입력하면 해당 캐릭터에게 귓속말을 할 수 있습니다.\n\t\t^3b488cAlt + H^000000로 ^3b488c귓말 리스트^000000 창을 열어 귓속말 상대를 확인할 수 있습니다.\n\t\t<TIPBOX>▶차단<INFO>28</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 3, Twinkle = 1, StartX = 30, StartY = 260, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[22] = {Title = "채팅: 파티", Search = 1, Image = "유저인터페이스\\tipbox\\tip00022", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"파티멤버와의 대화는 % 하고 싶은 말  또는 CTRL+ENTER로 할 수 있습니다.\\n또, 채팅창 오른쪽의 ^3b488c파란동그라미^000000를 누르면 ^3b488c수신그룹을 설정^000000할 수 있습니다.\n\t\t<TIPBOX>▶채팅: 길드<INFO>23</INFO></TIPBOX>\n\t\t<TIPBOX>▶파티 시스템<INFO>29</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[23] = {Title = "채팅: 길드", Search = 1, Image = "유저인터페이스\\tipbox\\tip00023", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"길드멤버와의 대화는 /gc 하고 싶은 말  또는 $ 하고 싶은 말  또는 ALT+ENTER로 할 수 있습니다.\\n또, 채팅창 오른쪽의 ^3b488c파란동그라미^000000를 누르면 ^3b488c수신그룹을 설정^000000할 수 있습니다.\n\t\t<TIPBOX>▶채팅: 파티<INFO>22</INFO></TIPBOX>\n\t\t<TIPBOX>▶길드 시스템<INFO>30</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[24] = {Title = "채팅: 대화내용 저장", Search = 1, Image = "유저인터페이스\\tipbox\\tip00024", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"/갈무리 or /savechat 으로 채팅 내용을 파일로 저장합니다. \\n대화 내용은 라그나로크가 설치 된 폴더의 Chat폴더 안에 저장 됩니다.\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 3, Twinkle = 1, StartX = 100, StartY = 210, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[25] = {Title = "채팅: 채팅창", Search = 1, Image = "유저인터페이스\\tipbox\\tip00025", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"^3b488cF10^000000으로 채팅창의 크기를 조절할 수 있습니다.\\nAlt + F10을 누르면 채팅창을 On/Off 할 수 있습니다.\n\t\t<TIPBOX>▶채팅: 내용표시<INFO>26</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 3, Twinkle = 1, StartX = 120, StartY = 150, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[26] = {Title = "채팅: 내용표시", Search = 1, Image = "유저인터페이스\\tipbox\\tip00026", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"채팅창에 /notalkmsg를 입력하면 채팅내용을 채팅창에 표시하지 않습니다. On/Off\\n/notalkmsg2를 입력하면 길드말을 포함한 채팅내용을 채팅창에 표시하지 않습니다. On/Off\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[27] = {Title = "이모션", Search = 1, Image = "유저인터페이스\\tipbox\\tip00027", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"ALT + L을 누르거나 /이모션을 입력하면 사용가능한 ^3b488c이모션^000000의 목록을 볼 수 있습니다.\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[28] = {Title = "차단", Search = 1, Image = "유저인터페이스\\tipbox\\tip00028", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"/차단 캐릭터명 또는 /ex 캐릭터명으로 해당 캐릭터가 하는 말이나 귓속말 등을 차단합니다. 해제하고 싶을때에는 /해제 캐릭터명 또는 /in 캐릭터명 으로 해제할 수 있습니다.\\n또, /차단전부, /exall, /해제전부, /inall 명령어로 전체 대화와 귓속말을 차단하거나 해제할 수 있습니다.\\n차단된 캐릭터의 목록을 확인하고 싶을때에는 /차단 또는 /ex로 목록을 볼 수 있습니다.\\n^ff0000※ (Y/N)를 묻지 않으므로, 신중하게 선택하셔야 합니다.^000000\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[29] = {Title = "파티 시스템", Search = 1, Image = "유저인터페이스\\tipbox\\tip00029", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"/결성 파티이름 또는 /organize 파티이름으로 파티를 만들 수 있습니다.\\n/탈퇴 또는 /leave로 파티를 탈퇴할 수 있습니다.", "파티를 결성하여 파티리더가 된 경우, 상대 캐릭터를 마우스 오른쪽 버튼으로 클릭하여 \'파티에 초대한다\' 메뉴를 선택하거나 /초대 캐릭터명으로 파티에 초대할 수 있습니다.\\n파티원을 제명하고 싶은 경우 /제명 캐릭터이름 또는 /expel 캐릭터이름으로 ^3b488c자신이 리더인 파티^000000의 파티원을 제명할 수 있습니다.\\n^ff0000※ (Y/N)를 묻지 않으므로, 신중하게 선택하셔야 합니다.^000000\n\t\t<TIPBOX>▶채팅: 파티<INFO>22</INFO></TIPBOX>\n\t\t<TIPBOX>▶모험가 중개소<INFO>70</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[30] = {Title = "길드 시스템", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"/길드 길드이름으로 길드를 만들 수 있습니다. 길드를 만드는데에는 엠펠리움 1개가 소모됩니다.\\n자신이 소속한 길드의 정보는 ALT + G로 볼 수 있습니다.\\n^ff0000길드마스터는 길드를 해체할 수 있습니다. 길드마스터를 제외한 길드원이 없는 상태에서 /해체 길드를 입력하면 길드가 해체 됩니다.\\n※ (Y/N)를 묻지 않으므로, 신중하게 선택하셔야 합니다.^000000\n\t\t<TIPBOX>▶채팅: 길드<INFO>23</INFO></TIPBOX>\n\t\t<TIPBOX>▶길드: 직위<INFO>31</INFO></TIPBOX>\n\t\t<TIPBOX>▶길드: 엠블렘<INFO>68</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[31] = {Title = "길드: 직위", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"길드정보창의 직위설정 항목에서 길드원들의 직위를 설정할 수 있습니다. 길드 직위는 각종 권한을 부여하거나 길드성장에 필요한 경험치 상납을 조절할 수 있습니다.\n\t\t<TIPBOX>▶길드 시스템<INFO>30</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[32] = {Title = "게임 옵션창", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"ESC를 눌러 게임옵션창을 열 수 있습니다.\n\t\t<TIPBOX>▶게임옵션: 게임설정<INFO>33</INFO></TIPBOX>\n\t\t<TIPBOX>▶게임옵션: 단축키<INFO>41</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[33] = {Title = "게임옵션: 게임설정", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"게임을 쾌적하게 플레이 할 수 있도록 여러가지 옵션을 조절할 수 있습니다.\n\t\t<TIPBOX>▶게임설정: 맵 이름 표기<INFO>69</INFO></TIPBOX>\n\t\t<TIPBOX>▶게임설정: 고급설정<INFO>40</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[40] = {Title = "게임설정: 고급설정", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"게임 그래픽을 조절 할 수 있습니다.\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[41] = {Title = "게임옵션: 단축키", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"단축키를 확인하거나 수정할 수 있습니다.\n\t\t<TIPBOX>▶단축키: 매크로<INFO>42</INFO></TIPBOX>\n\t\t<TIPBOX>▶단축키: 스킬바<INFO>43</INFO></TIPBOX>\n\t\t<TIPBOX>▶단축키: 배틀모드<INFO>44</INFO></TIPBOX>\n\t\t<TIPBOX>▶단축키: F1~F12<INFO>45</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[42] = {Title = "단축키: 매크로", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"ALT+M으로 매크로 목록을 편집할 수 있습니다. 각 매크로는 ALT + 1 ~ 0에 대응 됩니다.\n\t\t<TIPBOX>▶게임옵션: 단축키<INFO>41</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[43] = {Title = "단축키: 스킬바", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"스킬바(F12)에 자주 사용하는 스킬 또는 아이템을 등록하여 해당 슬롯을 마우스로 더블클릭하거나 단축카를 눌러서 간편하게 사용할 수 있습니다.\\n첫번째 스킬바는 기본적으로 F1~F9키에 대응하고 게임 옵션> 단축키 설정에서 대응하는 단축키를 변경할 수 있습니다. 2~4번 스킬바의 단축키는 배틀모드에서만 사용 할 수 있습니다.\\n스킬바에 스킬 또는 아이템을 마우스로 선택한 후 드래그하여 칸에 넣을 수 있습니다.\n\t\t<TIPBOX>▶게임옵션: 단축키<INFO>41</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[44] = {Title = "단축키: 배틀모드", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"배틀모드는 채팅기능을 잠궈 스킬바에 등록된 단축키를 키보드에서 사용할 수 있게 해줍니다. /bm으로 On/Off 할 수 있습니다..\\n^ff0000배틀모드에서는 기본적으로 채팅기능이 잠겨있지만 엔터키를 눌러 채팅창을 활성화 시킬 수 있습니다.^000000\n\t\t<TIPBOX>▶게임옵션: 단축키<INFO>41</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[45] = {Title = "단축키: F1~F12", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"F1~F9 : 스킬바에 등록 된 스킬을 사용할 수 있습니다.\\nF10 : 채팅창의 크기를 조절할 수 있습니다.\\nF11 : 기본정보창과 대화창만을 남기고 모든 창을 닫습니다.\\nF12 : 스킬바를 열고 닫을 수 있습니다.\n\t\t<TIPBOX>▶게임옵션: 단축키<INFO>41</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[46] = {Title = "의복 변신 해제", Search = 1, Image = "유저인터페이스\\tipbox\\tip00046", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"\t\t\t의복 변신 효과중에는 전투가 불가능할 수 있습니다. 이런 경우 /환복 , /changedress , /nocosplay 명령어를 이용하여 의복 변신효과를 해제할 수 있습니다.\n\n\t\t\t또한 명령어를 기억하기 어려울 때에는 프론테라의 <NAVI>[의복 효과 해제 서비스 ]<INFO>prontera,80,106,0,101,0</INFO></NAVI>NPC 와의 간단한 대화로 의복 변신 효과를 해제할 수 있습니다.\n\t\t"}
, 
PageEX = {
{EffectNum = 3, Twinkle = 1, StartX = 120, StartY = 158, DistX = 120, DistY = 158, MoveTime = 0}
}
}
, 
[64] = {Title = "인벤토리: 소지아이템#가방", Search = 1, Image = "유저인터페이스\\tipbox\\tip00064", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"획득한 아이템을 소지아이템에 보관할 수 있습니다. 소지아이템 내역은 ALT+E를 눌러 확인할 수 있습니다.\n\t\t\t소지아이템은 한번에 100개, Weight(무게) 만큼 가질 수 있습니다.\n\t\t\t<TIPBOX>▶아이템<INFO>17</INFO></TIPBOX>\n\t\t\t<TIPBOX>▶캐릭터: Weight(무게)<INFO>13</INFO></TIPBOX>\n\t\t\t<TIPBOX>▶인벤토리: 확장<INFO>65</INFO></TIPBOX>\n\t\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[65] = {Title = "인벤토리: 확장", Search = 1, Image = "유저인터페이스\\tipbox\\tip00065", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"인벤토리 확장은 캐릭터가 소지할 수 있는 아이템의 최대 종류수를 확장하는 기능입니다.\n\t\t인벤토리 확장 쿠폰 아이템을 소지한 상태에서 소지 아이템 창 좌측하단 가방 아이콘을 클릭하면 소지 아이템의 최대 종류수를 확장할 수 있습니다.\n\t\t1회당 10개씩 확장되며, 총 10회 확장할 수 있습니다.\n\t\t<TIPBOX>▶인벤토리: 소지아이템<INFO>64</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
, 
PageEX = {
{EffectNum = 3, Twinkle = 1, StartX = 30, StartY = 200, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[66] = {Title = "아이템: 아이템 비교하기", Search = 1, Image = "유저인터페이스\\tipbox\\tip00066", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"장비 아이템을 오른쪽 클릭하면 자신이 현재 장비하고 있는 아이템과 클릭한 아이템을 비교할 수 있습니다.\n\t\t비교하기는 ^3b488c같은 계열의 아이템^000000만 동시에 띄워주며, ^3b488c선택한 계열의 장비 아이템을 장착^000000하고 있을 때만 보여집니다.\n\t\t해당 기능은 ^3b488c인벤토리 하단의 돋보기 아이콘을 클릭하여 ON/OFF^000000할 수 있습니다.\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[67] = {Title = "시스템: 노점 보기", Search = 1, Image = "유저인터페이스\\tipbox\\tip00067", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"채팅창에 ^3b488c/노점보기 또는 /showshop을 입력^000000하여 모든 ^3b488c노점을 보이지 않게 하거나, 보이게^000000 할 수 있습니다.\n\t\t노점이 너무 많이 열려있어 플레이에 방해가 될 경우 노점을 보이지 않게 하여 플레이 하고, 노점에서 필요한 물건을 구매해야 할 경우에는 명령어를 다시 입력해서 노점을 보이게 할 수 있습니다.\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[68] = {Title = "길드: 엠블렘", Search = 1, Image = "유저인터페이스\\tipbox\\tip00068", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"길드정보창에서 각 길드 고유의 엠블렘을 설정할 수 있습니다.\n\t\t길드 엠블렘을 등록할 때는 ^ff0000라그나로크가 설치 된 폴더 아래에 emblem폴더^000000를 만들고 해당 폴더에 가로X세로 ^ff000024X24픽셀의 bmp 또는 gif확장자의 이미지 파일^000000을 넣은 후 길드정보창 오른쪽 편집 버튼을 눌러 emblem폴더 안에 있는 이미지를 선택하여 등록할 수 있습니다.\n\t\t엠블렘 이미지에 투명한 부분을 넣고 싶다면 투명화할 부분을 ^ff0000RGB 255, 0, 255^000000의 핑크색으로 채우면 됩니다.\n\t\t255, 0, 255값의 컬러는 핑크색으로 보이지만 게임내에서는 투명하게 표현됩니다.\n\n\t\t^ff0000※주의사항※ 투명레이어로 투명을 표현할 경우 이미지가 제대로 표시되지 않을 수 있습니다. 투명은 반드시 255, 0, 255로 제작해 주세요.^000000\n\n\t\t<TIPBOX>▶길드 시스템<INFO>30</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[69] = {Title = "게임 설정: 맵 이름 표기", Search = 1, Image = "유저인터페이스\\tipbox\\tip00069", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"주요 맵을 이동할 때 맵 이름이 화면에 표시 되도록 설정할 수 있습니다.\n\t\t(^ff0000※맵 이름 표기 설정을 켜도 맵 컨셉이 따라 맵 이름이 표시되지 않을 수 있습니다.^000000)\n\t\t맵 이름 표시 설정은 ^ff0000게임 옵션창(ESC) → 게임 설정 → 기본 설정 → 이펙트 설정에서 On/Off^000000할 수 있습니다.\n\n\t\t<TIPBOX>▶게임옵션: 게임설정<INFO>33</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[70] = {Title = "모험가 중개소", Search = 1, Image = "유저인터페이스\\tipbox\\tip00070", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"ctrl + Z 또는 채팅창에 /모험가 중개소, /중개소를 입력하여 모험가 중개소 UI를 열 수 있습니다.\n\t\t모험가 중개소에서는 함께 라그나로크를 즐길 파티원을 모집할 수 있습니다.\n\t\t중개소에 등록하기 위해서는 파티장인 상태에서 모험가 중개소 등록 버튼을 눌러 가입 조건을 입력해야하고 다른 사람의 파티에 가입시에는 파티를 모집중인 파티장이 설정한 조건에 맞춰 파티에 가입신청을 할 수 있습니다.\n\n\t\t<TIPBOX>▶파티 시스템<INFO>29</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[900] = {Title = "월드맵#map", Search = 1, Image = "유저인터페이스\\tipbox\\tip00900", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"메뉴 아이콘에서 ^4d4dff\'월드보기\'^000000를 클릭하거나 단축키^4d4dff ctlr + `^000000 를 사용하면 월드맵을 볼 수 있습니다. 또는 미니맵 우측 하단의 버튼을 클릭하여 월드맵을 펼칠 수 있습니다.\n\t\t^663399◈월드맵에서 몬스터 박스를 체크하거나 Tap 키로 필드의 몬스터 레벨 분포를 알 수 있습니다.^000000\n\n\t\t<TIPBOX>▶월드 이동<INFO>901</INFO></TIPBOX>\n\t\t<TIPBOX>▶내비게이션<INFO>902</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[901] = {Title = "월드 이동", Search = 1, Image = "유저인터페이스\\tipbox\\tip00901", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"월드맵에서 이동하고자 하는 지역을 선택하여 ^4d4dff내비게이션^000000을 이용해 직접 이동하거나, ^4d4dff월드 이동권이나 특정 재화^000000를 사용해 즉시 이동할 수 있습니다. 도시간 이동은 카프라와 비공정 같은 공간이동 서비스를 통해 이동할 수 있습니다. 월드맵에서 도시간 이동 가능 경로의 확인이 가능합니다.\n\n\t\t<TIPBOX>▶월드맵<INFO>900</INFO></TIPBOX>\n\t\t<TIPBOX>▶내비게이션<INFO>902</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[902] = {Title = "내비게이션#네비게이션", Search = 1, Image = "유저인터페이스\\tipbox\\tip00902", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"월드맵에서 이동할 지역을 직접 선택하거나, 메뉴 아이콘에서 내비게이션을 활성화 하여 이동하고자 하는 지역의 경로 안내를 받을 수 있습니다.\n필드, 몬스터, 특정 npc 등 내비게이션의 검색을 활용해 원하는 위치를 찾아보세요.\n\n\t\t<TIPBOX>▶월드맵<INFO>900</INFO></TIPBOX>\n\t\t<TIPBOX>▶월드 이동<INFO>901</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[1000] = {Title = "팁박스: 항목", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"팁 목록을 볼 수 있습니다.\\n목록에 등록되어 있지 않은 팁은 검색으로도 찾아볼 수 있으며 새로운 팁은 계속해서 업데이트 됩니다.\n\t\t<TIPBOX>▶캐릭터<INFO>1001</INFO></TIPBOX>\n\t\t<TIPBOX>▶게임 플레이<INFO>1002</INFO></TIPBOX>\n\t\t<TIPBOX>▶커뮤니케이션<INFO>1003</INFO></TIPBOX>\n\t\t<TIPBOX>▶라그나로크 세계<INFO>4000</INFO></TIPBOX>"}
}
, 
[1001] = {Title = "캐릭터", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"<TIPBOX>▶캐릭터: 레벨업<INFO>5</INFO></TIPBOX>\n\t\t<TIPBOX>▶캐릭터: 체력과 정신력<INFO>3</INFO></TIPBOX>\n\t\t<TIPBOX>▶캐릭터: 스테이터스<INFO>6</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[1002] = {Title = "게임 플레이", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"<TIPBOX>▶전투<INFO>14</INFO></TIPBOX>\n\t\t<TIPBOX>▶아이템<INFO>17</INFO></TIPBOX>\n\t\t<TIPBOX>▶게임옵션창<INFO>32</INFO></TIPBOX>\n\t\t<TIPBOX>▶의복 효과 해제<INFO>46</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[1003] = {Title = "커뮤니케이션", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"<TIPBOX>▶채팅<INFO>19</INFO></TIPBOX>\n\t\t<TIPBOX>▶파티<INFO>29</INFO></TIPBOX>\n\t\t<TIPBOX>▶길드<INFO>30</INFO></TIPBOX>\n\t\t\\n<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4000] = {Title = "라그나로크의 세계", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"라그나로크 세계에서 모험의 무대는 크게 인간들이 중심인 땅 미드가르드 대륙,\n\t\t요정과 거인이 존재하는 차원 너머의 땅, 그리고 탐험심 가득한 이들이 찾아낸 미지의 지역 로컬라이징으로 분류됩니다.\n\n\t\t<TIPBOX>▶미드가르드 대륙<INFO>4001</INFO></TIPBOX>\n\t\t<TIPBOX>▶월드맵<INFO>900</INFO></TIPBOX>\n\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4001] = {Title = "미드가르드 대륙", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"미드가르드는 신족과 마족 그리고 인간이 서로의 신념을 위해 싸웠던 성전 이후,\n\t\t살아남은 인간들의 삶의 터전이자 중심대륙입니다.\n\t\t미드가르드 대륙의 동남부 해안선을 따라 주축이 되는 세 개의 나라가 있습니다.\n\n\t\t<TIPBOX>▶룬-미드가츠 왕국<INFO>4004</INFO></TIPBOX>\n\t\t<TIPBOX>▶슈발츠발드 공화국<INFO>4040</INFO></TIPBOX>\n\t\t<TIPBOX>▶아루나펠츠 교국<INFO>4050</INFO></TIPBOX>\n\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4004] = {Title = "룬-미드가츠 왕국", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"성전에 참여했던 영웅들이 세운 국가.\n\t\t영웅의 계보를 잇는 일곱 가문을 중심으로 한 왕정체제이며, 묘르닐 산맥을 기준으로 남부지역을 아우르고 있습니다.\n\t\t왕국민을 위협하는 마물을 대비해 모험가 양성을 장려하고 많은 후원을 하고 있습니다.\n\n\t\t<TIPBOX>▶왕도 프론테라<INFO>4005</INFO></TIPBOX>\n\t\t<TIPBOX>▶마법도시 게펜<INFO>4006</INFO></TIPBOX>\n\t\t<TIPBOX>▶사막도시 모로크<INFO>4007</INFO></TIPBOX>\n\t\t<TIPBOX>▶산악도시 페이욘<INFO>4008</INFO></TIPBOX>\n\t\t<TIPBOX>▶항구도시 알베르타<INFO>4009</INFO></TIPBOX>\n\t\t<TIPBOX>▶국경도시 알데바란<INFO>4010</INFO></TIPBOX>\n\t\t<TIPBOX>▶휴양도시 코모도<INFO>4011</INFO></TIPBOX>\n\t\t<TIPBOX>▶부족마을 움발라<INFO>4012</INFO></TIPBOX>\n\t\t<TIPBOX>▶위성도시 이즈루드<INFO>4013</INFO></TIPBOX>\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4001</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>", "영웅왕가 게오보르그를 주축으로 하여, 하이네, 네리우스, 발터, 리하르트, 위그너, 뢰겐부르그의 일곱 왕가에서 왕위선출을 통해 선정 된 자가 왕위를 계승합니다. 왕가에서는 본격적인 겨울이 오기 전, 마물 퇴치를 위한 왕실 사냥 대회 등을 열기도 합니다."}
}
, 
[4005] = {Title = "왕도 프론테라", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"룬-미드가츠 왕궁의 중심이며, 왕궁이 있는 왕도입니다.\n\t\t묘르닐 산맥을 등지고 앞으로 넓은 필드를 가지고 있기 때문에 다른 지역에 비해 마물의 피해가 적으며 평화롭습니다.\n\t\t주신 오딘을 모시는 대성당과, 기사단이 있어 성직자나 기사가 꿈인 자들이 많이 모입니다.\n\n\t\t<NAVI>[프론테라 대성당]<INFO>prontera,235,315,0,101,0</INFO></NAVI>\n\t\t<NAVI>[크루세이더 집무실]<INFO>prt_cas,248,102,0,101,0</INFO></NAVI>\n\t\t<NAVI>[프론테라 기사단]<INFO>prontera,49,342,0,101,0</INFO></NAVI>\n\t\t<NAVI>[성 카피톨리나 수도원]<INFO>prt_monk,180,205,0,101,0</INFO></NAVI>\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4004</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4006] = {Title = "마법도시 게펜", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"프론테라 서쪽 습지 너머에 위치한 마법사들의 도시. 중앙에 마탑 게펜타워가 있으며 과거 전설의 도시 게페니아가 있던 곳이라는 소문이 있습니다. 종종 마법사들의 축제 게펜 마법대회를 개최합니다.\n\n\t\t<NAVI>[마술사 길드]<INFO>geffen_in,164,124,0,101,0</INFO></NAVI>\n\t\t<NAVI>[게펜 타워 최상층]<INFO>gef_tower,111,27,0,101,0</INFO></NAVI>\n\t\t<NAVI>[게펜 명물 전망대]<INFO>gef_fild07,179,242,0,101,0</INFO></NAVI>\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4004</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4007] = {Title = "사막도시 모로크", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"과거 성전이 끝난 후, 마신 모로크가 미드가르드 대륙에 강림했었습니다. 마검사 타나토스의 활약으로 모로크는 봉인됐으나, 그 봉인의 여파로 일대가 사막이 되었습니다. 오아시스를 중심으로 도시가 형성되었는데, 모로크가 봉인된 지역이라 도시명이 모로크가 되었습니다. 최근 모로크가 봉인을 깨는 바람에 도시와 인근 사막이 다시 파괴되고, 도시는 새로이 재건 되었습니다.\n\n\t\t<NAVI>[도둑 길드]<INFO>moc_prydb1,39,126,0,101,0</INFO></NAVI>\n\t\t<NAVI>[어쌔신 길드]<INFO>moc_fild16,206,290,0,101,0</INFO></NAVI>\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4004</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>", "오아시스를 중심으로 발달한 사막도시 특유의 문화와 함께, 고대에 세워진 수수께끼의 건축물, 구시대의 방어요새, 사막의 위협 개미굴 등이 존재합니다.\n\n\t\t<NAVI>[피라미드]<INFO>moc_ruins,64,162,0,101,0</INFO></NAVI>\n\t\t<NAVI>[스핑크스]<INFO>moc_fild19,105,100,0,101,0</INFO></NAVI>\n\t\t<NAVI>[산다르만 요새]<INFO>cmd_fild08,98,129,0,101,0</INFO></NAVI>\n\t\t<NAVI>[개미굴]<INFO>cmd_fild08,326,351,0,101,0</INFO></NAVI>\n\t\t"}
}
, 
[4008] = {Title = "산악도시 페이욘", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"룬-미드가츠 남동부 산악에 자리잡은 도시. 복잡한 산과 숲으로 인해 외부와 오랫동안 단절된 탓에 상당히 독자적인 문화를 형성하고 있습니다. 사성수의 가호를 받는다거나 신수에 대한 이야기가 많습니다. 뛰어난 명사수와 사냥꾼이 많으며 북쪽 동굴에는 폐가촌이 있습니다.\n\n\t\t<NAVI>[궁수 길드]<INFO>payon_in02,64,71,0,101,0</INFO></NAVI>\n\t\t<NAVI>[페이욘 불상]<INFO>pay_arche,137,31,0,101,0</INFO></NAVI>\n\t\t<NAVI>[폐가촌]<INFO>pay_dun03,155,147,0,101,0</INFO></NAVI>\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4004</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4009] = {Title = "항구도시 알베르타", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"미드가르드의 모든 물길과 연결되는 항구를 가진 도시이며, 상인길드가 위치하고 있기 때문에 상업도시라고도 불립니다. 물길을 통한 미지의 탐험을 즐기는 자들과 돈의 흐름을 읽는 자들이 모이는 곳입니다.\n\n\t\t<NAVI>[상인 길드]<INFO>alberta_in,56,43</INFO></NAVI>\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4004</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4010] = {Title = "국경도시 알데바란", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"묘르닐 산맥 북부, 슈발츠발드와의 경계선 바로 아래에 위치해 있습니다. 중앙에 거대한 시계탑을 중심으로 사방으로 뻗은 운하가 아름다운 도시입니다. 북쪽에 국경검문소가 있습니다.\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4004</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4011] = {Title = "휴양도시 코모도", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"남서부 해안 아래 형성 된 동굴을 끼고 있는 신비한 마을. 휴양을 목적으로 찾아오는 관광객들이 많은 곳이라 지역 명물 상품도 많이 개발되었습니다. 인근에 습지와 밀림, 비밀을 품은 동굴을 가지고 있어 탐험가들에게도 매력적인 장소라고 합니다.\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4004</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4012] = {Title = "부족마을 움발라", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"코모도 북쪽 밀림지대에 있는 작은 부족마을. 문명과 동떨어져 태초의 생활방식 그대로를 고수하며 살아가는 부족들의 마을입니다. 세계수 이그드라실의 뿌리가 닿아있다는 이야기가 있습니다. 대륙 공용어를 사용하지 않으니 주의가 필요합니다.\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4004</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4013] = {Title = "위성도시 이즈루드", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"프론테라 동쪽 해안에 위치한 작은 도시. 수도 프론테라를 보조하기 위해 형성된 위성도시입니다. 모험가 양성을 위한 지원기관 크리투라 학원과 검사 길드가 있으며, 작은 항구도 겸하고 있습니다.\n\n\t\t<NAVI>[검사 길드]<INFO>izlude_in,74,172</INFO></NAVI>\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4004</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4040] = {Title = "슈발츠발드 공화국", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"현자의 도시 유노를 수도로 하는 묘르닐 북부의 나라. 대통령과 의회를 구성한 공화정을 채택하고 있으며, 거대한 기업 레켄베르로 인해 공업이 발달한 나라입니다.\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4001</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[4050] = {Title = "아루나펠츠 교국", Search = 1, Image = "", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"여신 프레이야를 모시는 제정일치의 종교국가입니다. 주신이 오딘인 룬-미드가츠와는 과거 성전 이후 종교적 문제로 마찰이 있어 사이가 좋지 않습니다. 당시 종교적으로 박해받던 이들이 이주를 해 건설한 나라가 아루나펠츠입니다. 수도 라헬에는 거대한 신전 세스룸니르가 있습니다.\n\n\t\t<TIPBOX>▶이전 페이지로<INFO>4001</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[8086] = {Title = "EL1_A17T 진압작전", Search = 0, Image = "유저인터페이스\\tipbox\\tip08086", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"4곳의 위치에 매복한 감시 장치를 무효화한 뒤, 엘류미나의 안내를 받아 EL1_A17T에 접근하십시오."}
, 
PageEX = {
{EffectNum = 4, Twinkle = 1, StartX = 173, StartY = 92, DistX = 0, DistY = 0, MoveTime = 0}
, 
{EffectNum = 4, Twinkle = 1, StartX = 173, StartY = 154, DistX = 0, DistY = 0, MoveTime = 0}
, 
{EffectNum = 4, Twinkle = 1, StartX = 120, StartY = 199, DistX = 0, DistY = 0, MoveTime = 0}
, 
{EffectNum = 4, Twinkle = 1, StartX = 103, StartY = 233, DistX = 0, DistY = 0, MoveTime = 0}
}
}
, 
[8090] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"배틀코어 개조를 위한 신규 실험체 확보 예정. 기존 일반인 대상 이식 실험을 전면 중단한다.\n\n\t\t대통령 접견 대기실로 위장한 실험실에서 수면 가스를 사용해 실험체 의식 제거 후 확보 예정. 수면 가스 및 기타 수면 약물의 양을 조절하여 실험에 영향이 가지 않도록 각별히 주의할 것.\n\n\t\t프로토 배틀코어의 출력을 신규 실험체에 맞추어 기존보다 높게 조정하였으니 이식 시 확인 필요."}
}
, 
[8091] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"1단계 목표는 코어 이식 후 경과 관찰, 실험체 생존 확인. 배틀코어의 출력을 높였으므로 이식 시 해당 실험체에 맞춰 세부 조정 필요.\n\n\t\t목표 시간동안 생존 달성 후 곧바로 2단계로 돌입."}
}
, 
[8092] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"2단계 실험 목표는 생명체의 전투 잠재력을 극한으로 끌어내어 경과를 관찰, 유의미한 데이터를 확보하는 일.\n\n\t\t2단계 실험을 위해 실험체가 배틀코어의 힘을 끌어내 발산할 수 있는 자극적인 환경 제공, 한계치를 측정.\n\n\t\t각 직업군마다 필요한 환경이 다르므로 실험체 프로파일 확인, 각 실험실마다 따로 진행할 것. 실험 종료 후 되도록 빠른 시일 내 보고서 제출 요망.\n\n\t\t연구소장 보르세브"}
}
, 
[8093] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"이식에 성공하더라도 배틀코어의 힘을 사용하는 데 어려움을 겪는 실험체 발생.\n\n\t\t흑혈 반응(주: 검은 피를 토혈하는 현상. 심해질 경우 눈과 귀, 기존 또는 새로 발생한 상처에서도 검은 피가 흐르는 현상)이 일어난 실험체는 회생 불가능함을 확인.\n\n\t\t흑혈 반응이 일어난 뒤 최소 즉시, 최대 반응으로는 5시간 내에 사망 단계에 접어드나, 사망 후 일어나는 특이 현상을 발견, \'사념체화\'라고 명명합니다…"}
}
, 
[8094] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"사망 후 최대 2일 이내 사념체 발생. 첫 번째 사념체는 비교적 명확한 의식을 가지고 있으나, 맹목적으로 한 가지 목표만을 가진다는 특징 발생.\n\n\t\t해당 목표는 사망 전 체험한 자극적 상황의 내용과 관련이 있다는 가설을 세웠으나 추가 실험이 필요합니다.\n\n\t\t첫 번째 사념체의 경우, 생존 당시의 모습과 흡사해 구별이 어려운 경우도 발견, 실험체의 목적 의식이 강할 때 더욱 뚜렷하게 발생합니다."}
}
, 
[8095] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"연구소장 보르세브 박사에 의해 \'실패작\' 이라 명명된 실험체 이그니젬 세니아의 경우, 사념체화가 진행될수록 기존의 목적 의식이 단지 살육에 대한 갈망으로 변화했습니다.\n\n\t\t다만 특정한 세뇌를 가하면 살육에 대한 갈망을 표적 대상을 향해 조정할 수 있는 현상 발생. 해당 현상의 구체적 측정을 위해 보르세브 박사가 직접 관리."}
}
, 
[8096] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"특이한 경우를 제외하면, 사념체화가 진행되어 더 많은 숫자로 분화할수록 초기의 목표를 잃어버리고 그저 살인과 파괴에 집착하는 것으로 보입니다.\n\n\t\t통제를 벗어난 사념체를 다시 통제할 방법은 드물므로 사념체화 진행 시 각별한 관찰 및 격리가 필요합니다."}
}
, 
[8097] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"개조를 거친 유사 이미르의 심장, 즉 배틀 코어를 인간에게 이식하여 지금보다 더 강한 개체로 만들 수 있는가? 이 질문에 대한 답은 물을 필요도 없다. 가능하다.\n\n\t\t그러나 부족한 것은 단 하나뿐이다. 더 살려는 의지. 분노에 물들어 자신을 불살라버리지 않을 정도로 강한 의지! 더, 더 정신력이 강한 개체가 필요하다!"}
}
, 
[8098] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"룬 미드가츠 왕국에서 비밀리에 출발한 비공식 원정대. 살아 돌아오지 않아도 기록에 남지 않는 정예 모험가들.\n\n\t\t이것은 나를 위해 준비된 완벽한 실험체가 아닌가! 다소 무리를 요구하였지만, 레켄베르의 권력으로는 룬 미드가츠의 모 인사와 힘을 합해 대통령조차 알지 못하게 그들을 빼돌릴 수 있었다.\n\n\t\t자, 사랑스런 아이들을 위한 무대는 완벽하다. 이제 최선의 실험으로 그들이 얻을 결말에 최고의 예우를 다해 줄 뿐."}
}
, 
[8099] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"아... 졸려 죽겠다. 이게 뭐냐 진짜 며칠째냐. 집에 가고 싶다. 요즘 오랜만에 집에 가면 우리 집 고양이가 내 얼굴을 못 알아봐서 하악질을 한다.\n\n\t\t무슨 저녁이 있는 삶을 실천한다면서 생체기록이나 수집하고 멀쩡한 집기는 왜 거지같은 걸로 교체하고 진짜 기업이고 뭐고 다 망했으면…… 뭐야 이거 내 일기장 아니잖아 어 이거 왜 안지워져 &#%&@…\n\n\t\t^FF0000해당 연구원은 폐기되었습니다. 폐기 사유 기록용 원문을 보존합니다.^000000"}
}
, 
[8100] = {Title = "실험 보고서", Search = 0, Image = "유저인터페이스\\collection\\Tablet_IL", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"1단계 목표는 심장을 프로토 코어로 교체 후 경과 관찰, 목표 시간동안 생존 달성 후 곧바로 2단계로 돌입.\n\n\t\t2단계 실험 목표는 생명체의 전투 잠재력을 극대화하여 경과를 관찰, 유의미한 데이터를 확보하는 일.\n\n\t\t2단계 실험을 위해 실험체가 배틀코어의 힘을 끌어내 발산할 수 있는 자극적인 환경 제공, 한계치를 측정…\n\n\t\t지나친 자극으로 죽음에 이르지 않도록 각별한 주의가 필요하나, 현재 100%의 사망률, 대안으로 사념체의 의사를…"}
}
, 
[8105] = {Title = "의상 디자인 공모전 투구 조합#모자Mm", Search = 1, Image = "유저인터페이스\\tipbox\\tip08105", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"특별한 인물들의 특별한 아이디어로 찾아온 새로운 투구 조합, 다양한 장소에서 기다리고 있는 투구 장인들을 만나보세요.\n\n\t\t※ 이 페이지는 가이드 용도로, 재료를 획득할 수 있는 방법 중 일부만 안내하고 있습니다.\n\n\t\t^EE0000※ 주의 : 별도 표기가 없을 경우 슬롯이 없는 장비만 조합 재료로 사용됩니다.\n\t\t인벤토리 내에 중복된 아이템이 있을 경우 원치 않는 아이템이 조합에 사용될 수 있으므로 조합에 사용할 아이템만 소지하십시오.^000000\n\n\t\t^006699◈ 의상 디자인 공모전 투구 조합^000000\n\t\t<TIPBOX>M 의상 구미호 가발<INFO>8106</INFO></TIPBOX>\n\t\t<TIPBOX>M 의상 고스 스컬 리본<INFO>8107</INFO></TIPBOX>\n\t\t<TIPBOX>M 의상 골든 바이올렛<INFO>8108</INFO></TIPBOX>\n\n\t\t<TIPBOX><INFO></INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[8106] = {Title = "M 의상 구미호 가발#투구모자조합Mm", Search = 1, Image = "유저인터페이스\\tipbox\\tip08106", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"페이욘의 <NAVI>[로뎃]<INFO>payon,191,130,0,101,0</INFO></NAVI>과 대화\n\n\t\t^EE0000※ 주의 : 별도 표기가 없을 경우 슬롯이 없는 장비만 조합 재료로 사용됩니다.\n\t\t인벤토리 내에 중복된 아이템이 있을 경우 원치 않는 아이템이 조합에 사용될 수 있으므로 조합에 사용할 아이템만 소지하십시오.^000000\n\n\t\t^006699◈ <ITEM>[의상 구미호 가발]<INFO>31707</INFO></ITEM> 조합 재료^000000\n\t\t ▷<ITEM>[여우의 꼬리]<INFO>1022</INFO></ITEM> 777개,\n\t\t 　<NAVI>[구미호]<INFO>NINE_TAIL,0,0,3,-222,1</INFO></NAVI> 드롭\n\t\t ▷<ITEM>[긴 머리카락]<INFO>1020</INFO></ITEM> 300개,\n\t\t 　<NAVI>[소희]<INFO>SOHEE,0,0,3,-222,1</INFO></NAVI> 드롭\n\t\t ▷<ITEM>[빨간색 염료]<INFO>975</INFO></ITEM> 1개\n\t\t ▷<ITEM>[하얀색 염료]<INFO>982</INFO></ITEM> 3개\n\t\t 　모로크 <NAVI>[자바두리한]<INFO>morocc_in,146,99,0,101,0</INFO></NAVI> 제작\n\t\t ▷2,000,000 제니\n\n\t\t<TIPBOX>▶의상 디자인 공모전<INFO>8105</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>", "발랄한 디자인과 아름답고 세련된 미감을 뽐내는 의상 구미호 가발을 제작하기 위해 페이욘의 로뎃에게 가 보자.\n\n\t\t<TIPBOX>▶의상 디자인 공모전<INFO>8105</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[8107] = {Title = "M 의상 고스 스컬 리본#투구모자조합Mm", Search = 1, Image = "유저인터페이스\\tipbox\\tip08107", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"게펜의 <NAVI>[해스]<INFO>geffen,161,81,0,101,0</INFO></NAVI>와 대화\n\n\t\t^EE0000※ 주의 : 별도 표기가 없을 경우 슬롯이 없는 장비만 조합 재료로 사용됩니다.\n\t\t인벤토리 내에 중복된 아이템이 있을 경우 원치 않는 아이템이 조합에 사용될 수 있으므로 조합에 사용할 아이템만 소지하십시오.^000000\n\n\t\t^006699◈ <ITEM>[의상 고스 스컬 리본]<INFO>31708</INFO></ITEM> 조합 재료^000000\n\t\t ▷<ITEM>[해골바가지]<INFO>7005</INFO></ITEM> 666개,\n\t\t 　<NAVI>[배회하는 자]<INFO>WANDER_MAN,0,0,3,-222,1</INFO></NAVI> 드롭\n\t\t ▷<ITEM>[투명한 천조각]<INFO>1059</INFO></ITEM> 300개,\n\t\t 　<NAVI>[위스퍼]<INFO>WHISPER,0,0,3,-222,1</INFO></NAVI> 드롭\n\t\t ▷<ITEM>[리본]<INFO>2208</INFO></ITEM> 1개,\n\t\t 　페이욘 <NAVI>[방어구 상인]<INFO>payon_in01,7,119,0,101,0</INFO></NAVI> 판매\n\t\t ▷<ITEM>[검은색 염료]<INFO>983</INFO></ITEM> 3개\n\t\t 　모로크 <NAVI>[자바두리한]<INFO>morocc_in,146,99,0,101,0</INFO></NAVI> 제작\n\t\t ▷2,000,000 제니\n\n\t\t<TIPBOX>▶의상 디자인 공모전<INFO>8105</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>", "아름다온 해골을 엄선해 기품을 담아 만드는 의상 고스 스컬 리본을 제작하기 위해 게펜의 해스에게 가 보자.\n\n\t\t<TIPBOX>▶의상 디자인 공모전<INFO>8105</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
, 
[8108] = {Title = "M 의상 골든 바이올렛#투구모자조합Mm", Search = 1, Image = "유저인터페이스\\tipbox\\tip08108", 
Imgcoord = {Position = 5, Size = 100}
, 
Page = {"알데바란의 <NAVI>[러글]<INFO>aldebaran,183,159,0,101,0</INFO></NAVI>과 대화\n\n\t\t^EE0000※ 주의 : 별도 표기가 없을 경우 슬롯이 없는 장비만 조합 재료로 사용됩니다.\n\t\t인벤토리 내에 중복된 아이템이 있을 경우 원치 않는 아이템이 조합에 사용될 수 있으므로 조합에 사용할 아이템만 소지하십시오.^000000\n\n\t\t^006699◈ <ITEM>[의상 골든 바이올렛]<INFO>31709</INFO></ITEM> 조합 재료^000000\n\t\t ▷<ITEM>[별의 가루]<INFO>1001</INFO></ITEM> 22개,\n\t\t 　<NAVI>[위스퍼]<INFO>WHISPER,0,0,3,-222,1</INFO></NAVI> 드롭\n\t\t ▷<ITEM>[매우 단단한 껍질]<INFO>943</INFO></ITEM> 50개,\n\t\t 　<NAVI>[바돈]<INFO>VADON,0,0,3,-222,1</INFO></NAVI> 드롭\n\t\t ▷<ITEM>[부드러운 털]<INFO>949</INFO></ITEM> 300개,\n\t\t 　<NAVI>[루나틱]<INFO>LUNATIC,0,0,3,-222,1</INFO></NAVI> 드롭\n\t\t ▷<ITEM>[보라색 염료]<INFO>981</INFO></ITEM> 3개\n\t\t 　모로크 <NAVI>[자바두리한]<INFO>morocc_in,146,99,0,101,0</INFO></NAVI> 제작\n\t\t ▷2,000,000 제니\n\n\t\t<TIPBOX>▶의상 디자인 공모전<INFO>8105</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>", "모두의 시선을 모을 만큼 화려하고 아름다운 의상 골든 바이올렛을 제작하기 위해 알데바란의 러글에게 가 보자.\n\n\t\t<TIPBOX>▶의상 디자인 공모전<INFO>8105</INFO></TIPBOX>\n\t\t<TIPBOX>▶팁 리스트 보기<INFO>1000</INFO></TIPBOX>"}
}
}
main = function()
  -- function num : 0_0
  for DocumentNum,INFO in pairs(tbl) do
    result = AddTip(DocumentNum, INFO.Title, INFO.Search, INFO.Image)
    if not result then
      return false, msg
    end
    result = AddImgcoord(DocumentNum, (INFO.Imgcoord).Position, (INFO.Imgcoord).Size)
    if not result then
      return false, msg
    end
    if not INFO.PageEX then
      result = AddPageEx(DocumentNum, -1, 0, 0, 0, 0, 0, 0, 0)
      if not result then
        return false, msg
      end
    else
      for k,v in pairs(INFO.PageEX) do
        result = AddPageEx(DocumentNum, v.EffectNum, v.Twinkle, v.StartX, v.StartY, v.DistX, v.DistY, v.MoveTime)
        if not result then
          return false, msg
        end
      end
    end
    do
      for k,v in pairs(INFO.Page) do
        result = AddPage(DocumentNum, v)
        if not result then
          return false, msg
        end
      end
      do
        -- DECOMPILER ERROR at PC98: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  return true, "good"
end


