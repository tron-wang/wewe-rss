#!/bin/bash

# 設置 SQLite 數據庫
cd apps/server
rm -rf prisma
mv prisma-sqlite prisma

# 生成 Prisma 客戶端
npx prisma generate --schema prisma/schema.prisma

# 創建數據目錄
mkdir -p data

# 啟動服務
npm run start:prod
