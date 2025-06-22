GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'
echo -e "${GREEN}🌱 Установка ФитоДомик...${NC}"
mkdir -p ~/Downloads
echo -e "${YELLOW}📥 Скачивание приложения...${NC}"
curl -L -o ~/Downloads/fitodomik.py https://raw.githubusercontent.com/Legenda658/fitodomik/main/fitodomik.py
chmod +x ~/Downloads/fitodomik.py
if ! grep -q "^#!/usr/bin/python3" ~/Downloads/fitodomik.py; then
    echo "#!/usr/bin/python3" | cat - ~/Downloads/fitodomik.py > temp && mv temp ~/Downloads/fitodomik.py
fi
echo -e "${GREEN}✅ Установка завершена!${NC}"
echo -e "${YELLOW}📁 Файл сохранен в: ~/Downloads/fitodomik.py${NC}"