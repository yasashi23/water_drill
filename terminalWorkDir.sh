sudo /opt/lampp/xampp start && gnome-terminal -x bash -c "cd D/ngoding/proyek/client/upwork/jan_16_water_drilling/develop_app; exec bash" --tab && gnome-terminal -x bash -c "ngrok start web db; exec bash" --tab && gnome-terminal -x bash -c "code D/ngoding/proyek/client/upwork/jan_16_water_drilling/develop_app/.env D/ngoding/proyek/client/upwork/jan_16_water_drilling/develop_app/*.rest; exec bash"




# && gnome-terminal --working-directory=D/ngoding/proyek/client/upwork/jan_16_water_drilling --tab 