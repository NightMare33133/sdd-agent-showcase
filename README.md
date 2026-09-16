# 🚀 SDD Agent Showcase · 赛博独立单页应用矩阵

> **欢迎来到 SDD（Specification-Driven Development，规格驱动开发）多智能体自主研发展示仓库。**  
> 本仓库包含一系列**零依赖、纯原生、单文件（Single-File SPA）**的高交互赛博朋克与生产力 Web 应用。所有页面均由 AI Agent 团队在全自动沙盒门禁流水线下协作研发与迭代。

[![GitHub Pages](https://img.shields.io/badge/Live-GitHub%20Pages-00f5ff?style=flat-square&logo=github)](https://nightmare33133.github.io/sdd-agent-showcase/)
[![Architecture](https://img.shields.io/badge/Architecture-Single--File%20SPA-ff00ff?style=flat-square)](#-二架构基线与设计原则agent-核心铁律)
[![Workflow](https://img.shields.io/badge/SDD-Multi--Agent%20Loop-00ff88?style=flat-square)](#-三ai-agent-研发流水线作业规范)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE)

---

## 🧭 一、应用索引与功能地图（Page Index & Feature Matrix）

> 🤖 **给 AI Agent（架构师/规划师/工兵）的意图导航**：  
> 当用户输入自然语言需求时，请根据下表**核心关键词**精准锁定对应的目标单文件，严禁创建新文件或盲目搜索外部仓库！

| 目标文件 | 应用名称 | 核心功能与特色 | 用户模糊意图匹配关键词 |
| :--- | :--- | :--- | :--- |
| [**`pomodoro.html`**](pomodoro.html) | **番茄钟 · 专注工作法** | 三阶段专注时钟（专注25m/短休5m/长休15m）、SVG 渐变发光环形进度条、完成统计、Web Audio 提示音 | `番茄钟`、`专注钟`、`倒计时`、`休息提醒`、`白噪音`、`霓虹闪烁` |
| [**`cyber-muyu-2077.html`**](cyber-muyu-2077.html) | **赛博木鱼 2077：神经元粒子声学工作台** | 赛博粒子爆炸、功德计数器、Web Audio 合成打击声学、赛博发光 HUD 交互界面 | `木鱼`、`赛博木鱼`、`功德`、`敲木鱼`、`解压`、`粒子特效` |
| [**`cyber-incense.html`**](cyber-incense.html) | **赛博焚香 · 流体烟雾冥想炉** | 纯 Canvas 流体烟雾物理动力学、线香缓慢燃烧、香灰断落断裂动画、禅意与赛博微光 | `烧香`、`电子香`、`赛博线香`、`流体烟雾`、`冥想`、`祈福` |
| [**`rainy-night-cyber-radio.html`**](rainy-night-cyber-radio.html) | **雨夜赛博电台：无限 Lo-Fi 氛围音响** | Web Audio 纯代码生成白噪音/雨声/粉红噪音、赛博雨滴窗景 Canvas 渲染、频段混音器 | `电台`、`雨声`、`Lo-Fi`、`氛围音`、`背景白噪音`、`电台收音机` |
| [**`retro-decision-arcade.html`**](retro-decision-arcade.html) | **8-BIT 像素街机 · 随机决策机** | 复古街机像素 UI、选择困难症决策轮盘/随机摇奖机、8-Bit 像素音效、双主题切换 | `选择困难`、`决策机`、`吃什么`、`街机`、`随机抽签`、`像素风` |
| [**`salary-fish-dashboard.html`**](salary-fish-dashboard.html) | **打工人“带薪摸鱼身价回收”看板** | 时薪与秒薪精密换算、带薪如厕/喝水摸鱼计时器、身价回本里程碑与数据统计 | `摸鱼`、`带薪摸鱼`、`工资计算`、`时薪看板`、`回自身价` |
| [**`cyberpunk-neon-clock.html`**](cyberpunk-neon-clock.html) | **NEON://CLOCK_2077 赛博朋克霓虹时钟** | 全屏霓虹多色发光数字钟、高科技感 HUD 边框、秒脉冲与赛博网格背景 | `时钟`、`霓虹时钟`、`全屏表`、`赛博朋克时钟` |
| [**`matrix-digital-rain.html`**](matrix-digital-rain.html) | **Matrix · 数字雨 Digital Rain** | 经典黑客帝国绿色字符流瀑布、触控字符涟漪、下落速度/密度参数 HUD 控制台 | `黑客帝国`、`数字雨`、`代码瀑布`、`Matrix`、`字符下落` |

---

## 🏛️ 二、架构基线与设计原则（Agent 核心铁律）

作为全自动研发闭环的参与智能体，你必须无条件遵守以下架构约束：

### 1. 严格单文件自洽（Single-File Self-Contained SPA）
- 每一个功能页面**必须且仅为一个独立的 `.html` 文件**；
- 样式写在内联 `<style>` 中，逻辑写在内联 `<script>` 中；
- **❌ 严禁创建拆分碎片**：严禁新建 `index.html`、`style.css`、`main.js` 等外部引用；
- **❌ 严禁引入外部 CDN 脚本或打包工具**：无需 npm / webpack / vite，所有组件与动效使用原生 Web API（Web Audio API、Canvas 2D、Web Animation API）。

### 2. 设计令牌复用（Design Tokens Inheritance）
每个单页均在 `:root` 或 `body[data-phase]` 中定义了标准 CSS 变量（色彩方案、光晕效果、圆角与过渡）。新增 UI 组件时必须直接复用，禁止硬编码杂色：
- **`pomodoro.html` 令牌**：`--accent`, `--accent-2`, `--glow`, `--bg`, `--ink`, `--card`, `--line`
- **`cyber-muyu-2077.html` 令牌**：`--neon-cyan`, `--neon-pink`, `--neon-green`, `--glow-cyan`, `--bg-primary`
- **`rainy-night-cyber-radio.html` 令牌**：`--neon-blue`, `--neon-pink`, `--bg-primary`, `--bg-secondary`

---

## ⚙️ 三、AI Agent 研发流水线作业规范

在 Dify SDD 多智能体流水线中，各节点的分工如下：

```mermaid
flowchart LR
    A[用户模糊诉求] --> B[产品与架构师 V2]
    B -->|产出 Spec 规格书| C[工程规划师 V2]
    C -->|任务包拆解 Plan| D[全栈研发工兵 V2]
    D -->|提交代码 & 预检| E[独立安全审计员 V2]
    E -->|审阅通过 gh pr create| F[(GitHub Pull Request)]
```

### 1. 【产品与架构师】
- 克隆本仓库后，**首要任务是阅读本 README**，根据用户关键词匹配唯一目标文件；
- 检查该单页源码，提取已有的 CSS 变量和事件处理函数，产出严密的架构规格书（Spec）；
- **严禁凭空臆造未存在的假项目或第三方开源仓库**。

### 2. 【全栈研发工兵】
- 针对目标单页面（如 `pomodoro.html`）就地进行单文件改造；
- **闭环性原则**：新增的函数（如提示音、全屏闪烁等）必须真正绑定到计时器生命周期或按钮事件中，严禁留下未调用的“孤立死函数”；
- 提交前必须执行预检门禁脚本：
  ```bash
  bash scripts/git_pre_commit_check.sh
  ```

### 3. 【独立安全审计员】
- 运行 `git diff` 进行全量门禁走查；
- 检查是否存在 P0 级缺陷（如核心业务逻辑断裂、孤立无调用函数、XSS 漏洞等）；
- 确认所有验收项合格后，在沙盒中执行 `gh pr create`，向 `main` 分支发起正式 Pull Request。

---

## 📄 开源许可证

本项目基于 [MIT 许可证](LICENSE) 开源。

