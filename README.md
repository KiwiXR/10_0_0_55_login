# 10_0_0_55_login

![maintenance-status](https://img.shields.io/badge/maintenance-deprecated-red.svg)

本仓库已被抛弃，请直接使用更新后的上游 https://github.com/BITNP/bitsrun

---

登录 10.0.0.55

## 使用命令行传入参数

```bash
python 10_0_0_55.py login --username 1120xxxxxx --password xxxxxxxxx
python 10_0_0_55.py logout --username 1120xxxxxx --password xxxxxxxxx
```

## 使用配置文件
配置文件路径: `./bit-user.json`，即与 `10_0_0_55.py` 在同一个目录下，可参考[此版本仓库](https://github.com/KiwiXR/10_0_0_55_login/blob/77f8ea2ea8c88508113eb8666ea4488becdd7ca3/bit-user.json)
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
如上准备好配置文件

运行 `reconnect.bat`

## 开机自启
将 `reconnect.bat` 的**快捷方式**添加到 `启动` 文件夹中即可，其路径为：
```text
%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```
