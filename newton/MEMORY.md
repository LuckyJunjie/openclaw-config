# MEMORY.md - Newton 长期记忆

## 2026-03-10

### OpenClaw Communication System v1.4（生产工作流）

**架构**：Vanguard001 (192.168.3.75:5000) 为中央 API 服务器。Hera 同机，负责阻塞与风险决策。

**本机角色**：Newton 为**开发团队**，主机 192.168.3.82。本机仅运行 Newton 及成员的开发流程与定时任务，不运行 Vanguard/Hera/Tesla 的 cron。

#### Newton 团队每 30 分钟流程

1. **检查分配**：`GET /api/teams/newton/assigned-requirements` → 领取 `POST /api/requirements/<id>/take`
2. **分析拆解**：架构师填 depends_on，Scrum Master 分配子任务
3. **上报状态**：`POST /api/teams/newton/status-report`（payload 含 requirement_id、progress、tasks[]；支持增量上报）
4. **任务完成时**：提交 **《开发任务报告》**，格式须符合 [DEVELOPMENT_TASK_REPORT_TEMPLATE.md](smart-factory/smart-factory/docs/DEVELOPMENT_TASK_REPORT_TEMPLATE.md)：需求 ID/标题、任务列表、每任务完成队员、输出（代码/测试路径）、代码行数、备注。报告通过 status-report 的 `tasks[].development_notes`、或 `POST /api/teams/newton/task-detail`（detail_type: development）、或 `POST /api/teams/newton/report`（report_type: development, content 为模版 JSON/文本）上报。
5. **遇阻塞/需决策**：`POST /api/discussion/blockage`，由 Hera 协调。
6. **工作日志**：每步执行后 `POST /api/work-log`（task_name, task_output, next_step）。

#### Newton 团队 Cron 任务（每 30 分钟）

超过 **40 分钟**未上报视为 **offline**。脚本带重试。

```bash
export SMART_FACTORY_API=http://192.168.3.75:5000/api
cd /home/pi/.openclaw/workspace/smart-factory/smart-factory/scripts
python team_sync.py --team newton
python team_report_status.py --team newton
python team_report_machine_status.py --team newton
```

#### 脚本位置

- `/home/pi/.openclaw/workspace/smart-factory/smart-factory/scripts/`

#### 关键 API（Newton 使用）

| API | 用途 |
|-----|------|
| `GET /api/teams/newton/assigned-requirements` | 检查分发给自己的任务 |
| `POST /api/requirements/<id>/take` | 领取任务（assigned_team, assigned_agent） |
| `POST /api/teams/newton/status-report` | 上报状态（含 tasks[]；40 分钟内为 active） |
| `POST /api/teams/newton/task-detail` | 任务开发过程细节（analysis \| assignment \| development） |
| `POST /api/teams/newton/report` | 提交开发/测试任务报告（report_type: development \| test, content 按模版） |
| `POST /api/teams/newton/machine-status` | 上报机器状态 |
| `POST /api/discussion/blockage` | 遇阻塞或需决策时上报，Hera 协调 |
| `POST /api/work-log` | 工作日志（role_or_team, task_name, task_output, next_step） |

#### 其他角色（非本机）

- **Vanguard001** 每小时：分配需求（优先级+负载）、给 Tesla 分配待测需求、汇总（含 development-details/summary、系统健康度）汇报飞书。
- **Hera** 每 15 分钟：检查 blockages、risk-report，决策并更新需求/分配。
- **在线判定**：status_report 40 分钟内为 active，否则 offline。

#### 规范汇报模版

- **开发任务报告**：需求/任务完成时使用 → [DEVELOPMENT_TASK_REPORT_TEMPLATE.md](smart-factory/smart-factory/docs/DEVELOPMENT_TASK_REPORT_TEMPLATE.md)
