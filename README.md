# CloudflareUPSpeed
🌩 Cloudflare懒人全自动访问加速
# 注意事项
- 基于Cloudflare减速器的庞大IP库，实现本地的自动测速以及Hosts修改用于保障网页访问速度
- 对移动网络以及可能出现的被X现象(可能)有奇效


## 需要注意以下几点:
- 1、优选IP具有时效性，可能会出现一段时间后速度变慢以及无法访问的情况，可以重新运行
- 2、因为需要修改Hosts文件，因为默认打开需要管理员权限
- 3、修改Hosts可能会存在国产杀(du)毒(liu)软件提醒，允许即可
- 4、测速完成后文件夹内会留有result.csv文件，可自行用记事本打开，可手动修改Hosts
- 5、程序仅限Windows端可用，其他设备可在路由器端修改Hosts，IP看第四点说明
- 6、如果本来访问没有问题不建议使用，CF国内访问速度一般
- 7、如果晚上等高峰上网时段测试数据可能存在不准确现象，高峰时期出口宽带拥挤，日常速度慢
- 8、各地网络情况不同，可能有些地区使用之后依旧速度较慢，均为正常现象

# 使用方法
- 修改domain.txt内域名，注意需要为根域名，运行其中的"加速域名访问.bat，会自动将www以及根域名Hosts修改
- 注意:如果当然IP效果较差或者一段时间速度变慢，直接再次运行即可，不需要手动删除原Hosts
---
- 如果需要删除论坛相关Hosts，运行"恢复初始设置.bat即可
- 本程序只会修改设置域名相关Hosts，以防万一会自动备份Hosts文件
- 如果遇到使用问题可以自行前往C:\Windows\System32\drivers\etc\hosts恢复
- 备份位置：C:\Windows\System32\drivers\etc\hosts.bak\hosts
---
# 致谢
- 测速部分来自于:https://github.com/XIU2/CloudflareSpeedTest
