# Week 11 – Zsh & Oh-My-Zsh 설치 및 커스터마이징

## 1. 설치

    sudo apt install zsh -y
    chsh -s /usr/bin/zsh
    # 재로그인 후 oh-my-zsh 설치
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## 2. 플러그인 설치

    # autosuggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

    # syntax-highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

### zshrc 설정

    nano ~/.zshrc

plugins 항목 수정:

    plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
    )

적용:

    source ~/.zshrc

## 3. 실습 내용

- zsh 기본환경 확인  
- oh-my-zsh 설치 및 테마 변경(agnoster)  
- 플러그인 추가: autosuggestions, syntax-highlighting  
- alias 등록 및 zshrc 재로드  

## 4. 배운 점

### ● bash와 zsh의 차이  
bash는 기본 쉘로 안정적이지만 기능이 단순한 반면,  
zsh는 테마·플러그인·자동완성 등 확장성이 뛰어나 개발자 친화적인 환경을 제공한다.

### ● oh-my-zsh가 중요한 이유  
oh-my-zsh는 zsh 환경을 쉽게 관리하도록 도와주는 프레임워크로,  
테마·플러그인·alias 기능을 한 번에 제공해 개발 생산성을 크게 높여준다.

### ● 자동완성, Git 상태 표시 기능 체감  
명령어 입력 시 흐릿한 자동완성이 나타나고,  
Git 저장소에서는 브랜치·변경 상태가 즉시 표시된다.  
CLI 기반 개발 워크플로우의 효율이 눈에 띄게 향상되었다.
