# Use the unofficial but popular itzg Minecraft Server image
FROM itzg/minecraft-server:latest

# Switch the server type to Spigot (you can also use Paper by setting TYPE=PAPER)
ENV TYPE=PAPER
ENV EULA=TRUE
# Set specific Minecraft version
ENV VERSION=1.20.4
# Add your Minecraft username to ops list
ENV OPS=NoXAr3s

# Create plugins directory if it doesn't exist
RUN mkdir -p /plugins/DropSMP/

# Copy plugin JAR and config
COPY dropsmp-2.0.3-Premium.jar /plugins/dropsmp-2.0.3-Premium.jar
COPY config.yml /plugins/DropSMP/config.yml
