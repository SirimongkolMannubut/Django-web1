#!/bin/bash

# ตรวจสอบว่า Python และ pip ติดตั้งอยู่หรือไม่
if ! command -v python &> /dev/null; then
    echo "Python ไม่ติดตั้งอยู่"
    exit 1
fi

if ! command -v pip &> /dev/null; then
    echo "pip ไม่ติดตั้งอยู่"
    exit 1
fi

# ติดตั้ง Django หากไม่ติดตั้งอยู่
if ! pip show django &> /dev/null; then
    pip install django
fi

# รันคำสั่ง build
vercel build