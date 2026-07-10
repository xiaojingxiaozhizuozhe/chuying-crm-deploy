# 雏鹰少年CRM系统 - 一键部署

## 使用步骤

### 1. 安装 Node.js 20+

**Windows:**
- 下载: https://nodejs.org/dist/v20.18.0/node-v20.18.0-x64.msi
- 双击安装，一路 Next

**Mac:**
- 下载: https://nodejs.org/dist/v20.18.0/node-v20.18.0.pkg
- 双击安装

### 2. 下载本项目

点击右上角绿色 **Code** 按钮 → **Download ZIP**

解压到任意文件夹（建议英文路径）

### 3. 启动

**Windows:** 双击 `START.bat`

**Mac:** 双击 `START.command`

首次启动会安装数据库驱动（约30秒，纯JavaScript无需编译）

### 4. 登录

浏览器自动打开: http://localhost:3000

| 账号 | 密码 |
|------|------|
| admin@chuying.org | Cying@Admin2025 |

---

## 常见问题

### "Node.js not installed"
没有安装Node.js，或安装后未重启电脑。安装后**重启电脑**再试。

### 启动后浏览器打不开
手动访问: http://localhost:3000

### 关闭CRM
关闭命令行窗口即可

---

## 技术参数

- 端口: 3000
- 数据库: SQLite (本地文件 chuying-crm.db)
- 账号: 预置5个（含管理员）
