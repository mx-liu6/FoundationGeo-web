#!/bin/bash
# 启动本地 HTTP 服务器

echo "🚀 正在启动本地服务器..."
echo "📡 服务器地址: http://localhost:8000"
echo "⏹️  按 Ctrl+C 停止服务器"
echo ""

# 检查 Python 版本并启动服务器
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 8000
else
    echo "❌ 错误: 未找到 Python"
    echo "💡 请安装 Python 或使用其他方法启动服务器"
    exit 1
fi
