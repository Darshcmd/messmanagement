#!/usr/bin/env node
const { spawn } = require('child_process');
const path = require('path');

const scriptPath = path.join(__dirname, 'backend', 'execute-init.js');

const child = spawn(process.execPath, [scriptPath], {
  stdio: 'inherit',
  cwd: __dirname
});

child.on('exit', (code) => process.exit(code ?? 0));
child.on('error', (err) => {
  console.error('Failed to run backend/execute-init.js:', err.message);
  process.exit(1);
});
