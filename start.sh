#!/bin/bash
uvicorn main:app --host 0.0.0.0 --port $PORT
services:
  - type: web
    name: fastapi-webhook
    env: python
    buildCommand: ""
    startCommand: ./start.sh
    envVars:
      - key: PYTHON_VERSION
        value: 3.13
    plan: free
