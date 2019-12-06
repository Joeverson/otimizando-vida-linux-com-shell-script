#! /bash/bin

main()
{
    # mandando ele ficar falando a hora
    espeak "$1" || sudo apt-get install espeak # chama a ação que fala ou instala caso não exista

    #mandando ele ficar abrindo a caixa de disco
    eject
}

for ((;;)) do
    sleep 60 # rodando a cada minuto
    main "$(date '+%d/%m/%Y %H:%M:%S')"
done