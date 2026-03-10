@echo off
REM CodeForge OpenClaw 导入脚本
REM 用于在Windows上部署OpenClaw实例

echo ====================================
echo  CodeForge OpenClaw 配置导入
echo ====================================
echo.
set "SOURCE_DIR=%~dp0"
set "WORKSPACE_DIR=%USERPROFILE%\.openclaw\workspace"

echo [1/4] 检查源文件...
if exist "%SOURCE_DIR%SOUL.md" (
    echo   ✓ SOUL.md 存在
) else (
    echo   ✗ SOUL.md 缺失！
    exit /b 1
)

echo.
echo [2/4] 创建工作区目录...
if not exist "%WORKSPACE_DIR%" mkdir "%WORKSPACE_DIR%"

echo.
echo [3/4] 复制核心文件...
copy "%SOURCE_DIR%SOUL.md" "%WORKSPACE_DIR%\" >nul
copy "%SOURCE_DIR%USER.md" "%WORKSPACE_DIR%\" >nul
copy "%SOURCE_DIR%IDENTITY.md" "%WORKSPACE_DIR%\" >nul
copy "%SOURCE_DIR%AGENTS.md" "%WORKSPACE_DIR%\" >nul
copy "%SOURCE_DIR%company-roadmap.md" "%WORKSPACE_DIR%\" >nul
copy "%SOURCE_DIR%GAME_PORTFOLIO_PLAN.md" "%WORKSPACE_DIR%\" >nul
copy "%SOURCE_DIR%ARCHITECTURE_ANALYSIS.md" "%WORKSPACE_DIR%\" >nul
copy "%SOURCE_DIR%SUBAGENT_TEAM_REPORT.md" "%WORKSPACE_DIR%\" >nul
copy "%SOURCE_DIR%IMPLEMENTATION_SUMMARY.md" "%WORKSPACE_DIR%\" >nul
copy "%SOURCE_DIR%CodeForge_CONFIG.md" "%WORKSPACE_DIR%\" >nul
echo   ✓ 所有文件已复制

echo.
echo [4/4] 验证安装...
echo.
echo 已导入的文件:
dir "%WORKSPACE_DIR%\*.md" /b 2>nul | findstr /r ".*" >nul
if %errorlevel% equ 0 (
    dir "%WORKSPACE_DIR%\*.md" /b
)

echo.
echo ====================================
echo  导入完成！
echo ====================================
echo.
echo 下一步:
echo 1. 安装OpenClaw: npm install -g openclaw
echo 2. 启动OpenClaw: openclaw start
echo 3. 配置CodeForge角色
echo.
pause
