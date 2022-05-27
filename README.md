# EAD Embedded

É o programa Node-RED embarcado no Raspberry Pi do módulo de hardware do sistema.


## Versões

Novamente, por conta do curto prazo de desenvolvimento, não pude manter as ferramentas atualizadas. Portanto, para garantir o funcionamento, use as seguintes versões:
  - Raspberry Pi 4 model B
  - Raspbian GNU/Linux 10 (buster) kernel Linux 5.10.17-v7l+ arm LE
  - Node-RED v1.3.1
  - NodeJS v14.16.1


### Estrutura do projeto
  - **captures/** das fotos capturadas pela PiCam
  - **processed-captures/** pasta das fotos processadas após captura;
  - **pictures/** pasta das 10 fotos dos usuários baixadas do Firebase;
  - **processed-pictures/** pasta das 10 fotos após processadas;
  - **encodings/** pasta com os arquivos pickle que armazenam os embeddings dos rostos;
  - **scripts/** pasta com os scripts Python relacionados ao reconhecimento facial.


### Os arquivos relacionados ao Firebase não estão no repositório e precisam ser configurados para cada projeto
  - **service_account.json** disponível no console web do projeto Firebase;
  - **flow_cred.json** arquivo de credenciais gerado após adicionar o arquivo anterior corretamente.


### Configuração das credenciais do Firebase

No subflow ```Download User Pictures``` tem um nós do pacote *node-red-contrib-firebase-admin* disponível na paleta da ferramente. Adicione o conteúdo do seu arquivo service_account.json nele junto com outros dados que você consegue no console do Firebase.

Após configurar corretamente, basta instanciar uma referência ao Firebase Admin SDK com a linha de código ```const admin = global.get('firebase');``` em um nó *function*.