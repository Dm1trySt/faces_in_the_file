time = Time.now

current_path = File.dirname(__FILE__ )

# Запись лбов
foreheads_file = File.new(current_path + "/data/foreheads.txt","r:UTF-8")
# Записть всех строк
foreheads = foreheads_file.readlines
#закрываем файл
foreheads_file.close

# Запись глаз
eyes_file = File.new(current_path + "/data/eyes.txt","r:UTF-8")
# Записть всех строк
eyes = eyes_file.readlines
#закрываем файл
eyes_file.close

# Запись носов
noses_file = File.new(current_path + "/data/noses.txt","r:UTF-8")
# Записть всех строк
noses = noses_file.readlines
#закрываем файл
noses_file.close

# Запись ртов
mouths_file = File.new(current_path + "/data/mouths.txt","r:UTF-8")
# Записть всех строк
mouths = mouths_file.readlines
#закрываем файл
mouths_file.close


# Имя файла
filename = 'face_' + time.strftime('%Y.%m.%d_%H-%M-%S') + '.txt'
# Только запись. Если файл существует, он будет открыть на дописывание.
# Если файл не существует, он будет создан.
f = File.new(filename,"w:UTF-8" )

# Запись файл элементов рожицы
# Лоб
f.puts(foreheads.sample)
# Глаза
f.puts(eyes.sample)
# Нос
f.puts(noses.sample)
# Рот
f.puts(mouths.sample)

