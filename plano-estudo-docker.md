# Plano de Estudo de Docker — 8 Semanas (2-3h/semana)

**Perfil:** iniciante total, ritmo tranquilo, foco em aplicar num projeto pessoal/faculdade.

**Como usar:** cada semana tem teoria curta + prática obrigatória. Nada de só assistir vídeo — o objetivo é sempre rodar algo no terminal. Se sobrar tempo numa semana, adiante a próxima.

---

## Semana 1 — Por que containers existem
**Teoria (30-40min):**
- O problema que Docker resolve ("na minha máquina funciona")
- Diferença entre container e máquina virtual (isolamento vs virtualização de hardware)
- Conceitos: imagem, container, registry (Docker Hub)

**Prática (1h30-2h):**
- Instalar Docker Desktop (ou Docker Engine se for Linux)
- `docker run hello-world`
- `docker run -it ubuntu bash` — entrar num container e explorar
- `docker ps`, `docker ps -a`, `docker images`
- Rodar um `nginx` e acessar no navegador (`docker run -p 8080:80 nginx`)

**Checkpoint:** você consegue explicar pra alguém a diferença entre imagem e container.

---

## Semana 2 — Gerenciando containers e imagens
**Teoria (20-30min):**
- Ciclo de vida do container (create, start, stop, rm)
- Camadas de imagem (layers) e cache de build

**Prática (1h30-2h):**
- `docker stop`, `docker start`, `docker rm`, `docker rmi`
- `docker logs`, `docker exec -it <container> bash`
- `docker inspect` pra entender o que tem dentro
- Praticar limpeza: `docker system prune`

**Checkpoint:** consegue subir, entrar, ver logs e derrubar um container sem consultar nada.

---

## Semana 3 — Criando sua própria imagem (Dockerfile)
**Teoria (30min):**
- Anatomia de um Dockerfile: `FROM`, `WORKDIR`, `COPY`, `RUN`, `CMD`/`ENTRYPOINT`, `EXPOSE`
- Boas práticas básicas (imagem base pequena, ordem de instruções pro cache)

**Prática (1h30-2h):**
- Escolher uma linguagem que você já conhece (Python, Node, o que for)
- Escrever um Dockerfile pra uma aplicação simples (ex: "hello world" em Flask/Express)
- `docker build -t minha-app .`
- `docker run -p 3000:3000 minha-app`

**Checkpoint:** você tem uma imagem sua rodando, buildada do zero.

---

## Semana 4 — Persistindo dados: Volumes e Bind Mounts
**Teoria (20-30min):**
- Por que containers são efêmeros (dados somem ao remover)
- Volumes vs Bind Mounts vs tmpfs

**Prática (1h30-2h):**
- Rodar um banco (ex: `postgres` ou `mysql`) com volume nomeado
- Testar: derrubar o container e subir de novo, ver que os dados persistem
- Bind mount pra desenvolvimento (montar seu código local dentro do container)

**Checkpoint:** entende quando usar volume nomeado vs bind mount.

---

## Semana 5 — Redes no Docker
**Teoria (20-30min):**
- Tipos de rede: bridge (padrão), host, none
- Como containers se comunicam entre si pelo nome

**Prática (1h30-2h):**
- Criar uma rede: `docker network create minha-rede`
- Subir dois containers na mesma rede (ex: app + banco) e fazer um se comunicar com o outro pelo nome do container
- Entender por que isso importa antes de partir pro Compose

**Checkpoint:** consegue explicar como um container "acha" outro container.

---

## Semana 6 — Docker Compose (o divisor de águas)
**Teoria (30-40min):**
- Por que Compose existe (parar de digitar comandos gigantes)
- Anatomia de um `docker-compose.yml`: services, volumes, networks, ports, environment, depends_on

**Prática (1h30-2h):**
- Pegar o setup da Semana 5 (app + banco) e transformar num `docker-compose.yml`
- `docker compose up -d`, `docker compose down`, `docker compose logs -f`
- Adicionar variáveis de ambiente via `.env`

**Checkpoint:** sua app + banco sobem com um único `docker compose up`.

---

## Semana 7 — Aplicando no seu projeto
**Teoria (10-20min, sob demanda):**
- Multi-stage builds (se seu projeto tiver build step, tipo React/TS)
- `.dockerignore`

**Prática (2h+):**
- Dockerizar de verdade o projeto pessoal/faculdade que você tem em mente
- Se for web app: frontend + backend + banco, tudo via Compose
- Ajustar Dockerfile com boas práticas (imagem menor, cache eficiente)

**Checkpoint:** seu projeto real sobe inteiro com `docker compose up`.

---

## Semana 8 — Consolidando e indo além
**Teoria (20-30min):**
- Visão geral do que vem depois: orquestração (Kubernetes/Docker Swarm), CI/CD com Docker, registries privados
- Não precisa aprender agora — só saber que existe

**Prática (1h30-2h):**
- Revisar e documentar seu projeto (README explicando como rodar com Docker)
- Publicar sua imagem no Docker Hub (`docker push`)
- Opcional: colocar o `docker-compose.yml` do projeto no GitHub

**Checkpoint:** projeto documentado, dockerizado e publicado — pronto pra mostrar.

---

## Recursos recomendados
- **Documentação oficial** (docs.docker.com) — sempre a fonte mais confiável, especialmente "Get Started"
- **Docker Curriculum** (docker-curriculum.com) — tutorial prático gratuito, bom complemento
- Canal **"Docker"** no YouTube oficial, ou qualquer playlist em PT-BR de Docker básico — usar só como reforço visual, não como fonte principal

## Dicas gerais
- Não pule pro Compose sem entender container isolado primeiro — é aí que a maioria se perde depois
- Erro é normal e é onde mais se aprende com Docker: leia a mensagem de erro completa antes de copiar comando de qualquer lugar
- Se travar mais de 20-30min num probleminha bobo, dá uma googlada com a mensagem de erro exata entre aspas
