import psutil
import datetime

print("===== System Health Report =====")
print("Date:", datetime.datetime.now())
print()

# CPU
print("--- CPU Usage ---")
print(f"{psutil.cpu_percent()}%")

# Memory
mem = psutil.virtual_memory()
print("--- Memory Usage ---")
print(f"Used: {mem.used // (1024*1024)}MB / Total: {mem.total // (1024*1024)}MB ({mem.percent}%)")

# Disk
disk = psutil.disk_usage('/')
print("--- Disk Usage ---")
print(f"Used: {disk.used // (1024*1024*1024)}GB / {disk.total // (1024*1024*1024)}GB ({disk.percent}%)")
