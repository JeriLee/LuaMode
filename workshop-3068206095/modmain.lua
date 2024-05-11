GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})  --GLOBAL相关照抄


--[[-----===============
mod简要说明
anim 文件夹 放置动画文件
images 主要用来放小图片 物品栏配方小地图支兰兰之类的小贴图
scripts  --代码文件夹 里面才是主要代码
modinfo --mod介绍 版本兼容性 mod设置之类的
modmain --加载代码文件 一般命名 配方之类的也写在这里

exported --动画原材质文件夹 打包后的动画会到anim文件夹
目前里面有一下几个
maozi ----帽子的材质 只需要四张 账面 侧面 背面 以及最后使用老做放地上的图片
yifu   ---衣服的材质 这里用的是干放木甲 对着图片改吧 这个有一丢丢多

wuqi
swap_wuqi   这里是武器的两个材质 前面是放地上的 后者是那手里的 一般是分开做的

PS:所有的图片的大小都可以自定义！！ 注意调整中心点就可以

]]
PrefabFiles = {
	-- 注册文件 注意这里是文件的名字 也就是scripts/prefabs/xx.lua 里面的xx
	"wigfridarmor", -- 衣服（也就是护甲）
}

Assets = {	
----这里一般加载小地图 或者别的动画文件 没有可以不用写
}

--命名相关
--yifu  注意命名的时候必须是大写
STRINGS.NAMES.WIGFRIDARMOR= "女武神战甲"    --名字
STRINGS.RECIPE_DESC.WIGFRIDARMOR = "女武神要有像样的战甲，我看石头和金子就很合适嘛"  --配方上面的描述
STRINGS.CHARACTERS.GENERIC.DESCRIBE.WIGFRIDARMOR = "他很适合女武神."  --人物检查的描述


--配方相关
--衣服的
AddRecipe("wigfridarmor",  --添加物品的配方
{Ingredient("goldnugget", 2),Ingredient("rocks", 2)},  --材料
RECIPETABS.WAR,  TECH.NONE,  --制作栏和解锁的科技（这里是战斗栏，需要科学一本）
nil, nil, nil, nil, "valkyrie",  --是否有placer  是否有放置的间隔  科技锁  制作的数量（改成2就可以一次做两个） 需要的标签（比如女武神的配方需要女武神的自有标签才可以看得到）
"images/inventoryimages/wigfridarmor.xml",  --配方的贴图（跟物品栏使用同一个贴图）
"wigfridarmor.tex")
