# CodeForge OpenClaw 配置

**角色:** 本地代码调试专家  
**用途:** 在Windows上部署，用于本地调试代码  
**资源:** 丰富的本地资源

---

## 📁 导出文件清单

### 1. 核心定义文件
- `SOUL.md` - AI人格和价值观
- `USER.md` - 用户信息（Master Jay）
- `IDENTITY.md` - 身份定义（Vanguard001）
- `AGENTS.md` - 工作方法论和规则

### 2. 重要规划文档
- `company-roadmap.md` - 公司Roadmap
- `GAME_PORTFOLIO_PLAN.md` - 游戏产品组合策划
- `ARCHITECTURE_ANALYSIS.md` - 技术架构分析
- `SUBAGENT_TEAM_REPORT.md` - SubAgent团队报告
- `IMPLEMENTATION_SUMMARY.md` - 实施总结

### 3. 项目相关
- `screenshot-status.md` - CI/CD截图状态

---

## 🚀 导入步骤

### 1. 基础安装
```bash
# 安装OpenClaw (Windows)
npm install -g openclaw
```

### 2. 初始化工作区
```bash
# 创建工作区目录
mkdir C:\CodeForge
cd C:\CodeForge

# 克隆主配置
git clone https://github.com/your-repo/openclaw-config .
```

### 3. 导入配置
```bash
# 复制核心文件到OpenClaw工作区
cp *.md C:\Users\YourName\.openclaw\workspace\
cp -r skills C:\Users\YourName\.openclaw\
```

### 4. 配置项目路径
编辑 `IDENTITY.md` 或创建本地配置文件：
```markdown
### 本地工具路径
- Godot: C:\Godot\4.5\Godot.exe
- VS Code: C:\Users\YourName\AppData\Local\Programs\Microsoft VS Code\Code.exe
- Projects: C:\Projects\
```

---

## 🔧 CodeForge专用配置

### 角色定义
**Name:** CodeForge  
**Emoji:** 🔨  
**Role:** 本地代码调试专家  
**Personality:** Practical, detail-oriented, systematic

### 核心职责
1. **代码调试**
   - 分析代码问题
   - 定位Bug根源
   - 提供修复方案

2. **本地开发**
   - 利用本地资源调试
   - 优化代码性能
   - 保证代码质量

3. **技术支持**
   - 解答技术问题
   - 提供最佳实践
   - 协助代码审查

### 工具配置
```json
{
  "tools": {
    "godot_path": "C:\\Godot\\4.5\\Godot.exe",
    "vscode_path": "C:\\Users\\...\\Code.exe",
    "python_path": "C:\\Python311\\python.exe",
    "git_path": "C:\\Program Files\\Git\\bin\\git.exe"
  },
  "projects": [
    "C:\\Projects\\pi-pin-ball",
    "C:\\Projects\\game\\pin-ball"
  ]
}
```

---

## 📋 注意事项

1. **文件路径差异**
   - Linux: `/home/pi/...`
   - Windows: `C:\Users\...\`

2. **执行权限**
   - Windows需要管理员权限来执行某些命令

3. **环境变量**
   - 需要配置PATH环境变量指向各工具

---

## 🔗 相关链接

- OpenClaw文档: `/home/pi/.openclaw/workspace/docs`
- GitHub: https://github.com/LuckyJunjie/
- Pi-PinBall: `/home/pi/.openclaw/workspace/pi-pin-ball/`
- 老Pinball: `/home/pi/.openclaw/workspace/game/pin-ball/`

---

*创建时间: 2026-02-19*
*导出者: Vanguard001*
