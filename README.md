# Tela de Perfil de Usuário - Flutter

Projeto desenvolvido para aplicar os conceitos fundamentais de **Widgets em Flutter**, criando uma tela de perfil de usuário interativa e estilizada.

## 📱 Funcionalidades e Componentes

- **AppBar**:
  - Título centralizado: `"Meu Perfil"`
  - Tema em azul com texto em branco.
- **Corpo da Tela (Body)**:
  - **Foto de Perfil**: `CircleAvatar` centralizado com imagem e ícone de fallback.
  - **Nome de Usuário**: `"Deyvson Mendes"` em destaque (negrito e tamanho aumentado).
  - **Informações de Contato**:
    - Linha com ícone de e-mail + texto `deyvson.rodrigues@estudante.ifgoiano.edu.br`.
    - Linha com ícone de telefone + texto `(62) 99999-0000`.
  - **Botão Interativo**:
    - Botão azul com o texto `"Seguir"`.
    - Ao ser clicado, exibe um `SnackBar` com a mensagem `"Você agora segue este perfil!"`.

## 🛠️ Tecnologias Utilizadas

- **Flutter** 3.x
- **Dart** 3.x
- **Material 3**

## 🚀 Como Executar o Projeto

1. Certifique-se de ter o Flutter instalado e configurado no seu ambiente.
2. Clone este repositório ou navegue até a pasta do projeto:
   ```bash
   git clone <URL_DO_SEU_REPOSITORIO>
   cd app_simples_widget
   ```
3. Instale as dependências:
   ```bash
   flutter pub get
   ```
4. Execute o aplicativo em um emulador ou dispositivo conectado:
   ```bash
   flutter run
   ```
5. Para rodar os testes automatizados:
   ```bash
   flutter test
   ```
