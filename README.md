# OpenClaw 配置导出包 - CodeForge Edition

## 📦 概述

这是一个完整的OpenClaw配置导出包，用于在Windows上部署CodeForge专用OpenClaw实例。

**用途:** 本地代码调试和开发
**角色:** CodeForge (本地代码调试专家)
**资源:** 丰富的本地资源（Godot, VS Code等）

---

## 📁 文件清单

### 核心定义 (必须)
```
SOUL.md          - AI人格和价值观
USER.md          - 用户信息
IDENTITY.md      - 身份定义
AGENTS.md        - 工作方法论
```

### 重要规划 (建议)
```
company-roadmap.md           - 公司Roadmap
GAME_PORTFOLIO_PLAN.md      - 游戏产品组合策划
ARCHITECTURE_ANALYSIS.md    - 技术架构分析
SUBAGENT_TEAM_REPORT.md    - SubAgent团队报告
IMPLEMENTATION_SUMMARY.md  - 实施总结
```

### 配置和工具
```
CodeForge_CONFIG.md  - CodeForge专用配置说明
import.bat           - Windows导入脚本
EXPORT_MANIFEST.txt  - 导出清单
```

---

## 🚀 快速开始

### 步骤1: 复制文件

```bash
# 方法1: 使用Git克隆
cd C:\CodeForge
git clone https://your-repo/openclaw-config .

# 方法2: 直接复制
copy *.md C:\Users\YourName\.openclaw\workspace\
```

### 步骤2: 运行导入脚本

```bash
# 以管理员身份运行
import.bat
```

### 步骤3: 配置工具路径

编辑 `CodeForge_CONFIG.md` 或 `IDENTITY.md`，配置本地工具路径：

```markdown
### 本地工具路径
- Godot: C:\Godot\4.5\Godot.exe
- VS Code: C:\Users\...\Code.exe
- Projects: C:\Projects\
```

---

## 🎯 CodeForge角色定位

### 核心能力
1. **代码调试**
   - 分析Bug和错误
   - 提供修复方案
   - 优化代码性能

2. **本地开发**
   - 利用Godot编辑器
   - 使用VS Code调试
   - 快速验证修改

3. **技术咨询**
   - 解答技术问题
   - 提供最佳实践
   - 代码审查

### 工作风格
- **Practical** - 注重实用性
- **Detail-oriented** - 关注细节
- **Systematic** - 系统化方法

---

## 📂 目录结构

```
openclaw-identify/
├── SOUL.md                    # AI人格定义
├── USER.md                    # 用户信息
├── IDENTITY.md               # 身份定义
├── AGENTS.md                 # 工作方法论
├── company-roadmap.md        # 公司Roadmap
├── GAME_PORTFOLIO_PLAN.md   # 游戏策划
├── ARCHITECTURE_ANALYSIS.md # 架构分析
├── SUBAGENT_TEAM_REPORT.md  # 团队报告
├── IMPLEMENTATION_SUMMARY.md # 实施总结
├── CodeForge_CONFIG.md       # CodeForge配置说明
├── import.bat               # Windows导入脚本
└── EXPORT_MANIFEST.txt     # 导出清单
```

---

## 🔧 自定义配置

### 添加项目路径

在 `IDENTITY.md` 或创建新文件 `projects.md`：

```markdown
## 本地项目

### Godot项目
- PI-PinBall: C:\Projects\pi-pin-ball
- 老Pinball: C:\Projects\game\pin-ball

### 工具路径
- Godot: C:\Godot\4.5\Godot.exe
- VS Code: C:\...\Code.exe
```

### 调整角色行为

在 `IDENTITY.md` 中调整CodeForge的行为特征：

```markdown
### 工作偏好
- 详细分析: 高
- 代码质量: 严格
- 调试频率: 按需
```

---

## ⚠️ 注意事项

1. **路径格式**
   - Windows使用反斜杠: `C:\Path\To\File`
   - 转义序列: `\\` 或使用原始字符串

2. **执行权限**
   - 某些操作需要管理员权限
   - 建议以管理员身份运行终端

3. **环境变量**
   - 配置PATH环境变量
   - 确保工具可执行

---

## 📖 相关文档

- OpenClaw主文档: `/home/pi/.openclaw/workspace/docs`
- PI-PinBall项目: `/home/pi/.openclaw/workspace/pi-pin-ball/`
- 老Pinball项目: `/home/pi/.openclaw/workspace/game/pin-ball/`

---

## 🤝 支持

如有问题，请联系Master Jay或查看：
- OpenClaw文档
- GitHub Issues
- Feishu Wiki

---

*创建时间: 2026-02-19*
*导出者: Vanguard001*
*版本: 1.0*
