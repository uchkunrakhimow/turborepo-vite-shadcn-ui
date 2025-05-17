# 🚀 Turborepo starter with shared shadcn/ui components (Vite, Next.js). Tailwind 4 support.

This repository is a monorepo starter kit utilizing [Turborepo](https://turbo.build/repo) for managing multiple
applications with shared [shadcn/ui](https://github.com/shadcn-ui/ui) components. It includes two applications (`vite`
and `nextjs`) in the `apps` directory, both of which use shared components from the `@repo/ui` package.

The goal of this repository is to provide up-to-date starters for Vite + React and Next.js, with Tailwind CSS v4 and shared UI components.

---

## ✨ Features

- 🧱 Shared UI components via `@repo/ui`
- ⚡ Vite + React and Next.js apps
- 🐳 Docker & Docker Compose support
- 🌬️ Tailwind CSS v4
- 🧩 Easy component scaffolding with `shadcn/ui`

---

## 📦 Prerequisites

Make sure you have the following installed:

- [Node.js](https://nodejs.org/en/download/) (v22 or higher)
- [npm](https://www.npmjs.com/) (v10 or higher)

---

## 📥 Installation

1. Clone the repository:

```bash
git clone https://github.com/uchkunrakhimow/turborepo-vite-shadcn-ui.git
cd turborepo-vite-shadcn-ui
````

2. Install dependencies using `npm`:

```bash
npm install
```

3. Build the apps:

```bash
npm run build
```

4. Start development:

```bash
npm run dev
```

5. Add a new [component](https://ui.shadcn.com/docs/components/tabs) (replace `card` with the desired component):

```bash
npm run ui card
```

---

## 🐳 Docker

To run the project using Docker:

```bash
docker-compose up --build
```

---

## 🤝 Authors

* Original author: [evgenius1424](https://github.com/evgenius1424)
* Modified and maintained by: [uchkunrakhimow](https://github.com/uchkunrakhimow)

---

Enjoy working with your new Turborepo starter kit and feel free to raise a PR! 🎉