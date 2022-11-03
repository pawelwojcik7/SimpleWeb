# Aplikacja SimpleWeb

## Spis treści
* [Informacje](#Informacje)
* [Budowanie obrazu](#Budowanieobrazu)
* [Konfiguracja](#Konfiguracja)
* [Uruchomienie](#Uruchomienie)

## Informacje
SimpleWeb to prosta aplikacja, służąca jako przykład do tworzenia obrazów Docker z mozliwością pobierania repozytorium poprzez protokół SSH. 

## Budowanie obrazu
Aby zbudować obraz należy wykonać nastepującą komendę w folderze z aplikacją.

```
$ sudo DOCKER_BUILDKIT=1 sudo docker build -ssh=ssh_key_private_path=<path to private SSH key> -t <image_name> -f Dockerfile .
```

## Konfiguracja
Aby uruchomić kontener z wygenerowanym obrazem należy wykonać następującą komendę

```
$ sudo docker run -d --rm -p 8080:8080 --name <container_name> <image_name>

```

## Uruchmienie
Aby przetestowac aplikację należy w przeglądarcę wpisać poniższy adres.

```
$ localhost:8080
```


