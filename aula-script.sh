mkdir criado_via_script

touch arquivo-gerado.txt

echo "um teste no arquivo com dado" > arquivo_com_dado.txt

cat <<EOF > mais_um_arquivo.txt
Estamos aprendendo a manipular
arquivos na aula de devops
EOF
echo "-------------------------------"
cat arquivo_com_dado.txt
echo "-------------------------------"
cat mais_um_arquivo.txt
chmod +x mais_um_arquivo.txt
./mais_um_arquivo.txt