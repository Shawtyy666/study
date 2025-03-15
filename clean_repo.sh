import subprocess

def clean_repository():
    try:
        # Сброс всех отслеживаемых изменений
        subprocess.run(["git", "reset", "--hard"], check=True)
        print("Отслеживаемые изменения сброшены.")

        # Удаление всех неотслеживаемых файлов и директорий
        subprocess.run(["git", "clean", "-fd"], check=True)
        print("Неотслеживаемые файлы и директории удалены.")

    except subprocess.CalledProcessError as e:
        print(f"Ошибка при выполнении команды: {e}")

if __name__ == "__main__":
    clean_repository()
