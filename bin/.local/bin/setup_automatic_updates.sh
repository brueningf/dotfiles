#!/bin/bash

# Step 1: Create the update script
cat > update.sh <<'EOF'
#!/bin/bash

# Update the package repositories
sudo pacman -Sy

# Perform system upgrade
sudo pacman -Su --noconfirm
EOF

# Step 2: Make the script executable
chmod +x update.sh

# Step 3: Move the script to /usr/local/bin
sudo mv update.sh /usr/local/bin

# Step 4: Create the systemd timer unit
cat > update.timer <<'EOF'
[Unit]
Description=Run update script weekly

[Timer]
OnCalendar=weekly
Persistent=true

[Install]
WantedBy=timers.target
EOF

# Step 5: Create the systemd service unit
cat > update.service <<'EOF'
[Unit]
Description=Run update script

[Service]
Type=oneshot
ExecStart=/usr/local/bin/update.sh
EOF

# Step 6: Move the systemd units to /etc/systemd/system
sudo mv update.timer update.service /etc/systemd/system/

# Step 7: Enable and start the timer
sudo systemctl enable --now update.timer

echo "Automatic update setup complete."

