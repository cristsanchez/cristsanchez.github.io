---
layout: page
permalink: /chart/
title: Chart with Y=X Line
---

<div id="chartContainer" style="width: 100%; height: 500px; margin: 20px 0;">
  <canvas id="myChart" width="600" height="400" style="border: 1px solid #ccc; display: block; margin: 0 auto;"></canvas>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const canvas = document.getElementById('myChart');
  const ctx = canvas.getContext('2d');
  
  // Set canvas size
  canvas.width = 600;
  canvas.height = 400;
  
  // Clear canvas
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  
  // Chart dimensions and margins
  const margin = 50;
  const chartWidth = canvas.width - 2 * margin;
  const chartHeight = canvas.height - 2 * margin;
  
  // Data range
  const minValue = 0;
  const maxValue = 100;
  
  // Draw axes
  ctx.strokeStyle = '#333';
  ctx.lineWidth = 2;
  
  // X-axis
  ctx.beginPath();
  ctx.moveTo(margin, canvas.height - margin);
  ctx.lineTo(canvas.width - margin, canvas.height - margin);
  ctx.stroke();
  
  // Y-axis
  ctx.beginPath();
  ctx.moveTo(margin, margin);
  ctx.lineTo(margin, canvas.height - margin);
  ctx.stroke();
  
  // Draw Y=X line (45-degree line)
  ctx.strokeStyle = '#ff0000';
  ctx.lineWidth = 3;
  ctx.beginPath();
  ctx.moveTo(margin, canvas.height - margin);
  ctx.lineTo(canvas.width - margin, margin);
  ctx.stroke();
  
  // Add some sample data points
  const sampleData = [
    {x: 20, y: 25},
    {x: 30, y: 35},
    {x: 40, y: 38},
    {x: 50, y: 52},
    {x: 60, y: 58},
    {x: 70, y: 65},
    {x: 80, y: 85}
  ];
  
  // Draw data points
  ctx.fillStyle = '#0066cc';
  sampleData.forEach(point => {
    const x = margin + (point.x / maxValue) * chartWidth;
    const y = canvas.height - margin - (point.y / maxValue) * chartHeight;
    
    ctx.beginPath();
    ctx.arc(x, y, 4, 0, 2 * Math.PI);
    ctx.fill();
  });
  
  // Add labels
  ctx.fillStyle = '#333';
  ctx.font = '14px Arial';
  
  // X-axis label
  ctx.textAlign = 'center';
  ctx.fillText('X Variable', canvas.width / 2, canvas.height - 10);
  
  // Y-axis label
  ctx.save();
  ctx.translate(20, canvas.height / 2);
  ctx.rotate(-Math.PI / 2);
  ctx.textAlign = 'center';
  ctx.fillText('Y Variable', 0, 0);
  ctx.restore();
  
  // Chart title
  ctx.textAlign = 'center';
  ctx.font = '16px Arial';
  ctx.fillText('Sample Chart with Y=X Reference Line', canvas.width / 2, 25);
  
  // Legend
  ctx.font = '12px Arial';
  ctx.textAlign = 'left';
  
  // Y=X line legend
  ctx.strokeStyle = '#ff0000';
  ctx.lineWidth = 3;
  ctx.beginPath();
  ctx.moveTo(canvas.width - 150, 50);
  ctx.lineTo(canvas.width - 120, 50);
  ctx.stroke();
  ctx.fillStyle = '#333';
  ctx.fillText('Y = X Line', canvas.width - 115, 54);
  
  // Data points legend
  ctx.fillStyle = '#0066cc';
  ctx.beginPath();
  ctx.arc(canvas.width - 135, 70, 4, 0, 2 * Math.PI);
  ctx.fill();
  ctx.fillStyle = '#333';
  ctx.fillText('Data Points', canvas.width - 115, 74);
  
  // Add grid lines
  ctx.strokeStyle = '#e0e0e0';
  ctx.lineWidth = 1;
  
  // Vertical grid lines
  for (let i = 1; i <= 4; i++) {
    const x = margin + (i / 4) * chartWidth;
    ctx.beginPath();
    ctx.moveTo(x, margin);
    ctx.lineTo(x, canvas.height - margin);
    ctx.stroke();
  }
  
  // Horizontal grid lines
  for (let i = 1; i <= 4; i++) {
    const y = margin + (i / 4) * chartHeight;
    ctx.beginPath();
    ctx.moveTo(margin, y);
    ctx.lineTo(canvas.width - margin, y);
    ctx.stroke();
  }
  
  // Add axis tick marks and labels
  ctx.fillStyle = '#333';
  ctx.font = '10px Arial';
  ctx.textAlign = 'center';
  
  // X-axis ticks
  for (let i = 0; i <= 4; i++) {
    const x = margin + (i / 4) * chartWidth;
    const value = (i / 4) * maxValue;
    ctx.fillText(value.toString(), x, canvas.height - margin + 20);
  }
  
  // Y-axis ticks
  ctx.textAlign = 'right';
  for (let i = 0; i <= 4; i++) {
    const y = canvas.height - margin - (i / 4) * chartHeight;
    const value = (i / 4) * maxValue;
    ctx.fillText(value.toString(), margin - 10, y + 3);
  }
});
</script>

<div style="margin-top: 20px; padding: 15px; background-color: #f5f5f5; border-radius: 5px;">
  <h3>About this Chart</h3>
  <p>This chart demonstrates a scatter plot with a <strong>Y=X reference line</strong> (the red diagonal line at 45 degrees). This type of visualization is commonly used in economics and statistics to:</p>
  <ul>
    <li>Show perfect correlation or equality between two variables</li>
    <li>Provide a reference for comparing actual data points to theoretical equality</li>
    <li>Analyze deviations from perfect correlation</li>
  </ul>
  <p>The blue dots represent sample data points, and their position relative to the red Y=X line shows how closely they follow a perfect one-to-one relationship.</p>
</div>