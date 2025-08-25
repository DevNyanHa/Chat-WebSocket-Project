[33mcommit 4f43eb3ec04682746aff5afcc8f0853310d712a8[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m)[m
Author: DevNyanHa <lis131017@gmail.com>
Date:   Mon Aug 25 21:03:54 2025 +0900

    first commit

[1mdiff --git a/.editorconfig b/.editorconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..a33495a[m
[1m--- /dev/null[m
[1m+++ b/.editorconfig[m
[36m@@ -0,0 +1,17 @@[m
[32m+[m[32mroot = true[m
[32m+[m
[32m+[m[32m[*][m
[32m+[m[32mcharset = utf-8[m
[32m+[m[32mend_of_line = crlf[m
[32m+[m[32mtrim_trailing_whitespace = true[m
[32m+[m[32minsert_final_newline = true[m
[32m+[m[32mindent_style = space[m
[32m+[m
[32m+[m[32m[*.{py, vue, html, css}][m
[32m+[m[32mindent_size = 4[m
[32m+[m
[32m+[m[32m[*.{json, ts}][m
[32m+[m[32mindent_size = 2[m
[32m+[m
[32m+[m[32m[*.md][m
[32m+[m[32mtrim_trailing_whitespace = false[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..8ee54e8[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,30 @@[m
[32m+[m[32m# Logs[m
[32m+[m[32mlogs[m
[32m+[m[32m*.log[m
[32m+[m[32mnpm-debug.log*[m
[32m+[m[32myarn-debug.log*[m
[32m+[m[32myarn-error.log*[m
[32m+[m[32mpnpm-debug.log*[m
[32m+[m[32mlerna-debug.log*[m
[32m+[m
[32m+[m[32mnode_modules[m
[32m+[m[32m.DS_Store[m
[32m+[m[32mdist[m
[32m+[m[32mdist-ssr[m
[32m+[m[32mcoverage[m
[32m+[m[32m*.local[m
[32m+[m
[32m+[m[32m/cypress/videos/[m
[32m+[m[32m/cypress/screenshots/[m
[32m+[m
[32m+[m[32m# Editor directories and files[m
[32m+[m[32m.vscode/*[m
[32m+[m[32m!.vscode/extensions.json[m
[32m+[m[32m.idea[m
[32m+[m[32m*.suo[m
[32m+[m[32m*.ntvs*[m
[32m+[m[32m*.njsproj[m
[32m+[m[32m*.sln[m
[32m+[m[32m*.sw?[m
[32m+[m
[32m+[m[32m*.tsbuildinfo[m
[1mdiff --git a/.vscode/extensions.json b/.vscode/extensions.json[m
[1mnew file mode 100644[m
[1mindex 0000000..a7cea0b[m
[1m--- /dev/null[m
[1m+++ b/.vscode/extensions.json[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "recommendations": ["Vue.volar"][m
[32m+[m[32m}[m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..f7a5d43[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1,33 @@[m
[32m+[m[32m# .[m
[32m+[m
[32m+[m[32mThis template should help get you started developing with Vue 3 in Vite.[m
[32m+[m
[32m+[m[32m## Recommended IDE Setup[m
[32m+[m
[32m+[m[32m[VSCode](https://code.visualstudio.com/) + [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (and disable Vetur).[m
[32m+[m
[32m+[m[32m## Type Support for `.vue` Imports in TS[m
[32m+[m
[32m+[m[32mTypeScript cannot handle type information for `.vue` imports by default, so we replace the `tsc` CLI with `vue-tsc` for type checking. In editors, we need [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) to make the TypeScript language service aware of `.vue` types.[m
[32m+[m
[32m+[m[32m## Customize configuration[m
[32m+[m
[32m+[m[32mSee [Vite Configuration Reference](https://vite.dev/config/).[m
[32m+[m
[32m+[m[32m## Project Setup[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm install[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m### Compile and Hot-Reload for Development[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm run dev[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32m### Type-Check, Compile and Minify for Production[m
[32m+[m
[32m+[m[32m```sh[m
[32m+[m[32mnpm run build[m
[32m+[m[32m```[m
[1mdiff --git a/env.d.ts b/env.d.ts[m
[1mnew file mode 100644[m
[1mindex 0000000..11f02fe[m
[1m--- /dev/null[m
[1m+++ b/env.d.ts[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m/// <reference types="vite/client" />[m
[1mdiff --git a/index.html b/index.html[m
[1mnew file mode 100644[m
[1mindex 0000000..09ac348[m
[1m--- /dev/null[m
[1m+++ b/index.html[m
[36m@@ -0,0 +1,14 @@[m
[32m+[m[32m<!DOCTYPE html>[m
[32m+[m[32m<html lang="">[m
[32m+[m[32m    <head>[m
[32m+[m[32m        <meta charset="UTF-8">[m
[32m+[m[32m        <link rel="icon" href="/favicon.ico">[m
[32m+[m[32m        <meta name="viewport" content="width=device-width, initial-scale=1.0">[m
[32m+[m[32m        <title>Vite App</title>[m
[32m+[m[32m        <link rel="stylesheet" href="/css/default.css">[m
[32m+[m[32m    </head>[m
[32m+[m[32m    <body>[m
[32m+[m[32m        <div id="app"></div>[m
[32m+[m[32m        <script type="module" src="/src/main.ts"></script>[m
[32m+[m[32m    </body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mnew file mode 100644[m
[1mindex 0000000..cf6de81[m
[1m--- /dev/null[m
[1m+++ b/package-lock.json[m
[36m@@ -0,0 +1,3141 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "name": "chat-websocket",[m
[32m+[m[32m  "version": "0.0.0",[m
[32m+[m[32m  "lockfileVersion": 3,[m
[32m+[m[32m  "requires": true,[m
[32m+[m[32m  "packages": {[m
[32m+[m[32m    "": {[m
[32m+[m[32m      "name": "chat-websocket",[m
[32m+[m[32m      "version": "0.0.0",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "vue": "^3.5.18"[m
[32m+[m[32m      },[m
[32m+[m[32m      "devDependencies": {[m
[32m+[m[32m        "@tsconfig/node22": "^22.0.2",[m
[32m+[m[32m        "@types/node": "^22.16.5",[m
[32m+[m[32m        "@vitejs/plugin-vue": "^6.0.1",[m
[32m+[m[32m        "@vue/tsconfig": "^0.7.0",[m
[32m+[m[32m        "npm-run-all2": "^8.0.4",[m
[32m+[m[32m        "typescript": "~5.8.0",[m
[32m+[m[32m        "vite": "^7.0.6",[m
[32m+[m[32m        "vite-plugin-vue-devtools": "^8.0.0",[m
[32m+[m[32m        "vue-tsc": "^3.0.4"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": "^20.19.0 || >=22.12.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@ampproject/remapping": {[m
[32m+[m[32m      "version": "2.3.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@ampproject/remapping/-/remapping-2.3.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-30iZtAPgz+LTIYoeivqYo853f02jBYSd5uGnGpkFV0M3xOt9aN73erkgYAmZU43x4VfqcnLxW9Kpg3R5LC4YYw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "license": "Apache-2.0",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@jridgewell/gen-mapping": "^0.3.5",[m
[32m+[m[32m        "@jridgewell/trace-mapping": "^0.3.24"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@babel/code-frame": {[m
[32m+[m[32m      "version": "7.27.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.27.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-cjQ7ZlQ0Mv3b47hABuTevyTuYN4i+loJKGeV9flcCgIK37cCXRh+L1bd3iBHlynerhQ7BhCkn2BPbQUL+rGqFg==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@babel/helper-validator-identifier": "^7.27.1",[m
[32m+[m[32m        "js-tokens": "^4.0.0",[m
[32m+[m[32m        "picocolors": "^1.1.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.9.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@babel/compat-data": {[m
[32m+[m[32m      "version": "7.28.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/compat-data/-/compat-data-7.28.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-60X7qkglvrap8mn1lh2ebxXdZYtUcpd7gsmy9kLaBJ4i/WdY8PqTSdxyA8qraikqKQK5C1KRBKXqznrVapyNaw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.9.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@babel/core": {[m
[32m+[m[32m      "version": "7.28.3",[m
[32m+