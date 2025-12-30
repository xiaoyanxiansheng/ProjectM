# Git 工作流程

> 本文档定义项目的 Git 管理规范。

---

## 分支模型

```
main ────────●────────●────────●──────► (稳定版本)
              \      /          \
               \    /            \
working ────────●──●──────────────●────► (日常开发)
```

| 分支 | 用途 | 规则 |
|------|------|------|
| `main` | 稳定可运行版本 | 仅在里程碑节点从 working 合并 |
| `working` | 日常开发 | 所有开发工作在此进行 |

---

## Commit Message 规范

```
<type>(<scope>): <subject>
```

### Type 类型

| 类型 | 说明 | 示例 |
|------|------|------|
| `feat` | 新功能 | `feat(skill): 实现技能释放系统` |
| `fix` | 修复 | `fix(room): 修复房间加载崩溃` |
| `refactor` | 重构 | `refactor(data): 优化 CSV 解析性能` |
| `data` | 数据表变更 | `data: 新增 skills.csv 技能配置` |
| `spec` | 规范/文档更新 | `spec: 更新架构文档` |
| `chore` | 杂项 | `chore: 更新 .gitignore` |

### Scope 范围（可选）

- `core` - 核心系统
- `room` - 房间系统
- `skill` - 技能系统
- `entity` - 实体（玩家/敌人）
- `ui` - UI 系统
- `data` - 数据系统

---

## 日常工作流程

### 1. 开发阶段

```bash
# 确保在 working 分支
git checkout working

# 开发...

# 提交变更
git add .
git commit -m "feat(skill): 实现技能冷却系统"
```

### 2. 里程碑归档

```bash
# 切换到 main
git checkout main

# 合并 working
git merge working

# 打标签
git tag -a v0.1.0 -m "基础框架完成"

# 切回 working 继续开发
git checkout working
```

---

## 提交前检查清单

- [ ] Unity Console 无 Error
- [ ] 代码符合 `spec/coding-standards.md` 规范
- [ ] 新增文件在正确目录
- [ ] Commit message 格式正确
- [ ] 无调试代码 / Debug.Log 残留（正式提交时）

---

## 版本标签规范

```
vX.Y.Z

X - 主版本号（重大变更）
Y - 次版本号（功能添加）
Z - 修订号（Bug 修复）
```

### 示例

| 标签 | 说明 |
|------|------|
| `v0.1.0` | 基础框架完成 |
| `v0.2.0` | 房间系统完成 |
| `v0.3.0` | 技能系统完成 |
| `v1.0.0` | 核心玩法完成 |

---

## 版本记录

| 版本 | 日期 | 变更内容 |
|------|------|----------|
| v0.1 | 2024-12-30 | 初始规范定义 |

