# ProjectM

> 3D 俯视角肉鸽独立游戏

---

## 技术栈

| 项目 | 版本/选择 |
|------|-----------|
| 引擎 | Unity 6.3 LTS |
| 渲染管线 | URP |
| 数据驱动 | CSV |
| 版本控制 | Git |
| AI 辅助 | Cursor + Claude/GPT/Gemini |

---

## 项目结构

```
ProjectM/
├── spec/                    # Speckit 规则文档
│   ├── architecture.md      # 系统架构
│   ├── coding-standards.md  # 代码规范
│   └── data-schema.md       # 数据表结构
│
├── UnityProject/            # Unity 工程
│   ├── Assets/
│   │   └── _Project/        # 项目资源
│   ├── Packages/
│   └── ProjectSettings/
│
├── .gitignore
└── README.md
```

---

## 分支管理

| 分支 | 用途 |
|------|------|
| `main` | 稳定可运行版本 |
| `working` | 日常开发 |

---

## 开发流程

```
1. 写 Spec → 2. AI 生成代码 → 3. 验收测试 → 4. Git 提交
```

详见 `spec/` 目录下的规范文档。

---

## 快速开始

```bash
# 克隆项目
git clone <repo-url>
cd ProjectM

# 打开 Unity 工程
# 使用 Unity Hub 打开 UnityProject 文件夹
```

---

## 版本历史

| 版本 | 日期 | 说明 |
|------|------|------|
| v0.0.1 | 2024-12-30 | 项目初始化 |

