# 🍓 Руководство по установке и настройке Raspberry Pi

## 🚀 Быстрая установка ФитоДомик

### Установка одной командой:
```bash
curl -sSL https://raw.githubusercontent.com/Legenda658/fitodomik/main/install.sh | bash
```

После установки приложение будет доступно в папке `~/Downloads/fitodomik.py`

## 📋 Содержание
- [Быстрая установка ФитоДомик](#-быстрая-установка-фитодомик)
- [Установка операционной системы](#установка-операционной-системы)
- [Установка Python](#установка-python)
- [Установка pip](#установка-pip)
- [Установка библиотек](#установка-библиотек)
- [Настройка автозапуска](#настройка-автозапуска)

---

## 🖥️ Установка операционной системы

### Шаг 1: Подготовка
1. Скачайте **Raspberry Pi Imager** с официального сайта:
   - [Raspberry Pi OS – Raspberry Pi](https://www.raspberrypi.com/software/)

### Шаг 2: Запись образа
1. Запустите **Raspberry Pi Imager**
2. Выберите вашу плату Raspberry Pi
3. Выберите **Raspberry Pi OS (64-bit)**
4. Выберите подключенную SD карту
5. Нажмите **"Записать"** и дождитесь завершения

---

## 🐍 Установка Python

### Способ 1: Установка через pyenv (рекомендуемый)

#### 1. Обновление системы
```bash
sudo apt update && sudo apt upgrade -y
```

#### 2. Установка зависимостей
```bash
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev \
liblzma-dev python3-openssl git
```

#### 3. Установка pyenv
```bash
curl https://pyenv.run | bash
```

#### 4. Настройка PATH
```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
```

#### 5. Перезагрузка терминала
```bash
source ~/.bashrc
```

#### 6. Установка Python 3.13.5
```bash
pyenv install 3.13.5
pyenv global 3.13.5
```

#### 7. Проверка установки
```bash
python --version
```

---

## 📦 Установка pip

### Проверка установки
```bash
python -m pip --version
```

### Установка pip (если не установлен)
```bash
python -m ensurepip --upgrade
```

### Альтернативный способ установки
```bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
```

### Обновление pip
```bash
python -m pip install --upgrade pip
```

---

## 📚 Установка библиотек

### Системные зависимости (обязательно!)
Перед установкой Python библиотек установите системные зависимости:

```bash
sudo apt update
sudo apt install -y python3-dev python3-pip
sudo apt install -y libatlas-base-dev    # для numpy/matplotlib
sudo apt install -y libjpeg-dev zlib1g-dev  # для Pillow
sudo apt install -y libfreetype6-dev libpng-dev  # для matplotlib
sudo apt install -y libopencv-dev        # для OpenCV
sudo apt install -y python3-tk           # для tkinter
```

### Установка всех библиотек одной командой
```bash
python -m pip install --upgrade pip
python -m pip install pyserial pillow matplotlib numpy requests opencv-python urllib3
```

### Установка по отдельности
```bash
# Основные библиотеки
python -m pip install pyserial          # для работы с serial
python -m pip install pillow            # для PIL (Image, ImageTk)
python -m pip install matplotlib        # для графиков
python -m pip install numpy             # для работы с массивами
python -m pip install requests          # для HTTP запросов
python -m pip install opencv-python     # для cv2
python -m pip install urllib3           # для работы с URL
```

---

## 🚀 Настройка автозапуска

### Создание автозапуска через Desktop Entry

#### 1. Создание директории автозапуска
```bash
mkdir -p /home/user/.config/autostart
```

#### 2. Создание файла автозапуска
```bash
nano /home/user/.config/autostart/fitodomik.desktop
```

#### 3. Содержимое файла автозапуска
```ini
[Desktop Entry]
Type=Application
Name=Fitodomik
Comment=Автозапуск приложения Fitodomik
Exec=/usr/bin/python3 /home/user/Downloads/fitodomik.py
Icon=applications-python
Terminal=false
Hidden=false
X-GNOME-Autostart-enabled=true
StartupNotify=false
```

#### 4. Установка прав на выполнение
```bash
chmod +x /home/user/.config/autostart/fitodomik.desktop
```

#### 5. Добавление shebang в Python-скрипт
```bash
nano /home/user/Downloads/fitodomik.py
```

Добавьте в самое начало файла:
```python
#!/usr/bin/python3
```

#### 6. Установка прав на выполнение для скрипта
```bash
chmod +x /home/user/Downloads/fitodomik.py
```

### Как это работает
- ✅ При загрузке Raspberry Pi автоматически запустится ваше приложение
- ✅ Приложение откроется в отдельном окне
- ✅ Рабочий стол останется доступным
- ✅ Вы сможете свернуть/закрыть приложение и работать с другими программами
- ✅ При закрытии приложения оно не будет перезапускаться автоматически до следующей перезагрузки

### Проверка автозапуска
```bash
sudo reboot
```

После перезагрузки ваше приложение должно запуститься автоматически, но рабочий стол останется полностью функциональным.

---

## 🎯 Готово!

Теперь у вас установлена и настроена система Raspberry Pi с Python 3.13.5, всеми необходимыми библиотеками и настроенным автозапуском приложения.

### Полезные команды для проверки
```bash
# Проверка версии Python
python --version

# Проверка установленных пакетов
pip list

# Проверка автозапуска
ls -la ~/.config/autostart/
```
---

*📝 Примечание: Замените `/home/user/` на ваш путь к пользователю.* 


   - [Сслыка на проект](https://www.raspberrypi.com/software/](https://github.com/Legenda658/Fitodomik_main)

