# 10_0_0_55_login

登录 10.0.0.55

## 使用命令行传入参数

```bash
python 10_0_0_55.py login --username 1120xxxxxx --password xxxxxxxxx
python 10_0_0_55.py logout --username 1120xxxxxx --password xxxxxxxxx
```

## 使用配置文件
配置文件路径: `./bit-user.json`，即与`10_0_0_55.py`在同一个目录下
```json
{
    "username": "1120xxxxxx",
    "password": "xxxx"
}
```
```bash
python 10_0_0_55.py login
python 10_0_0_55.py logout
```

## 定时检测重连
运行`reconnect.bat`

## 开机自启
将`reconnect.bat`的**快捷方式**添加到`启动`文件夹中即可，其路径为：
```text
%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```
